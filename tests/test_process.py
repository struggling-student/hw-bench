from pathlib import Path

from hwbench.process import rows_from_record


def test_stream_rows_preserve_first_and_steady_iterations() -> None:
    record = {
        "returncode": 0, "timestamp": "t", "hostname": "h", "memory_mode": "flat",
        "memory_target": "hbm", "socket_scope": "single", "socket": 0,
        "threads": 56, "physical_cores": 56, "cpu_bind": "0-55", "mem_bind": "2",
        "result": {"valid": True, "benchmark": "stream_triad", "kernel": "triad",
                   "working_set_bytes": 2400, "modeled_bytes_per_iteration": 2400,
                   "operations_per_iteration": 200, "first_elapsed_seconds": 2.0,
                   "steady_elapsed_seconds": [1.0, 0.5]},
    }
    rows = rows_from_record(record, Path("raw.json"), {})
    assert [row["phase"] for row in rows] == ["first", "steady", "steady"]
    assert rows[-1]["bandwidth_gbs"] == 2400 / 0.5 / 1e9
