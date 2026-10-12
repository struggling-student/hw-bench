"""Normalize immutable raw campaigns; retain selection decisions and sample identity."""

from __future__ import annotations

import argparse
import csv
import json
import math
import re
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
    "requested_seconds",
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
    "source_sha256",
    "launch_method",
    "node",
    "memory_mode_verified",
    "cycles",
    "amx_busy_cycles",
    "ghz_effective",
    "amx_busy_frac",
    "instructions",
    "ref_cycles",
    "dram_read_lines",
    "dram_write_lines",
    "counted_bytes",
]


def _legacy(record: dict[str, Any]) -> bool:
    """Schema 1.0 is the superseded September pipeline."""

    return record.get("schema_version", "1.0") == "1.0"


# Disassembly evidence each benchmark needs before its numbers are accepted.
REQUIRED_VERIFICATION = {
    "amx_peak": ("amx_bf16", "missing_amx_disassembly_evidence"),
    "int8_amx_peak": ("amx_int8", "missing_amx_int8_disassembly_evidence"),
    "avx512_peak": ("avx512_fma", "missing_avx512_disassembly_evidence"),
    "roofline_sweep": ("avx512_fma", "missing_avx512_disassembly_evidence"),
    "vnni_peak": ("avx512_vnni", "missing_vnni_disassembly_evidence"),
    "avx512_bf16_peak": ("avx512_bf16", "missing_avx512_bf16_disassembly_evidence"),
    "stream_triad_nt": ("nt_store", "missing_nt_store_disassembly_evidence"),
}
# Benchmarks reported as bandwidth rather than operation rate.
BANDWIDTH_BENCHMARKS = {"stream_triad", "stream_triad_nt", "stream_read"}


def _reasons(record, compiler):
    r = record.get("result") or {}
    reasons = []
    benchmark = r.get("benchmark")
    if record.get("returncode") != 0 or not r.get("valid"):
        reasons.append("failed_return_or_correctness")
    if record.get("interference_suspected"):
        reasons.append("interference_suspected")
    if (
        record.get("_expected_host")
        and record.get("hostname") != record["_expected_host"]
    ):
        reasons.append("non_target_host")
    if r.get("dtype") == "int8" and _legacy(record):
        reasons.append("int8_out_of_scope")
    if r.get("threads", record.get("threads")) != record.get("threads"):
        reasons.append("worker_count_mismatch")
    if benchmark in ("amx_onednn_gemm", "onednn_gemm_sweep"):
        evidence = [
            s.lower()
            for s in record.get("stdout", "").splitlines()
            if ",exec," in s.lower() and "matmul" in s.lower()
        ]
        if not any("amx" in s for s in evidence):
            reasons.append("missing_amx_execution_evidence")
        affinity = r.get("implementation") or record.get("notes") or ""
        if benchmark == "amx_onednn_gemm" and "numactl_only" not in affinity:
            reasons.append("superseded_onednn_affinity")
    # Sweeps with fewer than eight independent FMA chains are latency-limited and superseded;
    # eight (the October kernel), twelve and sixteen are the supported chain counts.
    if benchmark == "roofline_sweep" and not re.search(
        r"avx512_(8|12|16)_independent_chains", r.get("implementation") or record.get("notes") or ""
    ):
        reasons.append("superseded_dependency_limited_sweep")
    if benchmark in REQUIRED_VERIFICATION:
        key, reason = REQUIRED_VERIFICATION[benchmark]
        if not compiler.get("verification", {}).get(key):
            reasons.append(reason)
    return reasons


# Source file whose hash identifies the code that produced a benchmark's numbers.
KERNEL_SOURCES = {"amx_onednn_gemm": "benchmarks/amx/torch_amx.py"}
DEFAULT_KERNEL_SOURCE = "benchmarks/hardware.cpp"


def _requested_seconds(record: dict[str, Any]) -> float | None:
    """Duration the launcher asked of each timed sample (``--seconds``)."""

    command = record.get("command") or []
    if "--seconds" in command:
        try:
            return float(command[command.index("--seconds") + 1])
        except (IndexError, ValueError):
            return None
    return None


