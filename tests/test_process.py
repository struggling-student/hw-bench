from pathlib import Path

from hwbench.process import _aggregate_dual, _deduplicate_retries, rows_from_record


def test_stream_rows_preserve_first_and_steady_iterations() -> None:
    record = {
        "returncode": 0,
        "timestamp": "t",
        "hostname": "h",
        "memory_mode": "flat",
        "memory_target": "hbm",
        "socket_scope": "single",
        "socket": 0,
        "threads": 56,
        "physical_cores": 56,
        "cpu_bind": "0-55",
        "mem_bind": "2",
        "result": {
            "valid": True,
            "benchmark": "stream_triad",
            "kernel": "triad",
            "working_set_bytes": 2400,
            "modeled_bytes_per_iteration": 2400,
            "operations_per_iteration": 200,
            "first_elapsed_seconds": 2.0,
            "steady_elapsed_seconds": [1.0, 0.5],
        },
    }
    rows = rows_from_record(record, Path("raw.json"), {})
    assert [row["phase"] for row in rows] == ["first", "steady", "steady"]
    assert rows[-1]["bandwidth_gbs"] == 2400 / 0.5 / 1e9



def record(campaign="one", scope="single", socket=0):
    return dict(
        schema_version="2.0",
        campaign_id=campaign,
        returncode=0,
        timestamp="t",
        hostname="h",
        memory_mode="flat",
        memory_target="hbm",
        socket_scope=scope,
        socket=socket,
        memory_socket=socket,
        threads=56,
        physical_cores=56,
        cpu_bind=str(socket),
        mem_bind=str(socket + 2),
        synchronized=scope == "dual_component",
        pair_id="pair" if scope == "dual_component" else None,
        result=dict(
            valid=True,
            threads=56,
            benchmark="stream_triad",
            kernel="triad",
            dtype="",
            implementation="native_avx512",
            working_set_bytes=2400,
            k=1,
            samples=[
                dict(
                    elapsed_seconds=3,
                    start_ns=0,
                    end_ns=3_000_000_000,
                    planned_start_ns=0,
                    modeled_bytes=300_000_000_000,
                    operations=30_000_000_000,
                )
            ],
        ),
    )


def test_dual_counts_work_over_shared_interval_not_sum_of_rates():
    a = record(scope="dual_component")
    b = record(scope="dual_component", socket=1)
    b["result"]["samples"][0].update(
        elapsed_seconds=2.9, end_ns=2_900_000_000, modeled_bytes=290_000_000_000
    )
    rows = rows_from_record(a, Path("a"), {}) + rows_from_record(b, Path("b"), {})
    aggregate = _aggregate_dual(rows)[0]
    assert aggregate["accepted"]
    assert aggregate["bandwidth_gbs"] == 590 / 3
    assert aggregate["bandwidth_gbs"] != 200
    assert aggregate["total_working_set_bytes"] == 4800


def test_duplicate_or_unsynchronized_pair_is_rejected():
    a = record(scope="dual_component")
    rows = rows_from_record(a, Path("a"), {})
    assert not _aggregate_dual(rows + rows)[0]["accepted"]
    b = record(scope="dual_component", socket=1)
    b["synchronized"] = False
    assert not _aggregate_dual(rows + rows_from_record(b, Path("b"), {}))[0]["accepted"]


def test_independent_campaigns_and_explicit_retries():
    a = rows_from_record(record("one"), Path("one/source"), {})
    b = rows_from_record(record("two"), Path("two/source"), {})
    assert all(r["accepted"] for r in _deduplicate_retries(a + b))
    retry = record("one")
    retry["retry_of"] = "one/source"
    retry["timestamp"] = "z"
    out = _deduplicate_retries(a + b + rows_from_record(retry, Path("one/retry"), {}))
    assert len(out) == 3
    assert not out[0]["accepted"] and out[1]["accepted"] and out[2]["accepted"]


