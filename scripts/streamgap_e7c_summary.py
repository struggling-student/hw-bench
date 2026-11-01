#!/usr/bin/env python3
"""Summarize a counted E7 campaign (scripts/streamgap_e7c.sh).

    python3 scripts/streamgap_e7c_summary.py data/raw/streamgap/<campaign>

One row per configuration, medians over its launches: the kernel's sustained rate (median iteration
after the first), then over the kernel phase of the perf session (``hwbench.uncore.kernel_phase``)
the controllers' read and write rates, socket 0's package power, uncore clock and the share of PCU
cycles clipped for power, and the rate per uncore GHz.
"""
import gzip
import json
import re
import statistics as st
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "src"))
from hwbench import uncore  # noqa: E402


def main():
    records = Path(sys.argv[1]) / "records"
    groups = defaultdict(list)
    for path in sorted(records.glob("e7c_*.json")):
        text = path.read_text().strip()
        perf = path.with_name(path.stem + ".perf.csv.gz")
        if not text or not perf.exists():
            continue
        d = json.loads(text)
        tier, name = re.match(r"e7c_(hbm|ddr)_(.+)_r\d+$", d["label"]).groups()
        rate = [d["bytes_per_iter"] / 1e9 / t for t in d["times_s"]]
        parsed = uncore.parse(gzip.decompress(perf.read_bytes()).decode(), uncore.BASE_EVENTS, started=True)
        phase = uncore.kernel_phase(parsed, tier, write_cap=None)
        if phase:
            groups[(tier, name)].append(dict(gbs=st.median(rate[1:]), wrong=d["wrong"], **phase))
    keys = ("gbs", "read_gbs", "write_gbs", "ctrl_gbs", "pkg_w", "ram_w", "uncore_ghz", "power_limited")
    print(f"{'tier':<4} {'configuration':<18} {'kernel':>7} {'read':>7} {'write':>7} {'ctrl':>7} {'pkg W':>6} "
          f"{'DRAM W':>6} {'uncore':>6} {'clip':>5} {'ctrl/GHz':>8} {'n':>2}")
    for tier in ("hbm", "ddr"):
        for (t, name), g in sorted(groups.items(), key=lambda kv: -st.median(x["gbs"] for x in kv[1])):
            if t != tier:
                continue
            m = {k: st.median(x[k] for x in g if x[k] is not None) for k in keys}
            print(f"{t:<4} {name:<18} {m['gbs']:7.1f} {m['read_gbs']:7.1f} {m['write_gbs']:7.1f} {m['ctrl_gbs']:7.1f} "
                  f"{m['pkg_w']:6.0f} {m['ram_w']:6.1f} {m['uncore_ghz']:6.2f} {m['power_limited']:5.2f} "
                  f"{m['ctrl_gbs'] / m['uncore_ghz']:8.0f} {len(g):2d}")
    bad = [x for g in groups.values() for x in g if x["wrong"]]
    print("\nVerification failures:", len(bad) or "none")


if __name__ == "__main__":
    main()
