"""Normalize immutable raw campaigns; retain selection decisions and sample identity."""

from __future__ import annotations

import argparse
import csv
import json
import math
from collections import defaultdict
from pathlib import Path
from typing import Any

FIELDS = [
    "timestamp",
    "hostname",
    "campaign_id",
    "schema_version",
    "memory_mode",
    "numa_mode",
    "socket_scope",
    "socket",
    "memory_socket",
    "locality",
    "memory_target",
    "benchmark",
    "kernel",
    "dtype",
    "implementation",
    "m",
    "n",
    "k",
    "threads",
    "physical_cores",
    "working_set_bytes",
    "total_working_set_bytes",
    "working_set_gib",
    "iteration",
    "phase",
    "warmup",
    "elapsed_seconds",
    "start_ns",
    "end_ns",
    "planned_start_ns",
    "operations",
    "modeled_bytes",
    "loads",
    "latency_ns",
    "bandwidth_gbs",
    "performance_gops",
    "performance_gflops",
    "arithmetic_intensity",
    "cpu_frequency_ghz",
    "compiler",
    "compiler_flags",
    "cpu_bind",
    "mem_bind",
    "campaign_repetition",
    "pair_id",
    "synchronized",
    "overlap_fraction",
    "amx_verified",
    "notes",
    "accepted",
    "exclusion_reason",
    "retry_of",
    "source_file",
]


def _reasons(record, compiler):
    r = record.get("result") or {}
    reasons = []
    benchmark = r.get("benchmark")
    if record.get("returncode") != 0 or not r.get("valid"):
        reasons.append("failed_return_or_correctness")
    if (
        record.get("_expected_host")
        and record.get("hostname") != record["_expected_host"]
    ):
        reasons.append("non_target_host")
    if r.get("dtype") == "int8":
        reasons.append("int8_out_of_scope")
    if r.get("threads", record.get("threads")) != record.get("threads"):
        reasons.append("worker_count_mismatch")
    if benchmark == "amx_onednn_gemm":
        evidence = [
            s.lower()
            for s in record.get("stdout", "").splitlines()
            if ",exec," in s.lower() and "matmul" in s.lower()
        ]
        if not any("amx" in s for s in evidence):
            reasons.append("missing_amx_execution_evidence")
        if not (
            "numactl_only" in (r.get("implementation") or record.get("notes") or "")
        ):
            reasons.append("superseded_onednn_affinity")
    if benchmark == "roofline_sweep" and "avx512_8_independent_chains" not in (
        r.get("implementation") or record.get("notes") or ""
    ):
        reasons.append("superseded_dependency_limited_sweep")
    if benchmark == "amx_peak" and not compiler.get("verification", {}).get("amx_bf16"):
        reasons.append("missing_amx_disassembly_evidence")
    if benchmark in ["avx512_peak", "roofline_sweep"] and not compiler.get(
        "verification", {}
    ).get("avx512_fma"):
        reasons.append("missing_avx512_disassembly_evidence")
    return reasons


