"""System-wide uncore counters for one record, through the privileged ``perf stat``.

On the Flat node (``cresco8-hbm14``) the administrators allow ``sudo -n /usr/bin/perf stat*``
without a password; ``kernel.perf_event_paranoid`` stays 2, so the benchmark itself still
cannot open uncore events.  A record therefore runs one system-wide session beside the
benchmark::

    sudo -n perf stat -a --per-socket -D -1 -I 100 -x, --control fifo:CTL,ACK -e ... \\
        -- tail -s 0.1 --pid=HOLD -f /dev/null

The events start disabled (``-D -1``).  The benchmark opens the FIFOs named by
``HWBENCH_PERF_CTL`` and ``HWBENCH_PERF_ACK``, enables the counters once before its warm-up
and disables them once after its last sample.  Perf enables its events one after the other
(about 110 ms for this event set, socket 0 first, measured on the node), so a toggle per sample would count the time around it too;
disabling takes 5-8 ms.  The counters therefore run continuously and each sample takes
the intervals that lie entirely inside it.  Perf's interval clock is placed on the
benchmark's ``CLOCK_MONOTONIC`` by the disable: the interval printed after ``Events
disabled`` reports, per event, how long the event ran before it stopped, which puts the
disable on perf's clock, and the benchmark records when it sent the disable and when perf
acknowledged it.

The session cannot be signalled (it runs as root); its workload is a ``tail --pid`` on a
holder process this module owns, so killing the holder ends the session.

Event encodings were checked on the node (2026-10-19) with a read stream of known size:
``uncore_imc`` CAS reads count 64-byte DDR transfers, ``uncore_type_14`` (the HBM channel
controllers, 32 per socket, not named by the 5.14 driver) counts 32-byte HBM pseudo-channel
transfers with the same event and umask (0x05/0xcf read, 0x05/0xf0 write), and its event
0x01 ticks at the 800 MHz HBM clock.
"""

from __future__ import annotations

import os
import subprocess
import tempfile
import time
from pathlib import Path
from typing import Any

PERF = "/usr/bin/perf"
# Reading the counters takes perf about 1.3 ms per interval, partly on CPU 0 and 56.
INTERVAL_MS = {"base": 100}
# Intervals closer than this to a sample edge are not attributed to it (anchor error).
EDGE_MARGIN_NS = 5_000_000
# Single-instance events whose run time locates the disable on perf's clock.
ANCHOR_EVENTS = ("cha_clockticks", "pcu_clockticks", "energy_pkg_j")

DDR_CAS_BYTES = 64
HBM_CAS_BYTES = 32

# name -> perf event.  ``name=`` keeps the CSV readable; aliases keep perf's spelling.
BASE_EVENTS: dict[str, str] = {
    "ddr_cas_rd": "uncore_imc/event=0x05,umask=0xcf,name=ddr_cas_rd/",
    "ddr_cas_wr": "uncore_imc/event=0x05,umask=0xf0,name=ddr_cas_wr/",
    "hbm_cas_rd": "uncore_type_14/event=0x05,umask=0xcf,name=hbm_cas_rd/",
    "hbm_cas_wr": "uncore_type_14/event=0x05,umask=0xf0,name=hbm_cas_wr/",
    "energy_pkg_j": "power/energy-pkg/",
    "energy_ram_j": "power/energy-ram/",
    "cha_clockticks": "uncore_cha_0/event=0x01,name=cha_clockticks/",
    "upi_tx_data_flits": "unc_upi_txl_flits.all_data",
    "upi_rx_data_flits": "unc_upi_rxl_flits.all_data",
    "m2m_directory_updates": "unc_m2m_directory_update.any",
    "pcu_clockticks": "unc_p_clockticks",
    "pcu_power_limit_cycles": "unc_p_freq_max_power_cycles",
    "pcu_thermal_limit_cycles": "unc_p_freq_max_limit_thermal_cycles",
}
# The CHA occupancy method (TOR occupancy / inserts of demand-read misses) was tried on the
# node and left out: filtered to the chasing core it gives about 31 ns against the 141 ns
# the chase measures (2026-10-19, docs/06_COUNTERS.md), so it does not measure latency here.
EVENT_SETS: dict[str, dict[str, str]] = {"base": BASE_EVENTS}
# perf prints the energy events by their own name.
PRINTED = {"power/energy-pkg/": "energy_pkg_j", "power/energy-ram/": "energy_ram_j"}


