"""Normalize raw benchmark records into analysis-ready CSV datasets."""

from __future__ import annotations

import argparse
import csv
import json
import math
import statistics
from collections import defaultdict
from pathlib import Path
from typing import Any, Iterable

FIELDS = [
    "timestamp", "hostname", "memory_mode", "numa_mode", "socket_scope", "socket",
    "memory_target", "benchmark", "kernel", "dtype", "threads", "physical_cores",
    "working_set_bytes", "working_set_gib", "iteration", "phase", "warmup",
    "elapsed_seconds", "bandwidth_gbs", "operations", "performance_gops",
    "performance_gflops", "performance_tops", "arithmetic_intensity",
    "cpu_frequency_ghz", "compiler", "compiler_flags", "cpu_bind", "mem_bind",
    "campaign_repetition", "pair_id", "amx_verified", "notes", "source_file",
]


def _base(record: dict[str, Any], result: dict[str, Any], source: Path, compiler: dict[str, Any]) -> dict[str, Any]:
    frequency = [record.get("cpu_frequency_khz_before"), record.get("cpu_frequency_khz_after")]
    frequency = [value for value in frequency if value is not None]
    target = record.get("memory_target")
    notes = record.get("notes") or ""
    if record.get("memory_mode") == "cache" and target == "ddr":
        target = "effective_cache"
        notes = (notes + "; " if notes else "") + "raw_label_ddr_normalized_to_effective_cache"
    return {
        "timestamp": record.get("timestamp"), "hostname": record.get("hostname"),
        "memory_mode": record.get("memory_mode"), "numa_mode": record.get("memory_mode"),
        "socket_scope": record.get("socket_scope"), "socket": record.get("socket"),
        "memory_target": target, "benchmark": result.get("benchmark"),
        "kernel": result.get("kernel"), "dtype": result.get("dtype"),
        "threads": record.get("threads"), "physical_cores": record.get("physical_cores"),
        "working_set_bytes": result.get("working_set_bytes") or record.get("working_set_bytes"),
        "iteration": None, "phase": "timed", "warmup": False,
        "cpu_frequency_ghz": sum(frequency) / len(frequency) / 1e6 if frequency else None,
        "compiler": compiler.get("compiler"), "compiler_flags": compiler.get("flags"),
        "cpu_bind": record.get("cpu_bind"), "mem_bind": record.get("mem_bind"),
        "campaign_repetition": record.get("campaign_repetition"), "pair_id": record.get("pair_id"),
        "amx_verified": None, "notes": notes, "source_file": str(source),
    }


def _finish(row: dict[str, Any]) -> dict[str, Any]:
    ws = row.get("working_set_bytes")
    row["working_set_gib"] = ws / 2**30 if ws else None
    row.setdefault("elapsed_seconds", None); row.setdefault("bandwidth_gbs", None)
    row.setdefault("operations", None); row.setdefault("performance_gops", None)
    row["performance_gflops"] = row.get("performance_gops") if row.get("dtype") != "int8" else None
    row["performance_tops"] = row.get("performance_gops") / 1000 if row.get("performance_gops") else None
    row.setdefault("arithmetic_intensity", None)
    return {field: row.get(field) for field in FIELDS}