def rows_from_record(
    record: dict[str, Any], source: Path, compiler: dict[str, Any]
) -> list[dict[str, Any]]:
    r = record.get("result") or {}
    if not r or r.get("dtype") == "int8":
        return []
    reasons = _reasons(record, compiler)
    mode = record.get("memory_mode")
    target = record.get("memory_target")
    if mode == "cache" and target == "ddr":
        target = "effective_cache"
    socket = record.get("socket")
    ms = record.get("memory_socket", socket)
    freq = [
        record.get("cpu_frequency_khz_before"),
        record.get("cpu_frequency_khz_after"),
    ]
    freq = [f for f in freq if f]
    impl = r.get("implementation") or (
        "onednn_numactl_only_omp_affinity_unset"
        if "numactl_only" in (record.get("notes") or "")
        else r.get("benchmark")
    )
    base = dict(
        timestamp=record.get("timestamp"),
        hostname=record.get("hostname"),
        campaign_id=record.get("campaign_id") or record.get("_campaign_id", "legacy"),
        schema_version=record.get("schema_version", "1.0"),
        memory_mode=mode,
        numa_mode=mode,
        socket_scope=record.get("socket_scope"),
        socket=socket,
        memory_socket=ms,
        locality="local" if ms == socket else "remote",
        memory_target=target,
        benchmark=r.get("benchmark"),
        kernel=r.get("kernel"),
        dtype=r.get("dtype"),
        implementation=impl,
        m=r.get("m"),
        n=r.get("n"),
        k=r.get("k"),
        threads=r.get("threads", record.get("threads")),
        physical_cores=record.get("physical_cores"),
        working_set_bytes=r.get("working_set_bytes") or record.get("working_set_bytes"),
        phase="steady",
        warmup=False,
        cpu_frequency_ghz=sum(freq) / len(freq) / 1e6 if freq else None,
        compiler=compiler.get("compiler"),
        compiler_flags=compiler.get("flags"),
        cpu_bind=record.get("cpu_bind"),
        mem_bind=record.get("mem_bind"),
        campaign_repetition=record.get("campaign_repetition"),
        pair_id=record.get("pair_id"),
        synchronized=record.get("synchronized", False),
        amx_verified=not any("amx_" in q for q in reasons)
        if r.get("benchmark") in ["amx_peak", "amx_onednn_gemm"]
        else None,
        notes=record.get("notes") or "",
        retry_of=record.get("retry_of"),
        source_file=str(source),
    )
    if "samples" in r:
        samples = r["samples"]
    elif r.get("benchmark") == "stream_triad":
        samples = [
            dict(
                elapsed_seconds=t,
                operations=r["operations_per_iteration"],
                modeled_bytes=r["modeled_bytes_per_iteration"],
                phase=phase,
            )
            for phase, t in [("first", r["first_elapsed_seconds"])]
            + [("steady", t) for t in r["steady_elapsed_seconds"]]
        ]
    elif r.get("benchmark") == "roofline_sweep":
        samples = [
            dict(
                elapsed_seconds=t,
                operations=r["operations_per_iteration"],
                modeled_bytes=r["modeled_bytes_per_iteration"],
            )
            for t in r["measurements"]
        ]
    else:
        samples = [
            dict(
                elapsed_seconds=r.get("elapsed_seconds"), operations=r.get("operations")
            )
        ]
    rows = []
    for i, sample in enumerate(samples):
        row = dict(
            base,
            iteration=i
            if "samples" in r or len(samples) > 1
            else record.get("campaign_repetition"),
        )
        row.update(sample)
        errors = list(reasons)
        elapsed = row.get("elapsed_seconds")
        if elapsed is None or not math.isfinite(elapsed) or elapsed <= 0:
            errors.append("invalid_elapsed_time")
        else:
            ops = row.get("operations") or 0
            traffic = row.get("modeled_bytes") or 0
            loads = row.get("loads") or 0
            row.update(
                performance_gops=ops / elapsed / 1e9 if ops else None,
                performance_gflops=ops / elapsed / 1e9 if ops else None,
                bandwidth_gbs=traffic / elapsed / 1e9 if traffic else None,
                arithmetic_intensity=ops / traffic if traffic else None,
                latency_ns=elapsed * 1e9 / loads if loads else None,
            )
            if r.get("benchmark") == "pointer_chase" and loads <= 0:
                errors.append("invalid_load_count")
            if (
                record.get("process_start_ns") is not None
                and row.get("start_ns") is not None
            ):
                if (
                    row["start_ns"] < record["process_start_ns"]
                    or row["end_ns"] > record["process_end_ns"]
                ):
                    errors.append("sample_outside_process_clock_window")
            if (
                row.get("start_ns") is not None
                and abs((row["end_ns"] - row["start_ns"]) / 1e9 - elapsed) > 1e-6
            ):
                errors.append("inconsistent_window")
        ws = row.get("working_set_bytes")
        row.update(
            working_set_gib=ws / 2**30 if ws else None,
            total_working_set_bytes=ws,
            accepted=not errors,
            exclusion_reason=";".join(errors),
        )
        rows.append({f: row.get(f) for f in FIELDS})
    return rows


