"""Package power, uncore clock and temperature for one record, through the privileged ``turbostat``.

The administrators allow ``sudo -n /usr/bin/turbostat`` without a password on the hbm nodes
(the Flat node ``cresco8-hbm14`` and the Cache node ``cresco8-hbm13``).  On the Cache node
``perf`` is not installed, so the uncore session of :mod:`hwbench.uncore` cannot run there;
turbostat reads the same RAPL energy counters and the uncore ratio through MSRs and gives
the power and clock half of that session.

A record runs a sampler beside the benchmark: back-to-back ``turbostat`` runs of
``CHUNK`` intervals of ``INTERVAL_S`` seconds each, limited to the first CPU of each package
(``-c 0,56``), so every interval prints one row per package::

    sudo -n turbostat --quiet -c 0,56 --interval 0.1 --num_iterations 50 \\
        --show Time_Of_Day_Seconds,Package,CPU,Bzy_MHz,PkgWatt,RAMWatt,UncMHz,PkgTmp

A root process cannot be signalled by the user, so each run ends by itself after its
intervals; stopping the sampler waits for the current run (at most one chunk).  Rows carry
the time of day at which the interval ended; the sampler records CLOCK_REALTIME minus
CLOCK_MONOTONIC when it starts, which places every interval on the benchmark's clock.
Each sample takes the intervals that lie entirely inside it, as the perf session does.

``PkgWatt`` and ``RAMWatt`` are the RAPL energy over the interval divided by its length;
``UncMHz`` is the uncore (mesh) ratio read at the end of the interval, not an average.
"""

from __future__ import annotations

import subprocess
import threading
import time
from pathlib import Path
from typing import Any

TURBOSTAT = "/usr/bin/turbostat"
INTERVAL_S = 0.1
CHUNK = 50
COLUMNS = ("Time_Of_Day_Seconds", "Package", "CPU", "Bzy_MHz", "PkgWatt", "RAMWatt", "UncMHz", "PkgTmp")
FIRST_CPUS = "0,56"
# Intervals closer than this to a sample edge are not attributed to it.
EDGE_MARGIN_NS = 5_000_000


def command(interval_s: float = INTERVAL_S, chunk: int = CHUNK, cpus: str = FIRST_CPUS) -> list[str]:
    return [
        "sudo", "-n", TURBOSTAT, "--quiet", "-c", cpus, "--interval", f"{interval_s:g}",
        "--num_iterations", str(chunk), "--show", ",".join(COLUMNS),
    ]


class Sampler:
    """Back-to-back turbostat runs for the lifetime of one benchmark process."""

    def __init__(self, log: Path, interval_s: float = INTERVAL_S, chunk: int = CHUNK):
        self.log = log
        self.interval_s = interval_s
        self.chunk = chunk
        self.command = command(interval_s, chunk)
        self.offset_ns: int | None = None
        self.runs: list[dict[str, Any]] = []
        self._stop = threading.Event()
        self._thread: threading.Thread | None = None
        self._error: str | None = None

    def _loop(self) -> None:
        with self.log.open("a") as handle:
            while not self._stop.is_set():
                started = time.monotonic_ns()
                done = subprocess.run(self.command, stdout=handle, stderr=subprocess.STDOUT, check=False)
                self.runs.append(dict(start_ns=started, end_ns=time.monotonic_ns(), returncode=done.returncode))
                handle.flush()
                if done.returncode != 0:
                    self._error = f"turbostat exited with {done.returncode}"
                    return

    def start(self, timeout: float = 30.0) -> None:
        self.log.parent.mkdir(parents=True, exist_ok=True)
        self.log.write_text("")
        self.offset_ns = time.time_ns() - time.monotonic_ns()
        self._thread = threading.Thread(target=self._loop, daemon=True)
        self._thread.start()
        # Return once the first interval has been printed, so the benchmark starts counted.
        deadline = time.monotonic() + timeout
        while not parse(self.log.read_text(errors="replace")):
            if self._error or not self._thread.is_alive() or time.monotonic() > deadline:
                self._stop.set()
                raise RuntimeError("turbostat did not start: " + self.log.read_text(errors="replace")[-2000:])
            time.sleep(0.05)

    def stop(self, timeout: float | None = None) -> str:
        self._stop.set()
        if self._thread is not None:
            self._thread.join(timeout if timeout is not None else self.chunk * self.interval_s + 30)
        return self.log.read_text(errors="replace") if self.log.exists() else ""

    def result(self, text: str) -> dict[str, Any]:
        return dict(
            command=self.command, interval_s=self.interval_s, chunk=self.chunk, offset_ns=self.offset_ns,
            runs=self.runs, error=self._error, rows=parse(text),
        )


def _number(text: str) -> float | None:
    try:
        return float(text)
    except ValueError:
        return None


def parse(text: str) -> list[dict[str, Any]]:
    """Package rows of turbostat output: one dict per package and interval.

    The header names the columns; the summary row (``Package`` = ``-``) and rows without
    package values are dropped.  ``t_end`` is the time of day (s) the interval ended.
    """

    rows: list[dict[str, Any]] = []
    header: list[str] | None = None
    for line in text.splitlines():
        fields = line.split()
        if not fields:
            continue
        if fields[0] == "Time_Of_Day_Seconds":
            header = fields
            continue
        if header is None or len(fields) != len(header):
            continue
        row = dict(zip(header, fields))
        if row.get("Package") in (None, "-") or _number(row.get("PkgWatt", "")) is None:
            continue
        rows.append(dict(
            t_end=float(row["Time_Of_Day_Seconds"]), package=int(row["Package"]),
            pkg_w=_number(row["PkgWatt"]), ram_w=_number(row.get("RAMWatt", "")),
            uncore_mhz=_number(row.get("UncMHz", "")), bzy_mhz=_number(row.get("Bzy_MHz", "")),
            pkg_c=_number(row.get("PkgTmp", "")),
        ))
    return rows