def rows_from_record(record: dict[str, Any], source: Path, compiler: dict[str, Any]) -> list[dict[str, Any]]:
    result = record.get("result") or {}
    if record.get("returncode") != 0 or not result.get("valid"):
        return []
    base = _base(record, result, source, compiler)
    rows: list[dict[str, Any]] = []
    benchmark = result.get("benchmark")
    if benchmark == "amx_onednn_gemm":
        verbose_lines = [
            line.lower() for line in record.get("stdout", "").splitlines()
            if line.lower().startswith(("onednn_verbose", "dnnl_verbose"))
        ]
        base["amx_verified"] = any("amx" in line for line in verbose_lines)
        if not base["amx_verified"]:
            return []
    elif benchmark == "amx_peak":
        base["amx_verified"] = True
    if benchmark == "stream_triad":
        timings = [("first", result["first_elapsed_seconds"])] + [
            ("steady", value) for value in result["steady_elapsed_seconds"]
        ]
        modeled_bytes = result["modeled_bytes_per_iteration"]
        operations = result["operations_per_iteration"]
        for index, (phase, elapsed) in enumerate(timings):
            row = dict(base, iteration=index, phase=phase, elapsed_seconds=elapsed,
                       bandwidth_gbs=modeled_bytes/elapsed/1e9, operations=operations,
                       performance_gops=operations/elapsed/1e9,
                       arithmetic_intensity=operations/modeled_bytes)
            rows.append(_finish(row))
    elif benchmark == "roofline_sweep":
        modeled_bytes = result["modeled_bytes_per_iteration"]
        operations = result["operations_per_iteration"]
        for index, elapsed in enumerate(result["measurements"]):
            row = dict(base, iteration=index, elapsed_seconds=elapsed,
                       bandwidth_gbs=modeled_bytes/elapsed/1e9, operations=operations,
                       performance_gops=operations/elapsed/1e9,
                       arithmetic_intensity=result["arithmetic_intensity"])
            rows.append(_finish(row))
    else:
        elapsed = result.get("elapsed_seconds")
        operations = result.get("operations")
        row = dict(base, iteration=record.get("campaign_repetition"), elapsed_seconds=elapsed,
                   operations=operations, performance_gops=result.get("performance_gops"),
                   arithmetic_intensity=None)
        rows.append(_finish(row))
    return rows


