"""Wall power of the node from the BMC, through the privileged ``ipmitool sensor``.

The administrators allow ``sudo -n /usr/bin/ipmitool sensor`` (the full listing only) on the
hbm nodes.  One listing takes about 6 s and reports whole watts, so it cannot be read per
sample the way perf and turbostat are; a campaign-level logger runs beside the whole
campaign instead (``python3 -m hwbench.ipmi log FILE``, started by ``scripts/run_all.sh`` when
``HW_BENCH_IPMI=1``) and writes one JSON line per listing::

    {"t0": 1.7e9, "t1": 1.7e9, "sys": 400.0, "cpu": 270.0, "mem": 43.0}

``t0`` and ``t1`` are CLOCK_REALTIME seconds before and after the listing; the value the BMC
returns was taken somewhere inside that interval.  A sample takes the listings that lie
entirely inside its window, so a window must be at least two listings long (about 12 s) to
carry a value; the mean is a mean of the BMC's own readings, in whole watts.

Samples of 10 s and less cannot hold two listings; the ``ipmi_record_*`` columns are the same means
over the record's whole span (its samples run back to back), which a two-socket run uses for its wall power.

``Sys Power`` is the node's input power as the BMC sees it, ``CPU Power`` and ``Mem Power``
the BMC's CPU and memory rails.  The other power sensors (chassis, riser, one PSU) are not kept.
"""

from __future__ import annotations

import argparse
import gzip
import json
import signal
import subprocess
import sys
import time
from pathlib import Path
from typing import Any

IPMITOOL = "/usr/bin/ipmitool"
SENSORS = {"Sys Power": "sys", "CPU Power": "cpu", "Mem Power": "mem"}
#: A window needs at least this many listings (about 12 s at the 6 s cadence).
MIN_READINGS = 2
FIELDS = ["ipmi_sys_power_w", "ipmi_cpu_power_w", "ipmi_mem_power_w", "ipmi_readings"]
#: The same over the whole record (its samples run back to back), for samples shorter than two listings.
RECORD_FIELDS = [name.replace("ipmi_", "ipmi_record_", 1) for name in FIELDS]


def command() -> list[str]:
    return ["sudo", "-n", IPMITOOL, "sensor"]


def parse_sensor(text: str) -> dict[str, float]:
    """``sys``, ``cpu`` and ``mem`` watts from ``ipmitool sensor`` output (``name | value | unit | ...``)."""

    out: dict[str, float] = {}
    for line in text.splitlines():
        cells = [c.strip() for c in line.split("|")]
        if len(cells) < 4 or cells[0] not in SENSORS or cells[2] != "Watts":
            continue
        try:
            out[SENSORS[cells[0]]] = float(cells[1])
        except ValueError:
            continue
    return out


def read_log(path: Path) -> list[dict[str, Any]]:
    """The listings of a logger file (plain or gzip), oldest first; malformed lines are skipped."""

    if not path.exists():
        return []
    opener = gzip.open if path.suffix == ".gz" else open
    rows = []
    with opener(path, "rt") as handle:
        for line in handle:
            try:
                row = json.loads(line)
            except json.JSONDecodeError:
                continue
            if isinstance(row, dict) and "t0" in row and "t1" in row:
                rows.append(row)
    return sorted(rows, key=lambda r: r["t0"])


def window_fields(readings: list[dict[str, Any]], start_s: float, end_s: float, min_readings: int = MIN_READINGS) -> dict[str, Any]:
    """Mean BMC power of the listings entirely inside ``[start_s, end_s]`` (CLOCK_REALTIME seconds).

    Empty when fewer than ``min_readings`` listings lie inside, or the BMC gave none of a sensor.
    """

    inside = [r for r in readings if r["t0"] >= start_s and r["t1"] <= end_s]
    if len(inside) < min_readings:
        return {}
    out: dict[str, Any] = {"ipmi_readings": len(inside)}
    for key, name in (("sys", "ipmi_sys_power_w"), ("cpu", "ipmi_cpu_power_w"), ("mem", "ipmi_mem_power_w")):
        values = [r[key] for r in inside if r.get(key) is not None]
        if len(values) >= min_readings:
            out[name] = sum(values) / len(values)
    return out


def record_fields(readings: list[dict[str, Any]], start_s: float, end_s: float) -> dict[str, Any]:
    """``window_fields`` over a record's whole span, under the ``ipmi_record_*`` names.

    One listing inside the span is enough here: under two-socket load a listing takes 25-30 s and a
    50 s record may hold only one, which is still a reading taken inside the record.
    """

    return {name.replace("ipmi_", "ipmi_record_", 1): value
            for name, value in window_fields(readings, start_s, end_s, min_readings=1).items()}


def log(path: Path, period_s: float = 0.0) -> int:
    """Run listings back to back until SIGTERM or SIGINT, then compress the log beside itself."""

    path.parent.mkdir(parents=True, exist_ok=True)
    stop = False

    def request_stop(*_: Any) -> None:
        nonlocal stop
        stop = True

    signal.signal(signal.SIGTERM, request_stop)
    signal.signal(signal.SIGINT, request_stop)
    errors = listed = 0
    with path.open("w") as handle:
        while not stop:
            t0 = time.time()
            done = subprocess.run(command(), capture_output=True, text=True, check=False)
            t1 = time.time()
            values = parse_sensor(done.stdout) if done.returncode == 0 else {}
            if not values:
                errors += 1
                if errors >= 5 and not listed:
                    print("ipmitool gave no power sensors five times in a row", file=sys.stderr)
                    return 1
            else:
                errors = 0
                listed += 1
                handle.write(json.dumps(dict(t0=t0, t1=t1, **values)) + "\n")
                handle.flush()
            if period_s and not stop:
                time.sleep(period_s)
    gz = path.with_name(path.name + ".gz")
    gz.write_bytes(gzip.compress(path.read_bytes(), mtime=0))
    path.unlink()
    return 0


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    sub = parser.add_subparsers(dest="action", required=True)
    one = sub.add_parser("log", help="log listings until SIGTERM")
    one.add_argument("output", type=Path)
    one.add_argument("--period", type=float, default=0.0, help="extra seconds between listings")
    args = parser.parse_args(argv)
    return log(args.output, args.period)


if __name__ == "__main__":
    raise SystemExit(main())