def _printed_name(event: str) -> str:
    """The event column perf writes for one ``-e`` entry."""

    if "name=" in event:
        return event.split("name=", 1)[1].split("/", 1)[0].split(",", 1)[0]
    return event


def perf_command(events: dict[str, str], ctl: Path, ack: Path, holder: int, interval_ms: int) -> list[str]:
    return [
        "sudo",
        "-n",
        PERF,
        "stat",
        "-a",
        "--per-socket",
        "-D",
        "-1",
        "-I",
        str(interval_ms),
        "-x",
        ",",
        "--control",
        f"fifo:{ctl},{ack}",
        "-e",
        ",".join(events.values()),
        "--",
        "tail",
        "-s",
        "0.1",
        f"--pid={holder}",
        "-f",
        "/dev/null",
    ]


def parse(text: str, events: dict[str, str], started: bool = False) -> dict[str, Any]:
    """The intervals of the enabled period, column-wise, from the CSV perf wrote.

    ``started`` reads a session that counted from the start (no ``-D -1``, no control
    FIFO): every interval belongs to the enabled period and there is no tail.

    ``times`` are perf's interval ends (seconds on perf's clock), from the first interval
    after ``Events enabled`` to the first one after ``Events disabled`` (the tail, in which
    the counters stopped).  ``counts`` and ``run_ns`` are ``{socket: {name: [per interval]}}``;
    a value perf could not count is ``None`` and its name is listed in ``uncounted``.
    """

    names = {_printed_name(e): n for n, e in events.items()}
    names.update({k: v for k, v in PRINTED.items() if v in events})
    times: list[float] = []
    counts: dict[str, dict[str, list]] = {}
    run_ns: dict[str, dict[str, list]] = {}
    uncounted: set[str] = set()
    state = "enabled" if started else "before"  # before -> enabled -> disabled -> tail -> after
    for line in text.splitlines():
        line = line.strip()
        if line == "Events enabled" and state == "before":
            state = "enabled"
            continue
        if line == "Events disabled" and state == "enabled":
            state = "disabled"
            continue
        fields = line.split(",")
        if state in ("before", "after") or len(fields) < 7 or not fields[1].startswith("S"):
            continue
        name = names.get(fields[5])
        if name is None:
            continue
        try:
            stamp = float(fields[0])
        except ValueError:
            continue
        if not times or stamp != times[-1]:
            if state == "tail":
                state = "after"
                continue
            if state == "disabled":
                state = "tail"
            times.append(stamp)
        index = len(times) - 1
        socket = fields[1][1:]
        try:
            value: float | None = float(fields[3])
        except ValueError:
            value = None
            uncounted.add(name)
        try:
            running: float | None = float(fields[6])
        except ValueError:
            running = None
        for store, item in ((counts, value), (run_ns, running)):
            column = store.setdefault(socket, {}).setdefault(name, [])
            column.extend([None] * (index - len(column)))
            column.append(item)
    for store in (counts, run_ns):
        for columns in store.values():
            for column in columns.values():
                column.extend([None] * (len(times) - len(column)))
    return dict(times=times, counts=counts, run_ns=run_ns, uncounted=sorted(uncounted),
                complete=state in ("tail", "after"))