def test_latency_uses_dependent_load_count_and_rejects_invalid_elapsed():
    r = record()
    r["threads"] = r["physical_cores"] = 1
    r["result"].update(benchmark="pointer_chase", threads=1)
    r["result"]["samples"] = [dict(elapsed_seconds=0.1, loads=1_000_000)]
    row = rows_from_record(r, Path("latency"), {})[0]
    assert row["latency_ns"] == 100
    r["result"]["samples"][0]["elapsed_seconds"] = 0
    assert not rows_from_record(r, Path("latency"), {})[0]["accepted"]


def test_amx_requires_execution_evidence_and_actual_worker_count():
    r = record()
    r["result"].update(
        benchmark="amx_onednn_gemm",
        dtype="bf16",
        implementation="onednn_numactl_only_omp_affinity_unset",
    )
    r["stdout"] = "onednn_verbose,info,cpu,isa:Intel AMX"
    assert not rows_from_record(r, Path("gemm"), {})[0]["accepted"]
    r["stdout"] = "onednn_verbose,primitive,exec,cpu,matmul,brg_matmul:amx"
    assert rows_from_record(r, Path("gemm"), {})[0]["accepted"]
    r["result"]["threads"] = 1
    assert not rows_from_record(r, Path("gemm"), {})[0]["accepted"]


def test_process_clock_bounds_catch_bad_native_clock_conversion():
    r = record()
    r["process_start_ns"] = 10
    r["process_end_ns"] = 4_000_000_000
    r["result"]["samples"][0].update(start_ns=30_000_000_000, end_ns=33_000_000_000)
    row = rows_from_record(r, Path("wrong_clock"), {})[0]
    assert not row["accepted"]
    assert "sample_outside_process_clock_window" in row["exclusion_reason"]


def test_compiler_metadata_is_read_from_each_campaign(tmp_path):
    import json

    import pandas as pd

    from hwbench.process import main

    root = tmp_path / "flat"
    for campaign, compiler in [("first", "compiler-a"), ("second", "compiler-b")]:
        system = root / campaign / "system"
        system.mkdir(parents=True)
        (system / "topology.json").write_text(json.dumps({"hostname": "h"}))
        (system / "build_metadata.json").write_text(json.dumps({"compiler": compiler}))
        r = record(campaign)
        (root / campaign / "run.json").write_text(json.dumps(r))
    output = tmp_path / "measurements.csv"
    assert main(["--input", str(root), "--output", str(output)]) == 0
    df = pd.read_csv(output)
    assert dict(zip(df.campaign_id, df.compiler)) == {
        "first": "compiler-a",
        "second": "compiler-b",
    }


def test_rows_carry_requested_duration_and_kernel_source_hash():
    r = record()
    r["command"] = ["numactl", "hardware", "--seconds", "5", "--k", "1"]
    campaign = {"source_sha256": {"benchmarks/hardware.cpp": "abc"}}
    row = rows_from_record(r, Path("raw"), {}, campaign)[0]
    assert row["requested_seconds"] == 5.0
    assert row["source_sha256"] == "abc"
    # A launcher that hashes its own source at run time overrides the campaign record.
    r["result"]["source_sha256"] = "run-time"
    assert rows_from_record(r, Path("raw"), {}, campaign)[0]["source_sha256"] == "run-time"


def test_interference_and_launch_provenance_flow_into_rows():
    r = record()
    r["hostname"] = "cresco8-hbm14.example.org"
    r["launch_method"] = "ssh"
    row = rows_from_record(r, Path("raw"), {}, {"topology_mode": "flat"})[0]
    assert row["accepted"]
    assert (row["launch_method"], row["node"]) == ("ssh", "cresco8-hbm14")
    assert row["memory_mode_verified"] is True
    r["interference_suspected"] = True
    noisy = rows_from_record(r, Path("raw"), {}, {"topology_mode": "cache"})[0]
    assert "interference_suspected" in noisy["exclusion_reason"]
    assert not noisy["accepted"] and noisy["memory_mode_verified"] is False


def test_campaigns_without_launch_field_are_labelled_by_their_slurm_job():
    r = record()
    assert rows_from_record(r, Path("raw"), {}, {"slurm_job_id": "5"})[0][
        "launch_method"
    ] == "slurm_exclusive"
    assert rows_from_record(r, Path("raw"), {}, None)[0]["launch_method"] is None
