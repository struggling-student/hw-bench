#!/usr/bin/env python3
"""Run the explicit placement study inside an exclusive Slurm allocation only."""
from __future__ import annotations

import argparse
import gzip
import hashlib
import json
import os
import platform
import re
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "src"))
from hwbench import bandwidth_search as study  # noqa: E402
from hwbench import uncore  # noqa: E402
from hwbench.topology import discover  # noqa: E402


def write(path, obj):
    tmp = path.with_suffix(".tmp")
    tmp.write_text(json.dumps(obj, indent=2) + "\n")
    tmp.replace(path)


def run_case(case, launch, args):
    name = f"{case['name']}_r{launch}"
    dest = args.output / "records" / (name + ".json")
    if dest.exists():
        raise RuntimeError(f"Refusing to overwrite {dest}")
    sync = args.output / "sync" / name
    if sync.exists():
        raise RuntimeError("Stale synchronization files; use a fresh campaign")
    session = uncore.Session("base", dest.with_suffix(".perf.csv")) if args.counters else None
    processes = []
    record = dict(schema_version=1, case=case, launch=launch, results=[])
    try:
        if session:
            session.start()
        for i, member in enumerate(case["members"]):
            env = dict(os.environ, OMP_NUM_THREADS=str(len(member["cpus"])),
                       OMP_DYNAMIC="FALSE", OMP_PROC_BIND="close",
                       OMP_PLACES=",".join("{" + str(c) + "}" for c in member["cpus"]),
                       HWBENCH_SYNC_DIR=str(sync), HWBENCH_PARTICIPANT=str(i),
                       HWBENCH_PARTICIPANTS=str(len(case["members"])))
            # Inherited perf controls from an unrelated run must never be used.
            env.pop("HWBENCH_PERF_CTL", None)
            env.pop("HWBENCH_PERF_ACK", None)
            if session and i == 0:
                env.update(session.environment())
            command = ["numactl", "--physcpubind=" + ",".join(map(str, member["cpus"])),
                       "--" + member["policy"] + "=" + ",".join(map(str, member["nodes"])),
                       str(args.binary), "--kind", "read", "--bytes", str(member["bytes"]),
                       "--read-chunk-bytes", str(case.get("read_chunk_bytes", 4 * 2**20)),
                       "--seconds", str(args.seconds), "--repetitions", "6"]
            processes.append(subprocess.Popen(command, env=env, stdout=subprocess.PIPE,
                                              stderr=subprocess.PIPE, text=True))
        deadline = time.monotonic() + 240
        ready = [sync / f"rep0-ready{i}" for i in range(len(processes))]
        while not all(path.exists() for path in ready):
            if any(proc.poll() is not None for proc in processes) or time.monotonic() > deadline:
                raise RuntimeError("Participant exited or timed out before the first shared window")
            time.sleep(.02)
        record["resident_pages"] = []
        for proc in processes:
            pages = {}
            for line in Path(f"/proc/{proc.pid}/numa_maps").read_text().splitlines():
                if " anon=" not in line:
                    continue
                for node, count in re.findall(r"\bN(\d+)=(\d+)", line):
                    pages[node] = pages.get(node, 0) + int(count)
            record["resident_pages"].append(pages)
        for proc in processes:
            stdout, stderr = proc.communicate(timeout=240 + 6 * args.seconds)
            if proc.returncode:
                raise RuntimeError(f"Participant failed ({proc.returncode}): {stderr[-2000:]}")
            result = json.loads(stdout)
            record["results"].append(result)
        if session:
            text = session.stop()
            record["uncore"] = session.result(text)
            with gzip.open(dest.with_suffix(".perf.csv.gz"), "wt") as f:
                f.write(text)
            session.log.unlink()
        # Retain rejected records with their reason; never silently rerun them.
        try:
            record["summary"] = study.summarize_record(record)
        except ValueError as exc:
            record["rejected"] = str(exc)
        write(dest, record)
    except BaseException as exc:
        for proc in processes:
            if proc.poll() is None:
                proc.kill()
            proc.communicate()
        if session:
            session.stop()
        record["error"] = str(exc)
        write(dest, record)
        raise


def main():
    p = argparse.ArgumentParser(__doc__)
    p.add_argument("--output", required=True, type=Path)
    p.add_argument("--binary", required=True, type=Path)
    p.add_argument("--launches", type=int, default=3)
    p.add_argument("--seconds", type=float, default=2)
    p.add_argument("--counters", action="store_true")
    args = p.parse_args()
    if not os.environ.get("SLURM_JOB_ID") or os.environ.get("HW_BENCH_EXCLUSIVE") != "1":
        p.error("Run only through the exclusive Slurm study template")
    if args.launches < 3 or args.seconds < 2:
        p.error("Need >=3 launches and >=2-second windows")
    if (args.output / "campaign.json").exists():
        p.error("Use a fresh output directory; existing campaign is immutable")
    topology = discover()
    cases = study.matrix(topology)
    required = {c for s in topology["sockets"] for c in s["logical_cpus"]}
    if not required <= os.sched_getaffinity(0):
        p.error("Allocation does not expose all physical CPUs")
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "records").mkdir(exist_ok=True)
    write(args.output / "topology.json", topology)
    write(args.output / "campaign.json", dict(
        schema_version=1, launch_method="slurm_exclusive", job_id=os.environ["SLURM_JOB_ID"],
        node=platform.node(), launches=args.launches, seconds=args.seconds,
        discarded_windows=1, steady_windows=5, counters=args.counters, matrix=cases,
        source_sha256=hashlib.sha256((ROOT / "benchmarks/hardware.cpp").read_bytes()).hexdigest(),
        runner_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        minimum_overlap=.95))
    for launch in range(1, args.launches + 1):
        # Rotate and reverse to reduce drift/order bias between independent launches.
        shift = (launch - 1) * len(cases) // args.launches
        order = cases[shift:] + cases[:shift]
        if launch % 2 == 0:
            order = list(reversed(order))
        for case in order:
            print(f"launch {launch}/{args.launches}: {case['name']}", flush=True)
            run_case(case, launch, args)
    (args.output / "COMPLETED").touch()


if __name__ == "__main__":
    main()
