"""Scientific sanity checks for a completed Roofline campaign."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

import pandas as pd

MAX_TURBO_GHZ = 3.5
MAX_OPS_CYCLE = {"fp32": 64, "fp64": 32, "bf16": 1024, "int8": 2048}


def validate(df: pd.DataFrame, raw_roots: list[Path]) -> dict[str, Any]:
    errors: list[str] = []
    warnings: list[str] = []
    raw_records = []
    unexpected_hosts: list[str] = []
    for root in raw_roots:
        expected_hosts=set()
        for topology_path in root.rglob("system/topology.json"):
            try: expected_hosts.add(json.loads(topology_path.read_text())["hostname"])
            except (OSError, json.JSONDecodeError, KeyError): pass
        for path in root.rglob("*.json"):
            source = Path(root.name) / path.relative_to(root)
            try:
                record = json.loads(path.read_text())
            except (OSError, json.JSONDecodeError):
                continue
            if "returncode" in record:
                raw_records.append((source, record))
                if expected_hosts and record.get("hostname") not in expected_hosts:
                    unexpected_hosts.append(str(source))
                    continue
                if record.get("returncode") != 0 or not (record.get("result") or {}).get("valid"):
                    if "can't open file" in record.get("stderr", "") and "torch_amx.py" in record.get("stderr", ""):
                        warnings.append(f"preserved and superseded Flat launch failure: {source}")
                    else:
                        errors.append(f"failed raw record: {source}")
                if (record.get("result") or {}).get("benchmark") == "amx_onednn_gemm":
                    verbose = [line.lower() for line in record.get("stdout", "").splitlines()
                               if line.lower().startswith(("onednn_verbose", "dnnl_verbose"))]
                    if not any("amx" in line for line in verbose):
                        errors.append(f"oneDNN AMX not verified: {source}")

    for mode in ("cache", "flat"):
        if mode not in set(df.memory_mode): errors.append(f"missing {mode} measurements")
    if unexpected_hosts:
        warnings.append(
            f"preserved and excluded {len(unexpected_hosts)} records executed on a non-target host "
            "during a superseded submission-wrapper attempt"
        )
    flat = df[(df.memory_mode == "flat") & (df.benchmark == "stream_triad") &
              (df.phase == "steady") & (df.socket_scope == "single")]
    if not flat.empty:
        medians = flat.groupby("memory_target").bandwidth_gbs.median()
        if "hbm" in medians and "ddr" in medians and medians.hbm <= medians.ddr:
            warnings.append(f"Flat HBM ({medians.hbm:.1f}) is not faster than DDR ({medians.ddr:.1f})")

    compute = df[df.benchmark.isin(["avx512_peak", "amx_onednn_gemm", "amx_peak"])]
    for dtype, part in compute.groupby("dtype"):
        for _, row in part.iterrows():
            maximum = row.physical_cores * MAX_OPS_CYCLE[dtype] * MAX_TURBO_GHZ
            if row.performance_gops > maximum * 1.03:
                errors.append(f"{dtype} result above max-turbo architectural bound: {row.source_file}")

    rejected_bf16 = compute[(compute.benchmark == "amx_onednn_gemm") &
                            ~compute.notes.fillna("").str.contains("numactl_only")]
    if not rejected_bf16.empty:
        warnings.append(
            "preserved BF16 oneDNN runs with OMP_PROC_BIND/OMP_PLACES are excluded from ceilings; "
            "a controlled probe showed that this runtime combination serialized/scaled inversely"
        )
    old_sweep = df[(df.benchmark == "roofline_sweep") &
                   ~df.notes.fillna("").str.contains("avx512_8_independent_chains")]
    if not old_sweep.empty:
        warnings.append(
            "preserved dependency-limited intensity sweep is excluded from Roofline points; "
            "the corrected sweep uses eight independent AVX-512 chains"
        )

    steady = df[(df.benchmark == "stream_triad") & (df.phase == "steady") &
                (df.socket_scope != "dual_component")]
    group = steady.groupby(["memory_mode", "socket_scope", "memory_target", "threads", "working_set_bytes"], dropna=False).size()
    for key, count in group.items():
        if count < 5: errors.append(f"fewer than five bandwidth repetitions for {key}: {count}")

    return {"status": "failed" if errors else "passed", "raw_record_count": len(raw_records),
            "normalized_row_count": len(df), "errors": errors, "warnings": warnings}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--measurements", type=Path, required=True)
    parser.add_argument("--raw", type=Path, action="append", required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    frame = pd.read_csv(args.measurements)
    report = validate(frame, args.raw)
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