class Session:
    """One privileged ``perf stat`` session around one benchmark process."""

    def __init__(self, event_set: str, log: Path):
        self.events = EVENT_SETS[event_set]
        self.event_set = event_set
        self.interval_ms = INTERVAL_MS[event_set]
        self.log = log
        self.directory = Path(tempfile.mkdtemp(prefix="hwbench-perf-", dir="/tmp"))
        self.ctl = self.directory / "ctl"
        self.ack = self.directory / "ack"
        self.process: subprocess.Popen | None = None
        self.holder: subprocess.Popen | None = None
        self._fds: list[int] = []
        self.command: list[str] = []

    def environment(self) -> dict[str, str]:
        return dict(HWBENCH_PERF_CTL=str(self.ctl), HWBENCH_PERF_ACK=str(self.ack))

    def start(self, timeout: float = 60.0) -> None:
        os.mkfifo(self.ctl, 0o600)
        os.mkfifo(self.ack, 0o600)
        # perf opens the ack FIFO for writing and blocks until a reader exists; this
        # reader is never read from, so every ack reaches the benchmark.
        self._fds.append(os.open(self.ack, os.O_RDONLY | os.O_NONBLOCK))
        self.holder = subprocess.Popen(["sleep", "86400"])
        self.command = perf_command(self.events, self.ctl, self.ack, self.holder.pid, self.interval_ms)
        self.log.parent.mkdir(parents=True, exist_ok=True)
        with self.log.open("w") as handle:
            self.process = subprocess.Popen(self.command, stdout=handle, stderr=subprocess.STDOUT)
        deadline = time.monotonic() + timeout
        while "Events disabled" not in self.log.read_text(errors="replace"):
            if self.process.poll() is not None or time.monotonic() > deadline:
                text = self.stop()
                raise RuntimeError("perf stat did not start: " + text[-2000:])
            time.sleep(0.05)
        # A writer of our own on the control FIFO, so the benchmark closing it is no EOF.
        self._fds.append(os.open(self.ctl, os.O_WRONLY | os.O_NONBLOCK))

    def stop(self, timeout: float = 30.0) -> str:
        if self.holder is not None and self.holder.poll() is None:
            self.holder.kill()
            self.holder.wait()
        if self.process is not None:
            try:
                self.process.wait(timeout=timeout)
            except subprocess.TimeoutExpired:
                pass
        for fd in self._fds:
            os.close(fd)
        self._fds.clear()
        for path in (self.ctl, self.ack):
            path.unlink(missing_ok=True)
        try:
            self.directory.rmdir()
        except OSError:
            pass
        return self.log.read_text(errors="replace") if self.log.exists() else ""

    def result(self, text: str) -> dict[str, Any]:
        return dict(
            event_set=self.event_set,
            events=self.events,
            interval_ms=self.interval_ms,
            command=self.command,
            returncode=None if self.process is None else self.process.returncode,
            **parse(text, self.events),
        )


