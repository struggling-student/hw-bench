#!/usr/bin/env python3
"""Hardware measurement campaign.

Flat mode runs on the dedicated Flat node outside Slurm; Cache mode runs inside
an exclusive Slurm allocation on any other node.  ``hwbench.execution`` enforces
that before anything is measured.  Each invocation executes one ``--only`` part,
so a failed part is re-run on its own as a new campaign directory.

Parts
-----
isa          peak throughput per ISA path (AMX INT8/BF16, VNNI, AVX-512 BF16/FP32/FP64)
bandwidth2   read-only and non-temporal-store bandwidth, scaling, locality, capacity
hierarchy    read bandwidth and idle latency against working-set size
gemm         BF16 (and verified INT8) GEMM M-sweep with weights streamed from memory
span         one process over both sockets: interleaved vs first-touch placement
xcheck       repeat of earlier reference points to bound run-to-run variance
gemmvalid    (flat) GEMM validity: pool-size convergence, tiny-shape call overhead,
             prepacked BF16 weights, extra warm-up passes
cachefill    (cache) Cache-mode bandwidth at more working sets, latency beyond the HBM cache
remotehbm    (flat) remote-HBM repeat: 5 s windows, thread sweep, local controls
chains       (flat) AVX-512 BF16 accumulator-chain sweep (6, 12, 24)
sweep12      (flat) FP64 intensity sweep with 12 chains up to K=1024, with 8-chain control
repeat       the headline numbers once, for independent launches (run it three times)
smoke        a few seconds of every kernel; proves build and counters, not a result

memory, compute, sweep, memory-sweep, concurrency, all
             the October-11 thesis parts, kept so those campaigns remain reproducible
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "src"))
from hwbench.execution import (  # noqa: E402
    Context,
    ExecutionError,
    require_context,
    snapshot,
)
from hwbench.topology import discover  # noqa: E402

LEGACY_PARTS = ["memory", "compute", "sweep", "memory-sweep", "concurrency", "all"]
NEW_PARTS = [
    "isa",
    "bandwidth2",
    "hierarchy",
    "gemm",
    "span",
    "xcheck",
    "smoke",
    "gemmvalid",
    "cachefill",
    "remotehbm",
    "chains",
    "sweep12",
    "repeat",
]

THREAD_STEPS = [1, 2, 4, 8, 14, 28, 56]
ISA_THREAD_STEPS = [1, 2, 4, 8, 14, 28, 55, 56]
ISA_KINDS = ["int8", "vnni", "avx512bf16"]
ISA_REFERENCE_KINDS = ["fp32", "fp64", "bf16"]
KIB, MIB, GIB = 2**10, 2**20, 2**30

# Llama-3.1-8B projection shapes (N x K of the weight) plus a square reference.
GEMM_SHAPES = [(4096, 4096), (14336, 4096), (4096, 14336), (6144, 6144)]
GEMM_M_FLAT = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]
GEMM_M_CACHE = [1, 4, 16, 64, 256, 1024, 4096]
# Spilled pool (96 GiB): initialising it dominates, so fewer batch sizes are taken.
GEMM_M_SPILL = [1, 16, 256, 4096]
LLC_BYTES_PER_SOCKET = 112_500_000 + 2**20  # 112.5 MiB L3; rounded up
# On-chip capacity that can hold weights: 112.5 MiB L3 (non-inclusive) + 56 x 2 MiB L2.
ONCHIP_BYTES = int(112.5 * MIB) + 56 * 2 * MIB
POOL_MULTIPLES = [4, 16, 64]  # of ONCHIP_BYTES
GEMM_WARM_PASSES = 2
REMOTE_THREADS = [1, 4, 14, 28, 56]
CACHEFILL_GIB = [24, 32, 40, 48, 56]
CACHEFILL_TRIAD_GIB = [24, 40, 56]  # Triad already has 16, 32, 48, 64, 96, 128
LATENCY_FAR_GIB = [16, 32, 64, 96, 128]
SWEEP_K = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]


def per_thread_sizes(low, high):
    sizes, size = [], low
    while size <= high:
        sizes.append(size)
        size *= 2
    return sizes


def synthetic_topology(mode):
    """Two sockets x 56 cores with one DDR and one HBM node each: enough to list a plan."""

    return {
        "memory_mode": mode,
        "sockets": [
            {
                "socket": i,
                "physical_cores": 56,
                "logical_cpus": list(range(56 * i, 56 * (i + 1))),
                "ddr_nodes": [i],
                "hbm_nodes": [2 + i] if mode == "flat" else [],
            }
            for i in (0, 1)
        ],
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("mode", choices=["flat", "cache"])
    parser.add_argument("output", type=Path)
    parser.add_argument("--container", type=Path)
    parser.add_argument("--only", choices=LEGACY_PARTS + NEW_PARTS, default="all")
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="list the records the part would take, touching neither the node nor the output",
    )
    args = parser.parse_args()
    dry = args.dry_run
    if not dry and args.container is None:
        parser.error("--container is required unless --dry-run")
    if dry:
        topology, provenance = synthetic_topology(args.mode), {}
    else:
        topology = discover()
        try:
            provenance = require_context(args.mode, topology["memory_mode"], Context())
        except ExecutionError as error:
            raise SystemExit(f"Refusing to run: {error}") from error
    plan = []
    sockets = topology["sockets"]
    if len(sockets) != 2 or any(
        s["physical_cores"] != len(s["logical_cpus"]) for s in sockets
    ):
        raise SystemExit(
            "Campaign requires two sockets and one logical CPU per physical core."
        )
    system = args.output / "system"
    if not dry:
        args.output.mkdir(parents=True, exist_ok=True)
        system.mkdir(exist_ok=True)
        (system / "topology.json").write_text(
            json.dumps(topology, indent=2, sort_keys=True) + "\n"
        )
    campaign = {
        "schema_version": "2.0",
        "campaign_id": args.output.name,
        "selection_role": os.environ.get("HW_BENCH_SELECTION_ROLE", "extended"),
        "slurm_job_id": provenance.get("slurm_job_id"),
        "launch_method": provenance.get("launch_method"),
        "node": provenance.get("node"),
        "memory_mode_verified": provenance.get("memory_mode_verified"),
        "preflight": provenance.get("preflight"),
        "seconds_per_sample": 1.0,
        "repetitions": 5,
        "campaign_part": args.only,
        "resumes": os.environ.get("HW_BENCH_RESUME") or None,
        "source_sha256": {
            str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
            for base in ["benchmarks", "src", "scripts", "slurm", "configs"]
            for p in (ROOT / base).rglob("*")
            if p.is_file() and "__pycache__" not in p.parts and p.suffix != ".env"
        },
    }
    if not dry:
        (system / "campaign.json").write_text(
            json.dumps(campaign, indent=2, sort_keys=True) + "\n"
        )
        subprocess.run(
            ["bash", str(ROOT / "scripts/collect_system_info.sh"), args.mode, str(system)],
            check=True,
        )
        with (system / "build.log").open("w") as log:
            subprocess.run(
                ["bash", str(ROOT / "scripts/build_benchmarks.sh")],
                stdout=log,
                stderr=subprocess.STDOUT,
                check=True,
                env=dict(os.environ, HW_BENCH_BUILD_DIR=str(args.output / "build")),
            )
        for name in ["build_metadata.json", "hardware.asm"]:
            (system / name).write_bytes((args.output / "build" / name).read_bytes())
    binary = args.output / "build/hardware"
    guard = "1" if args.mode == "flat" else "0"

    def spec(
        socket,
        kind,
        threads=None,
        target="registers",
        memory_socket=None,
        gib=0,
        shape=0,
        scope="single",
        label="",
        k=1,
        **extra,
    ):
        s = sockets[socket]
        t = threads or s["physical_cores"]
        ms = sockets[socket if memory_socket is None else memory_socket]
        cpus = s["logical_cpus"][:t]
        tier = "hbm" if target == "hbm" else "ddr"
        mem = ms[tier + "_nodes"][0]
        return dict(
            socket=socket,
            kind=kind,
            threads=t,
            target=target,
            memory_socket=ms["socket"],
            cpus=cpus,
            mem=mem,
            policy="membind",
            gib=gib,
            shape=shape,
            scope=scope,
            label=label,
            k=k,
            **extra,
        )

    def spanning(kind, target, policy, label, **extra):
        """One process over every core of both sockets."""

        tier = "hbm" if target == "hbm" else "ddr"
        nodes = [sockets[i][tier + "_nodes"][0] for i in (0, 1)]
        cpus = sockets[0]["logical_cpus"] + sockets[1]["logical_cpus"]
        return dict(
            socket=None,
            kind=kind,
            threads=len(cpus),
            target=target,
            memory_socket=None,
            cpus=cpus,
            mem=",".join(map(str, nodes)),
            policy=policy,
            gib=0,
            shape=0,
            scope="span",
            label=label,
            k=extra.pop("k", 1),
            **extra,
        )

    def record_name(s):
        parts = [
            s["label"],
            s["scope"],
            f"s{'x' if s['socket'] is None else s['socket']}",
            s["kind"],
            s["target"],
            f"m{'x' if s['memory_socket'] is None else s['memory_socket']}",
            f"t{s['threads']}",
            f"g{s['gib']}",
            f"n{s['shape']}",
            f"k{s['k']}",
        ]
        if s.get("bytes"):
            parts.append(f"b{s['bytes']}")
        if s["policy"] != "membind":
            parts.append(f"p{s['policy']}")
        if s.get("m"):
            parts.append(f"M{s['m']}")
        if s.get("gemm_n"):
            parts.append(f"N{s['gemm_n']}")
        if s.get("dtype"):
            parts.append(s["dtype"])
        if s.get("pool"):
            parts.append(f"pool{s['pool']}")
        if s.get("layout"):
            parts.append(s["layout"])
        if s.get("chains"):
            parts.append(f"c{s['chains']}")
        return "-".join(parts)

    resumed = (
        args.output.parent / os.environ["HW_BENCH_RESUME"]
        if os.environ.get("HW_BENCH_RESUME")
        else None
    )

    def already_measured(name):
        """A valid record of the interrupted campaign this one resumes."""

        if resumed is None:
            return False
        path = resumed / "records" / f"{name}.json"
        if not path.exists():
            return False
        old = json.loads(path.read_text())
        return old.get("returncode") == 0 and (old.get("result") or {}).get("valid")

    def execute(s, group=None, participant=0, count=1):
        name = record_name(s)
        if dry:
            plan.append((name, float(s.get("seconds", 5 if group else 1)), s))
            return
        if already_measured(name):
            return
        dest = args.output / "records" / f"{name}.json"
        if dest.exists():
            old = json.loads(dest.read_text())
            if old.get("returncode") == 0 and (old.get("result") or {}).get("valid"):
                return
            raise RuntimeError(
                f"Existing failed record must be retained in another campaign: {dest}"
            )
        env = os.environ.copy()
        env.update(
            PYTHONPATH=str(ROOT / "src"),
            OMP_NUM_THREADS=str(s["threads"]),
            OMP_PROC_BIND="close",
            OMP_PLACES="cores",
            HWBENCH_CAMPAIGN_ID=args.output.name,
            HWBENCH_GUARD=guard,
        )
        if group:
            env.update(
                HWBENCH_SYNC_DIR=str(args.output / "sync" / group),
                HWBENCH_PARTICIPANT=str(participant),
                HWBENCH_PARTICIPANTS=str(count),
            )
        cpu_list = ",".join(map(str, s["cpus"]))
        command = [
            "numactl",
            f"--physcpubind={cpu_list}",
            f"--{'interleave' if s['policy'] == 'interleave' else 'membind'}={s['mem']}",
        ]
        seconds = str(s.get("seconds", 5 if group else 1))
        if s["kind"] == "gemm":
            command += [
                "env",
                "-u",
                "OMP_PROC_BIND",
                "-u",
                "OMP_PLACES",
                "apptainer",
                "exec",
                "--bind",
                f"{ROOT}:{ROOT}:ro",
                "--bind",
                f"{args.output}:{args.output}:rw",
                str(args.container),
                "python3",
            ]
            if s.get("m"):
                command += [
                    str(ROOT / "benchmarks/gemm/torch_gemm.py"),
                    "--dtype",
                    s["dtype"],
                    "--m",
                    str(s["m"]),
                    "--n",
                    str(s["gemm_n"]),
                    "--k",
                    str(s["shape"]),
                    "--pool-bytes",
                    str(s["pool"]),
                ]
                if s.get("layout"):
                    command += ["--layout", s["layout"]]
                if s.get("warm"):
                    command += ["--warm-passes", str(s["warm"])]
            else:
                command += [
                    str(ROOT / "benchmarks/amx/torch_amx.py"),
                    "--dtype",
                    "bf16",
                    "--size",
                    str(s["shape"]),
                ]
            command += ["--seconds", seconds, "--repetitions", "5"]
        else:
            command += [
                str(binary),
                "--kind",
                s["kind"],
                "--seconds",
                seconds,
                "--repetitions",
                "5",
                "--k",
                str(s["k"]),
            ]
            size = s.get("bytes") or (int(s["gib"] * GIB) if s["gib"] else 0)
            if size:
                command += ["--bytes", str(size)]
            if s.get("chains"):
                command += ["--chains", str(s["chains"])]
            command += s.get("flags", [])
        argv = [
            "python3",
            "-m",
            "hwbench.record",
            "--output",
            str(dest),
            "--memory-mode",
            args.mode,
            "--memory-target",
            s["target"],
            "--socket-scope",
            s["scope"],
            "--cpu-bind",
            cpu_list,
            "--mem-bind",
            str(s["mem"]),
            "--threads",
            str(s["threads"]),
            "--notes",
            s["label"],
        ]
        if s["socket"] is not None:
            argv += ["--socket", str(s["socket"])]
        if s["memory_socket"] is not None:
            argv += ["--memory-socket", str(s["memory_socket"])]
        if s.get("bytes") or s["gib"]:
            argv += [
                "--working-set-bytes",
                str(s.get("bytes") or int(s["gib"] * GIB)),
            ]
        if group:
            argv += ["--pair-id", group]
        print(name, flush=True)
        subprocess.run(argv + ["--"] + command, env=env, check=True)

    def pair(specs, name):
        existing = [
            (args.output / "records" / f"{record_name(item)}.json").exists()
            for item in specs
        ]
        if any(existing) and not all(existing):
            raise RuntimeError(
                "Partial concurrent pair exists; retain it and submit a new campaign."
            )
        # Never mix partial prior pair measurements with newly timed participants.
        with ThreadPoolExecutor(max_workers=len(specs)) as pool:
            futures = [
                pool.submit(execute, s, name, i, len(specs))
                for i, s in enumerate(specs)
            ]
            for future in futures:
                future.result()

    targets = ["ddr", "hbm"] if args.mode == "flat" else ["effective_cache"]
    both = [0, 1]
    part = args.only

    def int8_gemm_verified():
        """Probe once per campaign whether an INT8 oneDNN path runs on AMX."""

        if dry:
            return True
        path = system / "gemm_int8.json"
        if not path.exists():
            socket0 = sockets[0]
            probe = subprocess.run(
                [
                    "numactl",
                    f"--physcpubind={','.join(map(str, socket0['logical_cpus']))}",
                    f"--membind={socket0['ddr_nodes'][0]}",
                    "env",
                    "-u",
                    "OMP_PROC_BIND",
                    "-u",
                    "OMP_PLACES",
                    f"OMP_NUM_THREADS={socket0['physical_cores']}",
                    "apptainer",
                    "exec",
                    "--bind",
                    f"{ROOT}:{ROOT}:ro",
                    str(args.container),
                    "python3",
                    str(ROOT / "benchmarks/gemm/torch_gemm.py"),
                    "--probe-int8",
                ],
                capture_output=True,
                text=True,
            )
            try:
                result = json.loads(probe.stdout.strip().splitlines()[-1])
            except (IndexError, json.JSONDecodeError):
                result = {"accepted": False, "stderr": probe.stderr[-2000:]}
            path.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
        return bool(json.loads(path.read_text())["accepted"])

    # ------------------------------------------------------------------ smoke
    if part == "smoke":
        for kind in ISA_KINDS + ISA_REFERENCE_KINDS:
            execute(dict(spec(0, kind, 4, label="smoke"), seconds=0.3))
        for target in targets:
            for kind in ["triad", "triad_nt", "read"]:
                execute(
                    dict(
                        spec(0, kind, 8, target, bytes=256 * MIB, label="smoke"),
                        seconds=0.3,
                    )
                )
            execute(
                dict(
                    spec(
                        0,
                        "read",
                        1,
                        target,
                        bytes=64 * KIB,
                        label="smoke_hier",
                        flags=["--per-thread"],
                    ),
                    seconds=0.3,
                )
            )
            execute(
                dict(
                    spec(0, "latency", 1, target, bytes=8 * MIB, label="smoke"),
                    seconds=0.3,
                )
            )
        execute(
            dict(
                spanning("read", targets[0], "interleave", "smoke", bytes=512 * MIB),
                seconds=0.3,
            )
        )
        pair(
            [
                dict(
                    spec(s, "int8", 8, scope="dual_component", label="smoke"),
                    seconds=0.3,
                )
                for s in both
            ],
            "smoke-dual",
        )
        execute(
            dict(
                spec(
                    0,
                    "gemm",
                    target=targets[0],
                    shape=1024,
                    label="smoke",
                    m=64,
                    gemm_n=1024,
                    dtype="bf16",
                    pool=64 * MIB,
                ),
                seconds=0.3,
            )
        )
        if int8_gemm_verified():
            execute(
                dict(
                    spec(
                        0,
                        "gemm",
                        target=targets[0],
                        shape=1024,
                        label="smoke",
                        m=64,
                        gemm_n=1024,
                        dtype="int8",
                        pool=64 * MIB,
                    ),
                    seconds=0.3,
                )
            )
        # The step-6 code paths: accumulator chains, and prepacked BF16 weights.
        execute(dict(spec(0, "avx512bf16", 4, label="smoke_chains", chains=6), seconds=0.3))
        execute(
            dict(
                spec(0, "sweep", target=targets[0], bytes=256 * MIB, k=16, label="smoke_sweep12", chains=12),
                seconds=0.3,
            )
        )
        execute(
            dict(
                spec(
                    0,
                    "gemm",
                    target=targets[0],
                    shape=1024,
                    label="smoke_prepacked",
                    m=64,
                    gemm_n=1024,
                    dtype="bf16",
                    pool=64 * MIB,
                    layout="prepacked",
                    warm=1,
                ),
                seconds=0.3,
            )
        )

    # -------------------------------------------------------------------- isa
    if part == "isa":
        for socket in both:
            for kind in ISA_KINDS:
                for t in ISA_THREAD_STEPS:
                    execute(spec(socket, kind, t, label="isa_scaling"))
            # Reference kinds are already measured in October without counters;
            # rerun the points that matter with them (all cores and 55).
            for kind in ISA_REFERENCE_KINDS:
                for t in (55, 56):
                    execute(spec(socket, kind, t, label="isa_scaling"))
        for kind in ISA_KINDS + ISA_REFERENCE_KINDS:
            pair(
                [spec(s, kind, scope="dual_component", label="isa_dual") for s in both],
                f"isa-dual-{kind}",
            )

    # ------------------------------------------------------------- bandwidth2
    if part == "bandwidth2":
        for kind in ["read", "triad_nt"]:
            label = f"bw2_{kind}"
            if args.mode == "flat":
                for socket in both:
                    for target in targets:
                        for ms in both:
                            execute(
                                spec(
                                    socket,
                                    kind,
                                    target=target,
                                    memory_socket=ms,
                                    gib=8,
                                    label=label + ("" if ms == socket else "_remote"),
                                )
                            )
            else:
                for socket in both:
                    for gib in [8, 16, 64, 96, 128]:
                        execute(
                            spec(
                                socket,
                                kind,
                                target="effective_cache",
                                gib=gib,
                                label=label + "_capacity",
                            )
                        )
            for target in targets:
                pair(
                    [
                        spec(
                            s,
                            kind,
                            target=target,
                            gib=8 if args.mode == "flat" else 96,
                            scope="dual_component",
                            label=label + "_dual",
                        )
                        for s in both
                    ],
                    f"bw2-dual-{kind}-{target}",
                )
        for socket in both:
            for target in targets:
                for t in THREAD_STEPS:
                    execute(
                        spec(socket, "read", t, target, gib=8, label="bw2_read_scaling")
                    )

    # -------------------------------------------------------------- hierarchy
    if part == "hierarchy":
        one_core = per_thread_sizes(16 * KIB, 4 * GIB)
        all_cores = per_thread_sizes(16 * KIB, 256 * MIB)
        for target in targets:
            for size in one_core:
                execute(
                    spec(
                        0,
                        "read",
                        1,
                        target,
                        bytes=size,
                        label="hier_read_1",
                        flags=["--per-thread"],
                    )
                )
                execute(spec(0, "latency", 1, target, bytes=size, label="hier_latency"))
            for size in all_cores:
                execute(
                    spec(
                        0,
                        "read",
                        56,
                        target,
                        bytes=size,
                        label="hier_read_56",
                        flags=["--per-thread"],
                    )
                )

    # ------------------------------------------------------------------- gemm

    if part == "gemm":
        gemm_targets = (
            [("ddr", None), ("hbm", None)]
            if args.mode == "flat"
            else [("effective_cache", 16 * GIB), ("effective_cache", 96 * GIB)]
        )
        for target, forced_pool in gemm_targets:
            for dtype in ["bf16", "int8"]:
                if dtype == "int8" and not int8_gemm_verified():
                    print("INT8 GEMM: no oneDNN AMX path verified; skipping.")
                    continue
                for n, k in GEMM_SHAPES:
                    weight_bytes = n * k * (2 if dtype == "bf16" else 1)
                    pool = forced_pool or max(
                        2 * weight_bytes, 4 * LLC_BYTES_PER_SOCKET
                    )
                    sweep = (
                        GEMM_M_FLAT
                        if args.mode == "flat"
                        else GEMM_M_SPILL
                        if forced_pool and forced_pool > 64 * GIB
                        else GEMM_M_CACHE
                    )
                    for m in sweep:
                        execute(
                            spec(
                                0,
                                "gemm",
                                target=target,
                                shape=k,
                                label="gemm_sweep",
                                m=m,
                                gemm_n=n,
                                dtype=dtype,
                                pool=pool,
                            )
                        )

    # ------------------------------------------------------------------- span
    if part == "span":
        for target in targets:
            for policy, label in [
                ("interleave", "span_interleave"),
                ("membind", "span_firsttouch"),
            ]:
                execute(spanning("triad", target, policy, label, bytes=16 * GIB))
                execute(spanning("read", target, policy, label, bytes=16 * GIB))
                for k in (1, 16, 256):
                    execute(
                        spanning(
                            "sweep",
                            target,
                            policy,
                            label + "_intensity",
                            bytes=16 * GIB,
                            k=k,
                        )
                    )
        for kind in ISA_KINDS + ISA_REFERENCE_KINDS:
            execute(spanning(kind, "registers", "membind", "span_compute"))
        if args.mode == "cache":
            # Dual-socket bandwidth with data resident in the HBM cache; the
            # bandwidth2 pairs used 96 GiB, which spills to DDR.
            for kind in ["read", "triad_nt"]:
                pair(
                    [
                        spec(
                            s,
                            kind,
                            target="effective_cache",
                            gib=16,
                            scope="dual_component",
                            label=f"bw2_{kind}_dual",
                        )
                        for s in both
                    ],
                    f"bw2-dual-resident-{kind}",
                )

    # ----------------------------------------------------------------- xcheck
    if part == "xcheck":
        for socket in both:
            for target in targets:
                execute(spec(socket, "triad", target=target, gib=8, label="xcheck"))
            for kind in ["fp64", "fp32", "bf16"]:
                execute(spec(socket, kind, label="xcheck"))

    # -------------------------------------------------------------- gemmvalid
    # Does the GEMM bandwidth converge as the weight pool grows past what the chip
    # can hold?  How large is the fixed cost of one call?  Does repacking BF16 weights
    # inside every call explain the BF16/INT8 gap?  Flat only (SSH, node hbm14).
    if part == "gemmvalid":
        if args.mode != "flat":
            raise SystemExit("gemmvalid is a Flat-mode part")
        warm = GEMM_WARM_PASSES

        def gemm(target, dtype, n, k, m, pool, label, layout=None):
            execute(
                spec(
                    0,
                    "gemm",
                    target=target,
                    shape=k,
                    label=label,
                    m=m,
                    gemm_n=n,
                    dtype=dtype,
                    pool=int(pool),
                    layout=layout,
                    warm=warm,
                )
            )

        for target in targets:
            # 1. pool convergence: 4x, 16x and 64x the on-chip capacity.
            for n, k in [(14336, 4096), (4096, 4096)]:
                for dtype in ["bf16", "int8"]:
                    if dtype == "int8" and not int8_gemm_verified():
                        continue
                    for mult in POOL_MULTIPLES:
                        for m in [1, 16, 256]:
                            gemm(target, dtype, n, k, m, mult * ONCHIP_BYTES, "gemm_pool")
            # 2. fixed cost of one call: tiny weights that stay in L2 (two copies)
            #    and, for the 1024 shape, a pool that streams from memory.
            for n, k, pools in [
                (256, 256, [("hot", 2 * 256 * 256 * 2)]),
                (1024, 1024, [("hot", 2 * 1024 * 1024 * 2), ("stream", 4 * ONCHIP_BYTES)]),
            ]:
                for dtype in ["bf16", "int8"]:
                    if dtype == "int8" and not int8_gemm_verified():
                        continue
                    for _name, pool in pools:
                        for m in [1, 16]:
                            gemm(target, dtype, n, k, m, pool, "gemm_overhead")
            # 3. BF16 with the weights prepacked once, as INT8 always is.
            for n, k in [(14336, 4096), (4096, 4096)]:
                for m in [1, 16, 256]:
                    gemm(target, "bf16", n, k, m, 4 * ONCHIP_BYTES, "gemm_prepacked", "prepacked")

    # -------------------------------------------------------------- cachefill
    if part == "cachefill":
        if args.mode != "cache":
            raise SystemExit("cachefill is a Cache-mode part")
        # Same labels as bandwidth2 / the October capacity sweep, so the new working
        # sets join the existing Cache-mode curve once the campaign is listed.
        for socket in both:
            for gib in CACHEFILL_GIB:
                for kind, label in [("read", "bw2_read_capacity"), ("triad_nt", "bw2_triad_nt_capacity")]:
                    execute(spec(socket, kind, target="effective_cache", gib=gib, label=label))
            for gib in CACHEFILL_TRIAD_GIB:
                execute(spec(socket, "triad", target="effective_cache", gib=gib, label="bw2_triad_capacity"))
        # Idle latency beyond the HBM cache: one core chases a random cycle that is
        # far larger than the cache.  Initialising the cycle takes minutes at 128 GiB.
        for gib in LATENCY_FAR_GIB:
            execute(spec(0, "latency", 1, "effective_cache", gib=gib, label="hier_latency_far"))

    # -------------------------------------------------------------- remotehbm
    if part == "remotehbm":
        if args.mode != "flat":
            raise SystemExit("remotehbm is a Flat-mode part")
        # 5 s windows, local control beside every remote point, DDR remote for contrast.
        for socket in both:
            for target, kind in [("hbm", "read"), ("ddr", "read"), ("hbm", "triad_nt")]:
                for t in REMOTE_THREADS:
                    for ms, label in [(socket, "remote_repeat_local"), (1 - socket, "remote_repeat")]:
                        execute(
                            dict(
                                spec(socket, kind, t, target, memory_socket=ms, gib=8, label=label),
                                seconds=5,
                            )
                        )

    # ----------------------------------------------------------------- chains
    if part == "chains":
        if args.mode != "flat":
            raise SystemExit("chains is a Flat-mode part")
        for t in (1, 56):
            for c in (6, 12, 24):
                execute(spec(0, "avx512bf16", t, label=f"chains_bf16_c{c}", chains=c))

    # ----------------------------------------------------------------- sweep12
    if part == "sweep12":
        if args.mode != "flat":
            raise SystemExit("sweep12 is a Flat-mode part")
        for target in targets:
            for k in SWEEP_K:
                execute(spec(0, "sweep", target=target, gib=8, k=k, label="sweep_c12", chains=12))
            # The October kernel (8 chains), extended to the same K for a like-for-like control.
            for k in (512, 1024):
                execute(spec(0, "sweep", target=target, gib=8, k=k, label="sweep_c8", chains=8))

    # ----------------------------------------------------------------- repeat
    if part == "repeat":
        # The headline numbers once.  Run this part as three separate launches
        # (three campaigns) to get an independent between-run spread.
        for target in targets:
            for kind in ["read", "triad"]:
                execute(spec(0, kind, target=target, gib=8, label="repeat"))
        for kind in ["fp64", "fp32", "bf16", "int8", "vnni", "avx512bf16"]:
            execute(spec(0, kind, label="repeat"))

    # ------------------------------------------------- October-11 thesis parts
    if part == "concurrency":
        for socket in [0, 1]:
            for target in targets:
                execute(
                    dict(
                        spec(
                            socket, "triad", target=target, gib=8, label="core_scaling"
                        ),
                        seconds=5,
                    )
                )
            for kind in ["fp32", "fp64", "bf16", "gemm"]:
                execute(
                    dict(
                        spec(
                            socket,
                            kind,
                            shape=6144 if kind == "gemm" else 0,
                            label="compute_scaling",
                        ),
                        seconds=5,
                    )
                )
        for target in targets:
            pair(
                [
                    dict(
                        spec(
                            s,
                            "triad",
                            target=target,
                            gib=8,
                            scope="dual_component",
                            label="dual",
                        ),
                        seconds=5,
                    )
                    for s in [0, 1]
                ],
                "dual-" + target,
            )
        for kind in ["fp32", "fp64", "bf16", "gemm"]:
            pair(
                [
                    dict(
                        spec(
                            s,
                            kind,
                            shape=6144 if kind == "gemm" else 0,
                            scope="dual_component",
                            label="dual",
                        ),
                        seconds=5,
                    )
                    for s in [0, 1]
                ],
                "dual-" + kind,
            )
        if args.mode == "flat":
            for socket in [0, 1]:
                d = dict(
                    spec(
                        socket,
                        "triad",
                        threads=28,
                        target="ddr",
                        gib=8,
                        scope="concurrent_tier_component",
                        label="split",
                    ),
                    seconds=5,
                )
                h = dict(
                    spec(
                        socket,
                        "triad",
                        threads=28,
                        target="hbm",
                        gib=8,
                        scope="concurrent_tier_component",
                        label="split",
                    ),
                    seconds=5,
                )
                h["cpus"] = sockets[socket]["logical_cpus"][28:56]
                execute(dict(d, scope="single", label="split_control"))
                execute(dict(h, scope="single", label="split_control"))
                pair([d, h], "tiers-s" + str(socket))
    if part in ["memory", "memory-sweep", "all"]:
        for socket in [0, 1]:
            for target in targets:
                for t in [1, 2, 4, 8, 14, 28, 56]:
                    execute(
                        spec(socket, "triad", t, target, gib=8, label="core_scaling")
                    )
            if args.mode == "cache":
                for gib in [16, 32, 48, 64, 96, 128]:
                    execute(
                        spec(
                            socket,
                            "triad",
                            target="effective_cache",
                            gib=gib,
                            label="capacity",
                        )
                    )
            for target in targets:
                for ms in [socket, 1 - socket]:
                    if args.mode == "flat" and ms != socket:
                        execute(
                            spec(
                                socket,
                                "triad",
                                target=target,
                                memory_socket=ms,
                                gib=8,
                                label="locality",
                            )
                        )
                    execute(
                        spec(
                            socket,
                            "latency",
                            threads=1,
                            target=target,
                            memory_socket=ms,
                            gib=1,
                            label="idle_latency",
                        )
                    )
        for target in targets:
            pair(
                [
                    spec(
                        s,
                        "triad",
                        target=target,
                        gib=8,
                        scope="dual_component",
                        label="dual",
                    )
                    for s in [0, 1]
                ],
                "dual-" + target,
            )
        if args.mode == "flat":
            for socket in [0, 1]:
                d = spec(
                    socket,
                    "triad",
                    threads=28,
                    target="ddr",
                    gib=8,
                    scope="concurrent_tier_component",
                    label="split",
                )
                h = spec(
                    socket,
                    "triad",
                    threads=28,
                    target="hbm",
                    gib=8,
                    scope="concurrent_tier_component",
                    label="split",
                )
                h["cpus"] = sockets[socket]["logical_cpus"][28:56]
                execute(dict(d, scope="single", label="split_control"))
                execute(dict(h, scope="single", label="split_control"))
                pair([d, h], "tiers-s" + str(socket))
    if part in ["compute", "all"]:
        for socket in [0, 1]:
            for kind in ["fp32", "fp64", "bf16", "gemm"]:
                for t in [1, 2, 4, 8, 14, 28, 56]:
                    execute(
                        spec(
                            socket,
                            kind,
                            t,
                            shape=6144 if kind == "gemm" else 0,
                            label="compute_scaling",
                        )
                    )
            for shape in [4096, 8192]:
                execute(spec(socket, "gemm", shape=shape, label="shape"))
        for kind in ["fp32", "fp64", "bf16", "gemm"]:
            pair(
                [
                    spec(
                        s,
                        kind,
                        scope="dual_component",
                        shape=6144 if kind == "gemm" else 0,
                        label="dual",
                    )
                    for s in [0, 1]
                ],
                "dual-" + kind,
            )
    if part in ["sweep", "memory-sweep", "all"]:
        # Refreshed matched sweeps avoid combining ceilings across pre/post-maintenance nodes.
        cases = (
            [(target, 8) for target in targets]
            if args.mode == "flat"
            else [("effective_cache", 16), ("effective_cache", 96)]
        )
        for target, gib in cases:
            for k in [1, 2, 4, 8, 16, 32, 64, 128, 256]:
                execute(
                    spec(0, "sweep", target=target, gib=gib, k=k, label="intensity")
                )

    if dry:
        names = [n for n, _, _ in plan]
        assert len(names) == len(set(names)), "duplicate record names in the plan"
        measured = sum(5 * sec for _, sec, _ in plan)
        print(f"{args.mode} {part}: {len(plan)} records, {measured / 60:.1f} min of timed windows (initialisation not included)")
        for name, sec, _ in plan:
            print(f"  {sec:g}s  {name}")
        return

    # The post-check closes the exposure window: record what else ran meanwhile.
    try:
        campaign["postflight"] = snapshot(Context())
    except ExecutionError as error:
        campaign["postflight"] = {"error": str(error)}
    (system / "campaign.json").write_text(
        json.dumps(campaign, indent=2, sort_keys=True) + "\n"
    )
    (args.output / "COMPLETED").write_text(
        "All requested measurements completed successfully.\n"
    )


if __name__ == "__main__":
    main()