def _intervals(turbo: dict[str, Any]) -> list[dict[str, Any]]:
    """Rows with a start and end on CLOCK_MONOTONIC (ns).

    An interval starts where the previous row of the same package ended, within one run;
    the first row of a run starts ``interval_s`` before its end.
    """

    offset = turbo.get("offset_ns")
    if offset is None:
        return []
    step = turbo.get("interval_s", INTERVAL_S)
    out, last = [], {}
    for row in turbo.get("rows") or []:
        end = row["t_end"] * 1e9 - offset
        prev = last.get(row["package"])
        start = prev if prev is not None and 0 < end - prev < 3 * step * 1e9 else end - step * 1e9
        last[row["package"]] = end
        out.append(dict(row, start_ns=start, end_ns=end))
    return out


def windows(turbo: dict[str, Any] | None, result: dict[str, Any]) -> list[dict[str, Any] | None]:
    """Per sample of ``result``: the package intervals entirely inside it."""

    samples = result.get("samples") or []
    if not turbo:
        return [None] * len(samples)
    rows = _intervals(turbo)
    out: list[dict[str, Any] | None] = []
    for sample in samples:
        start, end = sample.get("start_ns"), sample.get("end_ns")
        if start is None or end is None:
            out.append(None)
            continue
        inside = [r for r in rows if r["start_ns"] >= start + EDGE_MARGIN_NS and r["end_ns"] <= end - EDGE_MARGIN_NS]
        if not inside:
            out.append(None)
            continue
        packages = sorted({r["package"] for r in inside})
        covered = {p: sum(r["end_ns"] - r["start_ns"] for r in inside if r["package"] == p) for p in packages}
        out.append(dict(rows=inside, packages=packages, seconds={p: covered[p] / 1e9 for p in packages},
                        coverage=min(covered.values()) / (end - start)))
    return out


def sample_fields(window: dict[str, Any] | None, elapsed: float | None, compute_socket: int | None) -> dict[str, Any]:
    """Power, uncore clock and temperature of one sample, as ``ts_*`` measurement columns.

    Powers are time-weighted means over the intervals inside the sample; energies are
    those powers times ``elapsed`` summed over both packages.  The uncore clock and the
    temperature are the computing package's (socket 0 when the process spans both).  The
    ``*_s0`` / ``*_s1`` columns give power, uncore clock and the busy clock of the package's first
    CPU (``Bzy_MHz``, in MHz) per package.
    """

    if not window or not window.get("rows"):
        return {}
    rows = window["rows"]

    def mean(package: int, key: str) -> float | None:
        sel = [(r[key], r["end_ns"] - r["start_ns"]) for r in rows if r["package"] == package and r[key] is not None]
        weight = sum(w for _, w in sel)
        return sum(v * w for v, w in sel) / weight if weight else None

    packages = window["packages"]
    own = compute_socket if compute_socket in packages else min(packages)
    out: dict[str, Any] = {}
    seconds = elapsed or min(window["seconds"].values())
    pkg = [mean(p, "pkg_w") for p in packages]
    ram = [mean(p, "ram_w") for p in packages]
    if len(packages) == 2 and None not in pkg:
        out["ts_energy_pkg_j"] = sum(pkg) * seconds
    if len(packages) == 2 and None not in ram:
        out["ts_energy_ram_j"] = sum(ram) * seconds
    if "ts_energy_pkg_j" in out:
        out["ts_system_power_w"] = (out["ts_energy_pkg_j"] + out.get("ts_energy_ram_j", 0.0)) / seconds
    for key, name, scale in (("pkg_w", "ts_pkg_power_w", 1.0), ("ram_w", "ts_ram_power_w", 1.0),
                             ("uncore_mhz", "ts_uncore_ghz", 1e-3), ("pkg_c", "ts_pkg_temp_c", 1.0)):
        value = mean(own, key)
        if value is not None:
            out[name] = value * scale
    for package in packages:
        for key, name, scale in (("pkg_w", "ts_pkg_power_w", 1.0), ("ram_w", "ts_ram_power_w", 1.0),
                                 ("uncore_mhz", "ts_uncore_ghz", 1e-3), ("bzy_mhz", "ts_bzy_mhz", 1.0)):
            value = mean(package, key)
            if value is not None:
                out[f"{name}_s{package}"] = value * scale
    out["ts_intervals"] = sum(1 for r in rows if r["package"] == own)
    out["ts_coverage"] = window.get("coverage")
    return out


FIELDS = [
    "ts_energy_pkg_j", "ts_energy_ram_j", "ts_system_power_w", "ts_pkg_power_w", "ts_ram_power_w",
    "ts_uncore_ghz", "ts_pkg_temp_c", "ts_intervals", "ts_coverage",
    *[f"{name}_s{package}" for name in ("ts_pkg_power_w", "ts_ram_power_w", "ts_uncore_ghz", "ts_bzy_mhz") for package in (0, 1)],
]
