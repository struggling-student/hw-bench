#!/usr/bin/env python3
"""Verified oneDNN GEMM at representative projection shapes, with weights streamed from memory.

One process measures one (M, N, K) point.  Weights are a *pool* of identical
N x K matrices at distinct addresses, sized well beyond the last-level cache and
visited round-robin, so each call reads its weights from memory to model repeated
streaming access.  ``y = x @ W^T`` with x of shape M x K, as in ``nn.Linear``.

Modeled traffic per call is the weight matrix + activations in + result out;
operations are 2*M*N*K.  The two together place the point on a roofline.

BF16 can be run with plain weights (``--layout plain``, what ``nn.Linear`` does: oneDNN
repacks the weights inside every call) or with weights prepacked once into oneDNN's
blocked layout (``--layout prepacked``), which is what INT8 always uses.  The prepacked
path is only reported if it ran and passed the same correctness check.

INT8 is only measured when a probe shows that a oneDNN matmul with an ``amx``
implementation really executes it (``--probe-int8``); otherwise it is reported as
unavailable instead of being timed on a slow fallback.
"""

from __future__ import annotations

import argparse
import contextlib
import ctypes
import hashlib
import json
import os
import struct
import sys
import tempfile
import time
from pathlib import Path


class Perf:
    """Process-wide hardware counters, inherited by every thread created afterwards.

    Opened before torch starts its OpenMP team, so the team's threads are counted too.
    User mode only (exclude kernel and hypervisor), which paranoid=2 allows.  The
    events match benchmarks/hardware.cpp: cycles, instructions, reference cycles and the
    DRAM read and write traffic in 64-byte lines (offcore-response events, validated by
    benchmarks/probe_counters.cpp).  An event that cannot be opened is simply absent.
    """

    EVENTS = {
        "cycles": (0, 0, 0),
        "instructions": (0, 1, 0),
        "ref_cycles": (0, 9, 0),
        "dram_read_lines": (4, 0x012A, 0x73C000477),
        "dram_write_lines": (4, 0x012B, 0xFBFF80822),
    }

    def __init__(self):
        self.fds = {}
        try:
            libc = ctypes.CDLL(None, use_errno=True)
        except OSError:
            return

        class Attr(ctypes.Structure):
            _fields_ = [
                ("type", ctypes.c_uint32), ("size", ctypes.c_uint32),
                ("config", ctypes.c_uint64), ("sample_period", ctypes.c_uint64),
                ("sample_type", ctypes.c_uint64), ("read_format", ctypes.c_uint64),
                ("flags", ctypes.c_uint64), ("wakeup_events", ctypes.c_uint32),
                ("bp_type", ctypes.c_uint32), ("config1", ctypes.c_uint64),
                ("config2", ctypes.c_uint64),
            ]

        for name, (kind, config, config1) in self.EVENTS.items():
            attr = Attr(type=kind, size=ctypes.sizeof(Attr), config=config, config1=config1)
            attr.read_format = 3  # total time enabled | total time running
            attr.flags = (1 << 1) | (1 << 5) | (1 << 6)  # inherit, exclude kernel, exclude hv
            fd = libc.syscall(298, ctypes.byref(attr), 0, -1, -1, 0)
            if fd >= 0:
                self.fds[name] = fd

    def read(self):
        values = {}
        for name, fd in self.fds.items():
            raw = os.read(fd, 24)
            count, enabled, running = struct.unpack("QQQ", raw)
            if running:
                values[name] = count * enabled / running
        return values


PERF = Perf()  # before torch creates its threads

import torch  # noqa: E402

ELEMENT_BYTES = {"bf16": 2, "int8": 1}
OUTPUT_BYTES = {"bf16": 2, "int8": 4}


def window(rep):
    directory = os.environ.get("HWBENCH_SYNC_DIR")
    if not directory:
        return time.monotonic_ns()
    root = Path(tempfile.gettempdir()) / (
        "hwbench-sync-" + hashlib.sha256(directory.encode()).hexdigest()[:24]
    )
    root.mkdir(parents=True, exist_ok=True)
    participant = int(os.environ["HWBENCH_PARTICIPANT"])
    count = int(os.environ["HWBENCH_PARTICIPANTS"])
    prefix = f"rep{rep}"
    (root / f"{prefix}-ready{participant}").write_text("1")
    startfile = root / f"{prefix}-start"
    timeout = time.monotonic() + 120
    if participant == 0:
        while not all((root / f"{prefix}-ready{i}").exists() for i in range(count)):
            if time.monotonic() > timeout:
                raise RuntimeError("participant readiness timeout")
            time.sleep(0.002)
        tmp = root / f"{prefix}-tmp"
        tmp.write_text(str(time.monotonic_ns() + 250_000_000))
        tmp.replace(startfile)
    while not startfile.exists():
        if time.monotonic() > timeout:
            raise RuntimeError("shared window timeout")
        time.sleep(0.002)
    start = int(startfile.read_text())
    while time.monotonic_ns() < start:
        time.sleep(0.00002)
    return start


