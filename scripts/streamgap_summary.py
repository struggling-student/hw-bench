#!/usr/bin/env python3
"""Summarize a streamgap campaign (scripts/streamgap.sh): tables for E1, E2 and E3 and the baseline.

    python3 scripts/streamgap_summary.py data/raw/streamgap/<campaign>

Bandwidths are GB/s of counted bytes (24 B per element for Triad, 16 B for Copy), the median of the
repeats of a configuration. "best" is the best iteration after the first (STREAM's convention),
"med" the median iteration after the first, "best10" the best of iterations 2-10 (STREAM's default
NTIMES=10), "first" the first iteration.
"""
import json
import re
import statistics as st
import sys
from collections import defaultdict
from pathlib import Path


def med(values):
    return st.median(values) if values else float("nan")


def load_gap(records):
    out = defaultdict(list)
    for path in sorted(records.glob("e[1345]_*.json")):
        text = path.read_text().strip()
        if not text:
            continue
        d = json.loads(text)
        t = d["times_s"]
        gb = d["bytes_per_iter"] / 1e9
        rate = [gb / x for x in t]
        d.update(
            best=max(rate[1:]),
            med=med(rate[1:]),
            first=rate[0],
            best10=max(rate[1:10]),
            late=med(rate[len(rate) // 2 :]),
        )
        key = re.sub(r"_r\d+$", "", d["label"])
        out[key].append(d)
    return out


def row(group):
    return {k: med([d[k] for d in group]) for k in ("best", "med", "best10", "first", "late")}


def fmt(r):
    return f"best {r['best']:6.1f}  best10 {r['best10']:6.1f}  med {r['med']:6.1f}  late {r['late']:6.1f}  first {r['first']:6.1f}"


def baseline(records):
    print("== Baseline: thesis kernel (hardware, 8 GiB, 5 x 1 s), median / first / max of samples")
    for path in sorted(records.glob("base_hw_*.json")):
        d = json.loads(path.read_text())
        s = d["samples"] if "samples" in d else d["result"]["samples"]
        bw = [x["modeled_bytes"] / x["elapsed_seconds"] / 1e9 for x in s]
        print(f"  {path.stem[8:]:<22} median {med(bw):6.1f}  first {bw[0]:6.1f}  max {max(bw):6.1f}")


def e2(records):
    print("\n== E2: vendored stream.c, Triad / Copy best rate (GB/s, MB/s / 1000), median of repeats")
    groups = defaultdict(lambda: defaultdict(list))
    for path in sorted(records.glob("e2_*.txt")):
        m = re.match(r"e2_(.+)_(close|spread)_r\d+\.txt", path.name)
        for kernel in ("Copy", "Triad"):
            hit = re.search(rf"^{kernel}:\s+([\d.]+)", path.read_text(), re.M)
            if hit:
                groups[(m[1], m[2])][kernel].append(float(hit[1]) / 1000)
    for (exe, bind), kernels in sorted(groups.items()):
        # STREAM counts Triad as 24 B and Copy as 16 B per element, the same as here.
        print(f"  {exe:<24} {bind:<7} triad {med(kernels['Triad']):6.1f}  copy {med(kernels['Copy']):6.1f}   (n={len(kernels['Triad'])})")


def table(title, groups, pattern):
    print(f"\n== {title}")
    for key, group in sorted(groups.items()):
        if re.search(pattern, key):
            print(f"  {key:<34} {fmt(row(group))}   (n={len(group)})")


def main():
    root = Path(sys.argv[1])
    records = root / "records"
    baseline(records)
    e2(records)
    gap = load_gap(records)
    table("E1: array size (elements per array), compiler loop and unrolled non-temporal kernel", gap, r"^e1_")
    table("E3: kernel variants at 160M elements per array", gap, r"^e3_(?!.*thesis)")
    table("E3: at the thesis size (357.9M elements per array)", gap, r"thesis")
    table("E4: pointer reloads (u1r) and initial data (const / varied), thesis size, 2.5 s", gap, r"^e4_(?!long)")
    table("E4: 10 s runs, unrolled non-temporal Triad, thesis size", gap, r"^e4_long")
    table("E5: data pattern (varied = thesis, const, random, zero), read-only and 4-line non-temporal Triad", gap, r"^e5_(?!long)")
    table("E5: 10 s read-only runs", gap, r"^e5_long")
    bad = [d["label"] for g in gap.values() for d in g if d["wrong"]]
    print("\nVerification failures:", bad or "none")


if __name__ == "__main__":
    main()