def _clock_fields(row: dict[str, Any], threads: int | None) -> dict[str, Any]:
    """Effective core clock and AMX-busy fraction from self-monitored counters.

    ``cycles`` are unhalted user-mode core cycles summed over the benchmark's
    threads, so dividing by threads x wall time gives the average clock the cores
    actually ran at while the kernel executed.
    """

    cycles, elapsed = row.get("cycles"), row.get("elapsed_seconds")
    if not cycles or cycles <= 0 or not threads or not elapsed or elapsed <= 0:
        return dict(ghz_effective=None, amx_busy_frac=None)
    amx = row.get("amx_busy_cycles")
    return dict(
        ghz_effective=cycles / (threads * elapsed) / 1e9,
        amx_busy_frac=amx / cycles if amx is not None and amx >= 0 else None,
    )


CACHE_LINE = 64


def _counted_fields(row: dict[str, Any]) -> dict[str, Any]:
    """Bytes the cores moved to and from DRAM, from the offcore-response line counts.

    Reads and writes are counted per 64-byte line by two events (``hardware.cpp``,
    ``torch_gemm.py``); ``counted_bytes`` needs both.  A record made without them has no
    such field, and the value stays empty rather than zero.
    """

    reads, writes = row.get("dram_read_lines"), row.get("dram_write_lines")
    if reads is None or writes is None or reads < 0 or writes < 0:
        return dict(counted_bytes=None)
    return dict(counted_bytes=(reads + writes) * CACHE_LINE)


def _launch_method(record: dict[str, Any], campaign: dict[str, Any] | None):
    """How the campaign was started; campaigns that predate the field ran in Slurm."""

    campaign = campaign or {}
    return (
        record.get("launch_method")
        or campaign.get("launch_method")
        or ("slurm_exclusive" if campaign.get("slurm_job_id") else None)
    )


def rows_from_record(
    record: dict[str, Any],
    source: Path,
    compiler: dict[str, Any],
    campaign: dict[str, Any] | None = None,
) -> list[dict[str, Any]]:
    r = record.get("result") or {}
    if not r or (r.get("dtype") == "int8" and _legacy(record)):
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
        locality="span"
        if record.get("socket_scope") == "span"
        else "local"
        if ms == socket
        else "remote",
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
        requested_seconds=_requested_seconds(record),
        launch_method=_launch_method(record, campaign),
        node=(record.get("hostname") or "").split(".", 1)[0] or None,
        memory_mode_verified=(
            None
            if not (campaign or {}).get("topology_mode")
            else campaign["topology_mode"] == mode
        ),
        # A launcher that hashes itself at run time (torch_amx.py) is authoritative;
        # otherwise fall back to the hash recorded when the campaign started.
        source_sha256=r.get("source_sha256")
        or ((campaign or {}).get("source_sha256") or {}).get(
            KERNEL_SOURCES.get(r.get("benchmark"), DEFAULT_KERNEL_SOURCE)
        ),
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
            row.update(_clock_fields(row, row.get("counter_threads") or row.get("threads")))
            row.update(_counted_fields(row))
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
        cycles = [m.get("cycles") for m in members]
        amx_cycles = [m.get("amx_busy_cycles") for m in members]
        row["cycles"] = sum(cycles) if all(c for c in cycles) else None
        row["amx_busy_cycles"] = (
            sum(amx_cycles) if all(a is not None and a >= 0 for a in amx_cycles) else None
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
            row.update(_clock_fields(row, row["threads"]))
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
            campaign_meta = {}
            if campaign:
                meta_path = campaign / "system/campaign.json"
                if meta_path.exists():
                    campaign_meta = json.loads(meta_path.read_text())
                topology = json.loads((campaign / "system/topology.json").read_text())
                campaign_meta["topology_mode"] = topology.get("memory_mode")
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
                        "amx_int8": "tdpbssd" in evidence,
                        "avx512_vnni": "vpdpbusd" in evidence,
                        "avx512_bf16": "vdpbf16ps" in evidence,
                        "nt_store": "vmovntpd" in evidence,
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
            rows.extend(rows_from_record(record, source, compiler, campaign_meta))
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
            if part.iloc[0].benchmark in BANDWIDTH_BENCHMARKS
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