@contextlib.contextmanager
def captured_output():
    """Capture what native code writes to file descriptors 1 and 2."""

    libc = ctypes.CDLL(None)
    saved = {fd: os.dup(fd) for fd in (1, 2)}
    sink = tempfile.TemporaryFile(mode="w+b")
    sys.stdout.flush()
    sys.stderr.flush()
    for fd in saved:
        os.dup2(sink.fileno(), fd)
    text = {"value": ""}
    try:
        yield text
    finally:
        libc.fflush(None)
        sys.stdout.flush()
        sys.stderr.flush()
        for fd, original in saved.items():
            os.dup2(original, fd)
            os.close(original)
        sink.seek(0)
        text["value"] = sink.read().decode(errors="replace")
        sink.close()


def amx_execution_lines(text):
    return [
        line
        for line in text.splitlines()
        if ",exec," in line.lower()
        and "matmul" in line.lower()
        and "amx" in line.lower()
    ]


def probe_int8():
    """Which INT8 matmul paths exist, and does any run on AMX through oneDNN?"""

    torch.manual_seed(7)
    report = {
        "torch": torch.__version__,
        "onednn_quantized_ops": sorted(
            name
            for name in dir(torch.ops.onednn)
            if any(tag in name.lower() for tag in ("q", "int8", "scaled"))
        )
        if hasattr(torch.ops, "onednn")
        else [],
        "candidates": [],
        "accepted": False,
    }
    a = torch.randint(-3, 4, (256, 1024), dtype=torch.int8)
    b = torch.randint(-3, 4, (1024, 512), dtype=torch.int8)
    reference = a.float() @ b.float()
    candidate = {"name": "torch._int_mm", "accepted": False}
    try:
        with torch.backends.mkldnn.verbose(torch.backends.mkldnn.VERBOSE_ON):
            with captured_output() as output:
                result = torch._int_mm(a, b)
        text = output["value"]
        lines = amx_execution_lines(text)
        candidate.update(
            dtype=str(result.dtype),
            correct=bool(torch.equal(result.float(), reference)),
            amx_lines=lines[:3],
            verbose_head=text.splitlines()[:5],
        )
        candidate["accepted"] = bool(lines) and candidate["correct"]
    except Exception as error:  # noqa: BLE001 - the probe must report, not fail
        candidate["error"] = f"{type(error).__name__}: {error}"
    report["candidates"].append(candidate)
    report["candidates"].append(probe_qlinear())
    accepted = [c for c in report["candidates"] if c["accepted"]]
    report["accepted"] = bool(accepted)
    report["path"] = accepted[0]["name"] if accepted else None
    return report


def qlinear_variants(w_q, m):
    """Ways of preparing/calling oneDNN's quantized linear; the first that runs wins."""

    n, k = w_q.shape
    scale = torch.ones(n, dtype=torch.float32)
    zero = torch.zeros(n, dtype=torch.int32)

    def call(packed):
        def run(x_q):
            return torch.ops.onednn.qlinear_pointwise(
                x_q,
                1.0,
                0,
                packed,
                scale,
                zero,
                None,
                1.0,
                0,
                torch.float32,
                "none",
                [],
                "",
            )

        return run

    yield (
        "prepack(weight, x_shape)",
        lambda: call(torch.ops.onednn.qlinear_prepack(w_q, [m, k])),
    )
    yield (
        "prepack(weight.t(), x_shape)",
        lambda: call(torch.ops.onednn.qlinear_prepack(w_q.t().contiguous(), [m, k])),
    )
    yield (
        "prepack(weight, None)",
        lambda: call(torch.ops.onednn.qlinear_prepack(w_q, None)),
    )