def _aggregate_dual(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    groups: dict[tuple[Any, ...], list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        if row["socket_scope"] == "dual_component" and row["pair_id"]:
            key = (row["pair_id"], row["benchmark"], row["kernel"], row["iteration"], row["phase"])
            groups[key].append(row)
    aggregates: list[dict[str, Any]] = []
    for components in groups.values():
        sockets = {row["socket"] for row in components}
        if len(sockets) < 2:
            continue
        row = dict(components[0])
        row.update(socket_scope="dual", socket=None,
                   threads=sum(int(item["threads"]) for item in components),
                   physical_cores=sum(int(item["physical_cores"]) for item in components),
                   cpu_bind=";".join(str(item["cpu_bind"]) for item in components),
                   mem_bind=";".join(str(item["mem_bind"]) for item in components),
                   elapsed_seconds=max(float(item["elapsed_seconds"]) for item in components),
                   operations=sum(float(item["operations"] or 0) for item in components),
                   bandwidth_gbs=sum(float(item["bandwidth_gbs"] or 0) for item in components) or None,
                   performance_gops=sum(float(item["performance_gops"] or 0) for item in components) or None,
                   source_file=";".join(str(item["source_file"]) for item in components))
        row["performance_gflops"] = row["performance_gops"] if row["dtype"] != "int8" else None
        row["performance_tops"] = row["performance_gops"] / 1000 if row["performance_gops"] else None
        aggregates.append(row)
    return aggregates


def _aggregate_concurrent_tiers(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    groups: dict[tuple[Any, ...], list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        if row["socket_scope"] == "concurrent_tier_component" and row["pair_id"]:
            groups[(row["pair_id"], row["iteration"], row["phase"])].append(row)
    output=[]
    for members in groups.values():
        if {row["memory_target"] for row in members} != {"ddr", "hbm"}: continue
        row=dict(members[0]); row.update(socket_scope="concurrent_tiers", memory_target="ddr+hbm",
            threads=sum(int(item["threads"]) for item in members),
            physical_cores=sum(int(item["physical_cores"]) for item in members),
            bandwidth_gbs=sum(float(item["bandwidth_gbs"]) for item in members),
            performance_gops=sum(float(item["performance_gops"]) for item in members),
            elapsed_seconds=max(float(item["elapsed_seconds"]) for item in members),
            source_file=";".join(str(item["source_file"]) for item in members))
        output.append(row)
    return output


def _deduplicate_retries(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    """Keep the latest successful copy of an identical logical measurement."""
    keys = ["hostname", "memory_mode", "socket_scope", "socket", "memory_target",
            "benchmark", "kernel", "dtype", "threads", "working_set_bytes", "iteration",
            "phase", "arithmetic_intensity", "campaign_repetition", "pair_id", "notes"]
    selected: dict[tuple[Any, ...], dict[str, Any]] = {}
    for row in sorted(rows, key=lambda item: str(item.get("timestamp") or "")):
        selected[tuple(row.get(key) for key in keys)] = row
    return list(selected.values())


def _write_csv(path: Path, rows: Iterable[dict[str, Any]], fields: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=fields)
        writer.writeheader(); writer.writerows(rows)


def _summaries(rows: list[dict[str, Any]]) -> tuple[list[dict[str, Any]], list[str]]:
    keys = ["memory_mode", "socket_scope", "socket", "memory_target", "benchmark", "kernel",
            "dtype", "threads", "working_set_bytes", "arithmetic_intensity", "phase", "notes"]
    grouped: dict[tuple[Any, ...], list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        if row["socket_scope"] == "dual_component":
            continue
        grouped[tuple(row[key] for key in keys)].append(row)
    output: list[dict[str, Any]] = []
    for key, members in grouped.items():
        result = dict(zip(keys, key))
        metric = "bandwidth_gbs" if members[0]["benchmark"] == "stream_triad" else "performance_gops"
        values = [float(row[metric]) for row in members if row[metric] not in (None, "")]
        if not values:
            continue
        mean = statistics.fmean(values)
        std = statistics.stdev(values) if len(values) > 1 else 0.0
        result.update(metric=metric, n=len(values), mean=mean, median=statistics.median(values),
                      std=std, min=min(values), max=max(values), cv_percent=100*std/mean if mean else math.nan,
                      excessive_variance=(100*std/mean > 5 if mean else True))
        output.append(result)
    fields = keys + ["metric", "n", "mean", "median", "std", "min", "max", "cv_percent", "excessive_variance"]
    return output, fields


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, action="append", required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--summary-output", type=Path)
    args = parser.parse_args(argv)
    rows: list[dict[str, Any]] = []
    for root in args.input:
        expected_hosts: set[str] = set()
        for topology_path in root.rglob("system/topology.json"):
            try:
                expected_hosts.add(json.loads(topology_path.read_text())["hostname"])
            except (OSError, json.JSONDecodeError, KeyError):
                pass
        metadata_path = root / "system" / "build_metadata.json"
        compiler = json.loads(metadata_path.read_text()) if metadata_path.exists() else {}
        for path in sorted(root.rglob("*.json")):
            if path.name in {"topology.json", "build_metadata.json"}:
                continue
            try:
                record = json.loads(path.read_text(encoding="utf-8"))
            except (OSError, json.JSONDecodeError):
                continue
            if "returncode" in record and expected_hosts and record.get("hostname") not in expected_hosts:
                continue
            # Store portable raw-record provenance, independent of the local checkout path.
            source = Path(root.name) / path.relative_to(root)
            rows.extend(rows_from_record(record, source, compiler))
    rows = _deduplicate_retries(rows)
    rows.extend(_aggregate_dual(rows))
    rows.extend(_aggregate_concurrent_tiers(rows))
    _write_csv(args.output, rows, FIELDS)
    summary, summary_fields = _summaries(rows)
    summary_path = args.summary_output or args.output.with_name("summary.csv")
    _write_csv(summary_path, summary, summary_fields)
    print(f"wrote {len(rows)} measurements to {args.output}")
    print(f"wrote {len(summary)} summary rows to {summary_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