def _deduplicate_retries(rows):
    # Preserve all independent campaigns. Only an explicit successful retry supersedes a source.
    retries = defaultdict(list)
    for row in rows:
        if row.get("retry_of") and row.get("accepted"):
            retries[row["retry_of"]].append(row)
    for original, candidates in retries.items():
        latest = max(candidates, key=lambda r: r.get("timestamp") or "")["source_file"]
        for row in rows:
            if row["source_file"] == original or (
                row.get("retry_of") == original and row["source_file"] != latest
            ):
                row.update(accepted=False, exclusion_reason="superseded_explicit_retry")
    return rows


def _aggregate(rows, scope, component):
    groups = defaultdict(list)
    for row in rows:
        if row.get("socket_scope") == component and row.get("pair_id"):
            groups[
                (
                    row["campaign_id"],
                    row["pair_id"],
                    row["benchmark"],
                    row["implementation"],
                    row["m"],
                    row["n"],
                    row["k"],
                    row["iteration"],
                    row["phase"],
                )
            ].append(row)
    output = []
    for members in groups.values():
        row = dict(members[0])
        row["socket_scope"] = scope
        row["source_file"] = ";".join(sorted(m["source_file"] for m in members))
        errors = []
        if len(members) != 2 or (
            scope == "dual" and len({m["socket"] for m in members}) != 2
        ):
            errors.append("incomplete_or_duplicate_pair")
        if scope == "concurrent_tiers" and {m["memory_target"] for m in members} != {
            "ddr",
            "hbm",
        }:
            errors.append("incomplete_tier_pair")
        if any(not m["accepted"] for m in members):
            errors.append("rejected_component")
        if not all(
            m["synchronized"] and m.get("start_ns") is not None for m in members
        ):
            errors.append("legacy_unsynchronized_aggregate")
        else:
            start = min(m["start_ns"] for m in members)
            end = max(m["end_ns"] for m in members)
            overlap = min(m["end_ns"] for m in members) - max(
                m["start_ns"] for m in members
            )
            row.update(
                start_ns=start,
                end_ns=end,
                elapsed_seconds=(end - start) / 1e9,
                overlap_fraction=overlap / (end - start),
            )
            if (
                len({m["planned_start_ns"] for m in members}) != 1
                or row["overlap_fraction"] < 0.95
            ):
                errors.append("insufficient_shared_window")
        if scope == "dual":
            row["socket"] = None
        else:
            row.update(
                memory_target="ddr+hbm", memory_socket=row["socket"], locality="local"
            )
        row.update(
            threads=sum(m["threads"] for m in members),
            physical_cores=sum(m["physical_cores"] for m in members),
            operations=sum(m["operations"] or 0 for m in members),
            modeled_bytes=sum(m["modeled_bytes"] or 0 for m in members),
            total_working_set_bytes=sum(m["working_set_bytes"] or 0 for m in members),
            cpu_bind=";".join(str(m["cpu_bind"]) for m in members),
            mem_bind=";".join(str(m["mem_bind"]) for m in members),
        )
        if not errors:
            row.update(
                bandwidth_gbs=row["modeled_bytes"] / row["elapsed_seconds"] / 1e9
                if row["modeled_bytes"]
                else None,
                performance_gops=row["operations"] / row["elapsed_seconds"] / 1e9
                if row["operations"]
                else None,
            )
            row["performance_gflops"] = row["performance_gops"]
        else:
            row.update(
                bandwidth_gbs=None, performance_gops=None, performance_gflops=None
            )
        row.update(accepted=not errors, exclusion_reason=";".join(errors))
        output.append(row)
    return output


def _aggregate_dual(rows):
    return _aggregate(rows, "dual", "dual_component")


def _aggregate_concurrent_tiers(rows):
    return _aggregate(rows, "concurrent_tiers", "concurrent_tier_component")