def prepare_qlinear(w_q, m):
    """Return (name, run) for the first variant whose call succeeds."""

    errors = []
    probe_x = torch.randint(0, 4, (m, w_q.shape[1]), dtype=torch.uint8)
    for name, make in qlinear_variants(w_q, m):
        try:
            run = make()
            run(probe_x)
            return name, run, errors
        except Exception as error:  # noqa: BLE001
            errors.append(f"{name}: {type(error).__name__}: {str(error)[:160]}")
    return None, None, errors


def probe_qlinear():
    candidate = {"name": "onednn.qlinear_pointwise", "accepted": False}
    try:
        w_q = torch.randint(-3, 4, (512, 1024), dtype=torch.int8)
        x_q = torch.randint(0, 4, (256, 1024), dtype=torch.uint8)
        reference = x_q.float() @ w_q.float().t()
        with torch.backends.mkldnn.verbose(torch.backends.mkldnn.VERBOSE_ON):
            with captured_output() as output:
                variant, run, errors = prepare_qlinear(w_q, 256)
                result = run(x_q) if run else None
        candidate["variant"] = variant
        candidate["errors"] = errors
        text = output["value"]
        lines = [
            line
            for line in text.splitlines()
            if ",exec," in line.lower() and "amx" in line.lower()
        ]
        candidate.update(amx_lines=lines[:3], verbose_head=text.splitlines()[:5])
        if result is not None:
            candidate["correct"] = bool(torch.equal(result.float(), reference))
            candidate["accepted"] = bool(lines) and candidate["correct"]
    except Exception as error:  # noqa: BLE001
        candidate["error"] = f"{type(error).__name__}: {error}"
    return candidate


def prepare_bf16_prepacked(w, m):
    """Return (name, run, errors) for the first prepacked BF16 linear that runs.

    These are the entry points torch's inductor uses to prepack a Linear weight for
    oneDNN; they are tried in order and the first that executes wins.
    """

    errors = []
    probe_x = torch.randn((m, w.shape[1]), dtype=torch.float32).to(torch.bfloat16)

    def reorder_linear():
        packed = torch.ops.mkldnn._reorder_linear_weight(w, m)

        def run(x):
            return torch.ops.mkldnn._linear_pointwise(x, packed, None, "none", [], "")

        return run

    def mkldnn_tensor():
        packed = w.to_mkldnn()

        def run(x):
            return torch.ops.mkldnn._linear_pointwise(x, packed, None, "none", [], "")

        return run

    for name, make in (
        ("mkldnn._reorder_linear_weight", reorder_linear),
        ("weight.to_mkldnn()", mkldnn_tensor),
    ):
        try:
            run = make()
            run(probe_x)
            return name, run, errors
        except Exception as error:  # noqa: BLE001
            errors.append(f"{name}: {type(error).__name__}: {str(error)[:160]}")
    return None, None, errors