# --------------------------------------------------------------------------- samples
def anchor_offset_ns(uncore: dict[str, Any], disable_ns: list[int] | None) -> float | None:
    """CLOCK_MONOTONIC minus perf's clock, in nanoseconds, from the one disable.

    In the tail interval each single-instance event ran from the previous interval end
    until it was disabled; that places the disable on perf's clock.  The benchmark sent
    the disable and saw it acknowledged a few milliseconds later; the midpoint is used.
    """

    times = uncore.get("times") or []
    if not disable_ns or len(times) < 2 or not uncore.get("complete"):
        return None
    stops = []
    for columns in (uncore.get("run_ns") or {}).values():
        for name in ANCHOR_EVENTS:
            run = (columns.get(name) or [None])[-1]
            if run is not None:
                stops.append(times[-2] * 1e9 + run)
    if not stops:
        return None
    stops.sort()
    perf_disable = stops[len(stops) // 2]
    return (disable_ns[0] + disable_ns[1]) / 2 - perf_disable


def windows(uncore: dict[str, Any] | None, result: dict[str, Any]) -> list[dict[str, Any] | None]:
    """Per sample of ``result``: the summed counts of the intervals entirely inside it."""

    samples = result.get("samples") or []
    if not uncore:
        return [None] * len(samples)
    offset = anchor_offset_ns(uncore, result.get("uncore_disable_ns"))
    times = uncore.get("times") or []
    if offset is None:
        return [None] * len(samples)
    edges = [t * 1e9 + offset for t in times]
    out: list[dict[str, Any] | None] = []
    for sample in samples:
        start, end = sample.get("start_ns"), sample.get("end_ns")
        if start is None or end is None:
            out.append(None)
            continue
        # Interval j runs from edge j-1 to edge j; the first has no known start.
        inside = [
            j for j in range(1, len(edges) - 1)
            if edges[j - 1] >= start + EDGE_MARGIN_NS and edges[j] <= end - EDGE_MARGIN_NS
        ]
        if not inside:
            out.append(None)
            continue
        counts: dict[int, dict[str, float]] = {}
        for socket, columns in uncore["counts"].items():
            for name, column in columns.items():
                values = [column[j] for j in inside]
                if all(v is not None for v in values):
                    counts.setdefault(int(socket), {})[name] = float(sum(values))
        out.append(dict(
            counts=counts,
            intervals=len(inside),
            seconds=sum(edges[j] - edges[j - 1] for j in inside) / 1e9,
            coverage=sum(edges[j] - edges[j - 1] for j in inside) / (end - start),
        ))
    return out


def sample_fields(window: dict[str, Any] | None, elapsed: float | None,
                  compute_socket: int | None, memory_socket: int | None) -> dict[str, Any]:
    """Controller bytes, power and clocks of one sample, as measurement columns.

    Rates come from the intervals inside the sample (``window['seconds']`` of them); byte
    and energy totals are those rates times the sample's ``elapsed`` time.  Bytes and
    energy are summed over both sockets (all traffic the sample caused, wherever it
    landed); the uncore clock and the PCU limit fractions are those of the socket that
    computes, or socket 0 when the process spans both.
    """

    if not window or not window.get("counts") or not window.get("seconds"):
        return {}
    counts = window["counts"]
    seconds = window["seconds"]
    scale = (elapsed or seconds) / seconds

    def total(name: str) -> float | None:
        values = [c[name] for c in counts.values() if name in c]
        return sum(values) if len(values) == len(counts) else None

    out: dict[str, Any] = {}
    ddr = [total("ddr_cas_rd"), total("ddr_cas_wr")]
    hbm = [total("hbm_cas_rd"), total("hbm_cas_wr")]
    if None not in ddr:
        out.update(ctrl_ddr_read_bytes=ddr[0] * DDR_CAS_BYTES * scale, ctrl_ddr_write_bytes=ddr[1] * DDR_CAS_BYTES * scale)
    if None not in hbm:
        out.update(ctrl_hbm_read_bytes=hbm[0] * HBM_CAS_BYTES * scale, ctrl_hbm_write_bytes=hbm[1] * HBM_CAS_BYTES * scale)
    if None not in ddr and None not in hbm:
        out["ctrl_bytes"] = ((ddr[0] + ddr[1]) * DDR_CAS_BYTES + (hbm[0] + hbm[1]) * HBM_CAS_BYTES) * scale
        out["ctrl_bandwidth_gbs"] = out["ctrl_bytes"] / (elapsed or seconds) / 1e9
    if memory_socket in counts:
        c = counts[memory_socket]
        if {"ddr_cas_rd", "ddr_cas_wr", "hbm_cas_rd", "hbm_cas_wr"} <= c.keys():
            out["ctrl_bytes_memory_socket"] = (
                (c["ddr_cas_rd"] + c["ddr_cas_wr"]) * DDR_CAS_BYTES
                + (c["hbm_cas_rd"] + c["hbm_cas_wr"]) * HBM_CAS_BYTES
            ) * scale
    for name in ("energy_pkg_j", "energy_ram_j", "upi_tx_data_flits", "upi_rx_data_flits",
                 "m2m_directory_updates"):
        value = total(name)
        if value is not None:
            out[name] = value * scale
    socket = compute_socket if compute_socket in counts else min(counts)
    own = counts[socket]
    if "energy_pkg_j" in own:
        out["pkg_power_w"] = own["energy_pkg_j"] / seconds
    if "energy_ram_j" in own:
        out["ram_power_w"] = own["energy_ram_j"] / seconds
    if out.get("energy_pkg_j") is not None:
        out["system_power_w"] = (out["energy_pkg_j"] + out.get("energy_ram_j", 0.0)) / (elapsed or seconds)
    if "cha_clockticks" in own:
        out["uncore_ghz"] = own["cha_clockticks"] / seconds / 1e9
    if own.get("pcu_clockticks"):
        for name in ("pcu_power_limit_cycles", "pcu_thermal_limit_cycles"):
            if name in own:
                out[name.replace("_cycles", "_frac")] = own[name] / own["pcu_clockticks"]
    out["uncore_intervals"] = window.get("intervals")
    out["uncore_coverage"] = window.get("coverage")
    return out


def series(uncore: dict[str, Any] | None, result: dict[str, Any]) -> list[dict[str, Any]]:
    """Every interval of the enabled period on the benchmark's clock, as rows of rates.

    ``t_s`` is the interval's midpoint in seconds after the first sample started; the
    first interval (its start is unknown) and the tail are left out.
    """

    if not uncore:
        return []
    offset = anchor_offset_ns(uncore, result.get("uncore_disable_ns"))
    samples = result.get("samples") or []
    times = uncore.get("times") or []
    if offset is None or not samples:
        return []
    origin = samples[0]["start_ns"]
    rows = []
    for j in range(1, len(times) - 1):
        seconds = times[j] - times[j - 1]
        row: dict[str, Any] = dict(t_s=((times[j] + times[j - 1]) / 2 * 1e9 + offset - origin) / 1e9, seconds=seconds)
        for socket, columns in uncore["counts"].items():
            c = {name: column[j] for name, column in columns.items()}
            if c.get("ddr_cas_rd") is not None and c.get("ddr_cas_wr") is not None:
                row[f"ddr_gbs_s{socket}"] = (c["ddr_cas_rd"] + c["ddr_cas_wr"]) * DDR_CAS_BYTES / seconds / 1e9
            if c.get("hbm_cas_rd") is not None and c.get("hbm_cas_wr") is not None:
                row[f"hbm_gbs_s{socket}"] = (c["hbm_cas_rd"] + c["hbm_cas_wr"]) * HBM_CAS_BYTES / seconds / 1e9
            if c.get("energy_pkg_j") is not None:
                row[f"pkg_w_s{socket}"] = c["energy_pkg_j"] / seconds
            if c.get("cha_clockticks") is not None:
                row[f"uncore_ghz_s{socket}"] = c["cha_clockticks"] / seconds / 1e9
        rows.append(row)
    return rows


def kernel_phase(parsed: dict[str, Any], tier: str, socket: str = "0", floor: float = 0.8,
                 write_cap: float = 0.05) -> dict[str, Any]:
    """Medians over the read phase of a session that counted a whole launch (E6).

    The phase is the run of intervals in which the bound tier's controllers read at least
    ``floor`` of the launch's highest interval and write at most ``write_cap`` of what they
    read (initialisation writes, the read kernel does not); its first and last interval are
    dropped.  Rates are those of ``socket``.
    """

    times = parsed["times"]
    c = parsed["counts"].get(socket, {})
    cas = DDR_CAS_BYTES if tier == "ddr" else HBM_CAS_BYTES
    rows = []
    for j in range(1, len(times)):
        seconds = times[j] - times[j - 1]
        rd, wr = c.get(f"{tier}_cas_rd", [None] * len(times))[j], c.get(f"{tier}_cas_wr", [None] * len(times))[j]
        if rd is None or wr is None or seconds <= 0:
            continue
        rows.append(dict(read=rd * cas / seconds / 1e9, write=wr * cas / seconds / 1e9, seconds=seconds,
                         pkg_w=(c.get("energy_pkg_j") or [None] * len(times))[j], ram_w=(c.get("energy_ram_j") or [None] * len(times))[j],
                         cha=(c.get("cha_clockticks") or [None] * len(times))[j], pcu=(c.get("pcu_clockticks") or [None] * len(times))[j],
                         limit=(c.get("pcu_power_limit_cycles") or [None] * len(times))[j], index=j))
    if not rows:
        return {}
    top = max(r["read"] for r in rows)
    phase = [r for r in rows if r["read"] >= floor * top and r["write"] <= write_cap * r["read"]]
    # One contiguous phase: drop its edges, which hold part of the launch's start or end.
    phase = phase[1:-1]
    if not phase:
        return {}

    def median(values):
        values = sorted(v for v in values if v is not None)
        return values[len(values) // 2] if values else None

    return dict(
        intervals=len(phase),
        ctrl_gbs=median(r["read"] + r["write"] for r in phase),
        pkg_w=median(r["pkg_w"] / r["seconds"] for r in phase if r["pkg_w"] is not None),
        ram_w=median(r["ram_w"] / r["seconds"] for r in phase if r["ram_w"] is not None),
        uncore_ghz=median(r["cha"] / r["seconds"] / 1e9 for r in phase if r["cha"] is not None),
        power_limited=median(r["limit"] / r["pcu"] for r in phase if r["limit"] is not None and r["pcu"]),
    )