def write_csv(path, rows, fields):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument("--input", type=Path, action="append", required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--summary-output", type=Path)
    args = p.parse_args(argv)
    rows = []
    audit = []
    for root in args.input:
        for path in sorted(root.rglob("*.json")):
            try:
                record = json.loads(path.read_text())
            except (OSError, json.JSONDecodeError):
                continue
            if "returncode" not in record:
                continue
            campaign = next(
                (a for a in path.parents if (a / "system/topology.json").exists()), None
            )
            compiler = {}
            if campaign:
                topology = json.loads((campaign / "system/topology.json").read_text())
                record["_expected_host"] = topology["hostname"]
                record["_campaign_id"] = campaign.name
                meta = campaign / "system/build_metadata.json"
                if meta.exists():
                    compiler = json.loads(meta.read_text())
                # Verification must be backed by retained executable disassembly.
                asm = campaign / "system/hardware.asm"
                if record.get("schema_version") == "2.0":
                    evidence = asm.read_text() if asm.exists() else ""
                    compiler["verification"] = {
                        "avx512_fma": "vfmadd" in evidence and "%zmm" in evidence,
                        "amx_bf16": "tdpbf16ps" in evidence,
                    }
            source = Path(root.name) / path.relative_to(root)
            reasons = _reasons(record, compiler)
            audit.append(
                dict(
                    source_file=str(source),
                    campaign_id=record.get("campaign_id")
                    or record.get("_campaign_id", "unknown"),
                    accepted=not reasons,
                    exclusion_reason=";".join(reasons),
                )
            )
            rows.extend(rows_from_record(record, source, compiler))
    rows = _deduplicate_retries(rows)
    rows += _aggregate_dual(rows) + _aggregate_concurrent_tiers(rows)
    rows.sort(
        key=lambda r: (r["source_file"], r.get("iteration") or 0, r["socket_scope"])
    )
    write_csv(args.output, rows, FIELDS)
    import pandas as pd

    from hwbench.analysis import select_measurements

    frame = pd.DataFrame(rows)
    selected_sources = set(select_measurements(frame).source_file)
    for decision in audit:
        source_rows = [r for r in rows if r["source_file"] == decision["source_file"]]
        if source_rows:
            decision["accepted"] = all(r["accepted"] for r in source_rows)
            decision["exclusion_reason"] = ";".join(
                sorted(
                    {
                        reason
                        for r in source_rows
                        for reason in (r["exclusion_reason"] or "").split(";")
                        if reason
                    }
                )
            )
        decision["selected_for_thesis"] = decision["source_file"] in selected_sources
        decision["selection_reason"] = (
            "selected_campaign_and_configuration"
            if decision["selected_for_thesis"]
            else "rejected_measurement"
            if not decision["accepted"]
            else "outside_explicit_thesis_selection"
        )
    write_csv(
        args.output.with_name("selection_audit.csv"),
        audit,
        [
            "source_file",
            "campaign_id",
            "accepted",
            "exclusion_reason",
            "selected_for_thesis",
            "selection_reason",
        ],
    )
    df = frame
    df = df[
        df.accepted
        & ~df.socket_scope.isin(["dual_component", "concurrent_tier_component"])
    ]
    keys = [
        "campaign_id",
        "memory_mode",
        "socket_scope",
        "socket",
        "memory_socket",
        "locality",
        "memory_target",
        "benchmark",
        "dtype",
        "implementation",
        "m",
        "n",
        "k",
        "threads",
        "working_set_bytes",
        "phase",
        "notes",
    ]
    summaries = []
    for key, part in df.groupby(keys, dropna=False):
        metric = (
            "latency_ns"
            if part.iloc[0].benchmark == "pointer_chase"
            else "bandwidth_gbs"
            if part.iloc[0].benchmark == "stream_triad"
            else "performance_gops"
        )
        values = part[metric].dropna()
        mean = values.mean()
        std = values.std() if len(values) > 1 else 0
        summaries.append(
            dict(
                zip(keys, key),
                metric=metric,
                n_samples=len(values),
                mean=mean,
                median=values.median(),
                std=std,
                min=values.min(),
                max=values.max(),
                cv_percent=100 * std / mean if mean else None,
                excessive_variance=bool(mean and std / mean > 0.05),
            )
        )
    write_csv(
        args.summary_output or args.output.with_name("summary.csv"),
        summaries,
        keys
        + [
            "metric",
            "n_samples",
            "mean",
            "median",
            "std",
            "min",
            "max",
            "cv_percent",
            "excessive_variance",
        ],
    )
    print(f"Normalized {len(rows)} samples; retained {len(audit)} source decisions.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