def build_pool(dtype, n, k, pool_bytes):
    weight_bytes = n * k * ELEMENT_BYTES[dtype]
    copies = max(2, -(-pool_bytes // weight_bytes))
    if dtype == "bf16":
        base = torch.randn((n, k), dtype=torch.float32).to(torch.bfloat16)
    else:
        base = torch.randint(-3, 4, (n, k), dtype=torch.int8)
    pool = []
    for _ in range(copies):
        w = torch.empty((n, k), dtype=base.dtype)
        w.copy_(base)
        pool.append(w)
    return pool, weight_bytes


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--dtype", choices=sorted(ELEMENT_BYTES))
    p.add_argument("--m", type=int)
    p.add_argument("--n", type=int)
    p.add_argument("--k", type=int)
    p.add_argument("--pool-bytes", type=int, default=1 << 30)
    p.add_argument("--seconds", type=float, default=1)
    p.add_argument("--repetitions", type=int, default=5)
    p.add_argument("--warmups", type=int, default=3)
    p.add_argument("--layout", choices=["plain", "prepacked"], default="plain")
    p.add_argument(
        "--warm-passes",
        type=int,
        default=0,
        help="full passes over the weight pool before timing, so every copy is resident",
    )
    p.add_argument("--probe-int8", action="store_true")
    args = p.parse_args()
    threads = int(os.environ["OMP_NUM_THREADS"])
    torch.set_num_threads(threads)
    if args.probe_int8:
        print(json.dumps(probe_int8()))
        return 0
    if not (args.dtype and args.m and args.n and args.k):
        p.error("--dtype, --m, --n and --k are required")
    if args.seconds <= 0 or args.repetitions < 1:
        raise ValueError("invalid measurement dimensions")
    torch.manual_seed(7)
    m, n, k, dtype = args.m, args.n, args.k, args.dtype
    pool, weight_bytes = build_pool(dtype, n, k, args.pool_bytes)
    x = (
        torch.randn((m, k), dtype=torch.float32).to(torch.bfloat16)
        if dtype == "bf16"
        else torch.randint(-3, 4, (m, k), dtype=torch.int8)
    )

    int8_runs = None
    if dtype == "int8":
        report = probe_int8()
        if not report["accepted"]:
            print(json.dumps(dict(valid=False, error="no verified INT8 AMX path")))
            return 3
        if report["path"] == "torch._int_mm":
            int8_runs = [
                (lambda w: lambda a, w=w: torch._int_mm(a, w.t()))(w) for w in pool
            ]
        else:
            x = torch.randint(0, 4, (m, k), dtype=torch.uint8)
            int8_runs = []
            for w in pool:
                _, run, _ = prepare_qlinear(w, m)
                int8_runs.append(run)

    bf16_runs = None
    layout = "prepacked" if dtype == "int8" else args.layout
    layout_variant = None
    if dtype == "bf16" and args.layout == "prepacked":
        bf16_runs, errors = [], []
        for w in pool:
            name, run, errors = prepare_bf16_prepacked(w, m)
            if run is None:
                print(json.dumps(dict(valid=False, error="no prepacked BF16 path", errors=errors)))
                return 3
            layout_variant = name
            bf16_runs.append(run)

    def multiply(w, index=0):
        if dtype == "bf16":
            if bf16_runs is not None:
                return bf16_runs[index](x)
            return torch.nn.functional.linear(x, w)
        return int8_runs[index](x)

    # Only the verification warm-up prints primitive execution evidence.
    with torch.backends.mkldnn.verbose(torch.backends.mkldnn.VERBOSE_ON):
        result = multiply(pool[0], 0)
    for i in range(args.warmups):
        result = multiply(pool[i % len(pool)], i % len(pool))
    for _ in range(args.warm_passes):
        for i in range(len(pool)):
            result = multiply(pool[i], i)
    call_bytes = (
        weight_bytes + m * k * ELEMENT_BYTES[dtype] + m * n * OUTPUT_BYTES[dtype]
    )
    samples = []
    cursor = 0
    for rep in range(args.repetitions):
        planned = window(rep)
        deadline = planned + int(args.seconds * 1e9)
        before = PERF.read()
        start = time.monotonic_ns()
        count = 0
        while True:
            result = multiply(pool[cursor], cursor)
            cursor = (cursor + 1) % len(pool)
            count += 1
            if time.monotonic_ns() >= deadline:
                break
        end = time.monotonic_ns()
        after = PERF.read()
        sample = dict(
            start_ns=start,
            end_ns=end,
            planned_start_ns=planned,
            elapsed_seconds=(end - start) / 1e9,
            operations=2 * m * n * k * count,
            modeled_bytes=call_bytes * count,
        )
        counted = {name: after[name] - before[name] for name in after if name in before}
        if "cycles" in counted:
            sample.update(counted, counter_threads=torch.get_num_threads())
        samples.append(sample)
    valid = True
    if dtype == "bf16":
        valid = bool(torch.isfinite(result).all())
        for i, j in [(0, 0), (m - 1, n - 1), (0, n - 1), (m // 2, n // 2)]:
            expected = float(torch.dot(x[i].float(), pool[0][j].float()))
            observed = float(result[i, j])
            valid &= abs(observed - expected) <= max(0.5, 0.02 * abs(expected))
    else:
        for i, j in [(0, 0), (m - 1, n - 1), (0, n - 1), (m // 2, n // 2)]:
            expected = int(torch.dot(x[i].int(), pool[0][j].int()))
            valid &= int(round(float(result[i, j]))) == expected
    print(
        json.dumps(
            dict(
                benchmark="onednn_gemm_sweep",
                kernel="gemm",
                dtype=dtype,
                implementation="onednn_rotating_weight_pool",
                threads=torch.get_num_threads(),
                m=m,
                n=n,
                k=k,
                working_set_bytes=weight_bytes * len(pool),
                weight_bytes=weight_bytes,
                pool_copies=len(pool),
                layout=layout,
                layout_variant=layout_variant,
                warm_passes=args.warm_passes,
                torch_version=torch.__version__,
                samples=samples,
                valid=valid,
                checksum=float(result[0, 0]) + float(result[-1, -1]),
                source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            )
        )
    )
    return 0 if valid else 1


if __name__ == "__main__":
    raise SystemExit(main())
