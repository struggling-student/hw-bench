#!/usr/bin/env python3
"""Checksum/deadline smoke check of both read variants in a Slurm allocation."""
import json
import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "src"))
from hwbench.topology import discover  # noqa: E402


def main():
    if not os.environ.get("SLURM_JOB_ID"):
        raise RuntimeError("This kernel check must run in a Slurm allocation")
    binary, output = map(Path, sys.argv[1:])
    sock = discover()["sockets"][0]
    records = []
    for threads, size in ((1, 16 * 1024), (1, 1024**2), (1, 17 * 1024**2),
                          (4, 37 * 1024**2), (4, 1024**3)):
        cpus = sock["logical_cpus"][:threads]
        for chunk in (0, 4 * 1024**2):
            env = dict(os.environ, OMP_NUM_THREADS=str(threads), OMP_PROC_BIND="close",
                       OMP_PLACES=",".join("{" + str(c) + "}" for c in cpus))
            command = ["numactl", "--physcpubind=" + ",".join(map(str, cpus)),
                       "--membind=" + ",".join(map(str, sock["ddr_nodes"])), str(binary),
                       "--kind", "read", "--bytes", str(size), "--read-chunk-bytes", str(chunk),
                       "--seconds", ".1", "--repetitions", "3"]
            result = json.loads(subprocess.check_output(command, env=env, text=True))
            assert result["valid"] and len(result["samples"]) == 3
            assert result["read_chunk_bytes"] == chunk
            assert all(s["modeled_bytes"] > 0 for s in result["samples"])
            records.append(result)
    output.write_text(json.dumps(dict(job_id=os.environ["SLURM_JOB_ID"], results=records), indent=2) + "\n")
    print(f"Verified {len(records)} launches: legacy/chunked, cache-sized/DRAM, wraparound and partial final chunks.")


if __name__ == "__main__":
    main()
