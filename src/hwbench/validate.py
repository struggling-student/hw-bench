"""Validate selected scientific evidence, coverage, and original raw integrity."""

from __future__ import annotations

import argparse
import hashlib
import json
import math
from pathlib import Path

from hwbench.analysis import (
    MODEL_SPECS,
    ROOT,
    load_measurements,
    scaling_table,
    select_measurements,
)
from hwbench.extended import check_extended, select_extended


def validate(df, raw_roots, policy=None):
    policy = policy or json.loads((ROOT / "configs/analysis.json").read_text())
    data = select_measurements(df, policy)
    errors = []
    warnings = []
    campaigns = {(mode, c) for mode, c in policy["primary_campaigns"].items()}
    for mode, overrides in policy.get("benchmark_campaigns", {}).items():
        campaigns.update((mode, c) for c in overrides.values())
    campaigns.update(policy.get("supersede", {}).items())
    for mode, campaign in sorted(campaigns):
        roots = [root / campaign for root in raw_roots if root.name == mode]
        if not roots or not any((r / "COMPLETED").exists() for r in roots):
            errors.append(f"Campaign is not complete: {campaign}")
        source = select_measurements(df, policy, include_rejected=True)
        source = source[source.campaign_id.eq(campaign)]
        if source.empty:
            errors.append(f"Missing campaign: {campaign}")
        rejected = source[~source.accepted]
        if len(rejected):
            errors.append(
                f"{campaign}: {len(rejected)} rejected selected samples: "
                + ", ".join(sorted(set(rejected.exclusion_reason)))
            )
        expected_hosts = set()
        for root in roots:
            topology_path = root / "system/topology.json"
            if topology_path.exists():
                topology = json.loads(topology_path.read_text())
                expected_hosts.add(topology["hostname"])
                if topology["memory_mode"] != mode:
                    errors.append(f"Topology mode mismatch: {campaign}")
                if topology["threads_per_core"] != 1:
                    errors.append(f"Unexpected SMT layout: {campaign}")
        if set(source.hostname.dropna()) - expected_hosts:
            errors.append(f"Unexpected host: {campaign}")
    for mode, part in data.groupby("memory_mode"):
        if part.hostname.nunique() != 1:
            errors.append(f"Roofline campaigns must use the same host: {mode}")
    keys = [
        "campaign_id",
        "memory_mode",
        "socket_scope",
        "socket",
        "memory_socket",
        "memory_target",
        "benchmark",
        "implementation",
        "dtype",
        "m",
        "n",
        "k",
        "threads",
        "working_set_bytes",
        "notes",
    ]
    for key, part in data.groupby(keys, dropna=False):
        if len(part) != policy["minimum_samples"]:
            errors.append(f"Expected five samples for {key}: {len(part)}")
        metric = (
            "latency_ns"
            if part.iloc[0].benchmark == "pointer_chase"
            else "bandwidth_gbs"
            if part.iloc[0].benchmark == "stream_triad"
            else "performance_gops"
        )
        values = part[metric]
        if values.isna().any() or not all(math.isfinite(v) and v > 0 for v in values):
            errors.append(f"Invalid {metric}: {key}")
        if values.std() / values.mean() * 100 > policy["variance_warning_percent"]:
            warnings.append(f"Variation above 5%: {key}")
    for _, r in data[
        data.benchmark.isin(["avx512_peak", "amx_peak", "amx_onednn_gemm"])
    ].iterrows():
        bound = r.threads * MODEL_SPECS[r["dtype"]] * MODEL_SPECS["max_turbo_ghz"]
        if r.performance_gops > bound * 1.03:
            errors.append(f"Above architectural max-clock bound: {r.source_file}")
        if r.elapsed_seconds < 0.95:
            errors.append(
                f"Compute window shorter than planned one-second interval: {r.source_file}"
            )
    # Coverage is explicit: a partial job cannot produce apparently complete notebooks.
    for mode in ["flat", "cache"]:
        a = data[data.memory_mode.eq(mode) & data.socket_scope.eq("single")]
        targets = ["ddr", "hbm"] if mode == "flat" else ["effective_cache"]
        for socket in [0, 1]:
            for target in targets:
                for threads in [1, 2, 4, 8, 14, 28, 56]:
                    cell = a[
                        a.socket.eq(socket)
                        & a.benchmark.eq("stream_triad")
                        & a.notes.eq("core_scaling")
                        & a.memory_target.eq(target)
                        & a.threads.eq(threads)
                    ]
                    if len(cell) != 5:
                        errors.append(
                            f"Missing bandwidth cell: {mode}/{socket}/{target}/{threads}"
                        )
                for locality in ["local", "remote"]:
                    cell = a[
                        a.socket.eq(socket)
                        & a.benchmark.eq("pointer_chase")
                        & a.memory_target.eq(target)
                        & a.locality.eq(locality)
                    ]
                    if len(cell) != 5:
                        errors.append(
                            f"Missing latency cell: {mode}/{socket}/{target}/{locality}"
                        )
            if mode == "cache":
                for size in [8, 16, 32, 48, 64, 96, 128]:
                    cell = a[
                        a.socket.eq(socket)
                        & a.benchmark.eq("stream_triad")
                        & a.threads.eq(56)
                        & a.notes.isin(["core_scaling", "capacity"])
                        & (a.working_set_gib - size).abs().lt(0.01)
                    ]
                    if len(cell) != 5:
                        errors.append(f"Missing Cache capacity cell: {socket}/{size}")
            if mode == "flat":
                for target in targets:
                    remote = a[
                        a.socket.eq(socket)
                        & a.benchmark.eq("stream_triad")
                        & a.notes.eq("locality")
                        & a.memory_target.eq(target)
                        & a.locality.eq("remote")
                        & a.threads.eq(56)
                        & (a.working_set_gib - 8).abs().lt(0.01)
                    ]
                    if len(remote) != 5:
                        errors.append(f"Missing remote bandwidth: {socket}/{target}")
                    control = a[
                        a.socket.eq(socket)
                        & a.notes.eq("split_control")
                        & a.memory_target.eq(target)
                        & a.threads.eq(28)
                    ]
                    if len(control) != 5:
                        errors.append(f"Missing split-core control: {socket}/{target}")
                combined = data[
                    data.memory_mode.eq(mode)
                    & data.socket.eq(socket)
                    & data.socket_scope.eq("concurrent_tiers")
                    & data.synchronized
                ]
                if len(combined) != 5:
                    errors.append(f"Missing synchronized tier concurrency: {socket}")
            for benchmark in ["avx512_peak", "amx_peak", "amx_onednn_gemm"]:
                for threads in [1, 2, 4, 8, 14, 28, 56]:
                    cell = a[
                        a.socket.eq(socket)
                        & a.benchmark.eq(benchmark)
                        & a.notes.eq("compute_scaling")
                        & a.threads.eq(threads)
                    ]
                    if benchmark == "avx512_peak":
                        for dtype in ["fp32", "fp64"]:
                            if len(cell[cell.dtype.eq(dtype)]) != 5:
                                errors.append(
                                    f"Missing compute cell: {mode}/{socket}/{dtype}/{threads}"
                                )
                    elif len(cell) != 5:
                        errors.append(
                            f"Missing compute cell: {mode}/{socket}/{benchmark}/{threads}"
                        )
            for size in [4096, 6144, 8192]:
                shape = a[
                    a.socket.eq(socket)
                    & a.benchmark.eq("amx_onednn_gemm")
                    & a.threads.eq(56)
                    & a.m.eq(size)
                    & a.n.eq(size)
                    & a.k.eq(size)
                ]
                if len(shape) != 5:
                    errors.append(f"Missing GEMM shape: {mode}/{socket}/{size}")
        cases = (
            [(target, 8) for target in targets]
            if mode == "flat"
            else [("effective_cache", 16), ("effective_cache", 96)]
        )
        for target, size in cases:
            for intensity_k in [1, 2, 4, 8, 16, 32, 64, 128, 256]:
                sweep = a[
                    a.socket.eq(policy["reference_socket"])
                    & a.benchmark.eq("roofline_sweep")
                    & a.memory_target.eq(target)
                    & a.threads.eq(56)
                    & (a.working_set_gib - size).abs().lt(0.01)
                    & a.k.eq(intensity_k)
                ]
                if len(sweep) != 5:
                    errors.append(
                        f"Missing FP64 sweep: {mode}/{target}/{size}/{intensity_k}"
                    )
    try:
        scaling = scaling_table(data)
        if len(scaling) != 11:
            errors.append(f"Expected 11 scaling groups, found {len(scaling)}")
    except ValueError as e:
        errors.append(str(e))
    extended_samples = 0
    if policy.get("extended_campaigns"):
        extended_errors, extended_warnings = check_extended(df, policy, raw_roots)
        errors += extended_errors
        warnings += extended_warnings
        extended_samples = len(select_extended(df, policy))
    return dict(
        status="failed" if errors else "passed",
        selected_samples=len(data),
        extended_samples=extended_samples,
        all_samples=len(df),
        excluded_samples=int((~df.accepted).sum()),
        errors=sorted(set(errors)),
        warnings=sorted(set(warnings)),
    )


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument("--measurements", type=Path, required=True)
    p.add_argument("--raw", type=Path, action="append", required=True)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args(argv)
    report = validate(load_measurements(args.measurements), args.raw)
    report["dataset_sha256"] = hashlib.sha256(
        args.measurements.read_bytes()
    ).hexdigest()
    report["selection_sha256"] = hashlib.sha256(
        (ROOT / "configs/analysis.json").read_bytes()
    ).hexdigest()
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(
        f"Validation {report['status']}: {len(report['errors'])} errors, {len(report['warnings'])} variation warnings."
    )
    for e in report["errors"]:
        print(e)
    return int(bool(report["errors"]))


if __name__ == "__main__":
    raise SystemExit(main())
