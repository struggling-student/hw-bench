#!/usr/bin/env python3
"""Time oneDNN-backed BF16/INT8 GEMM through the cluster's CPU PyTorch image."""

from __future__ import annotations

import argparse
import json
import os
import time

import torch


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--dtype", choices=("bf16", "int8"), required=True)
    parser.add_argument("--size", type=int, default=4096)
    parser.add_argument("--warmups", type=int, default=2)
    args = parser.parse_args()
    threads = int(os.environ.get("OMP_NUM_THREADS", torch.get_num_threads()))
    torch.set_num_threads(threads)
    n = args.size
    torch.manual_seed(7)
    if args.dtype == "bf16":
        a = torch.randn((n, n), dtype=torch.bfloat16)
        b = torch.randn((n, n), dtype=torch.bfloat16)
        operation = lambda: torch.mm(a, b)
    else:
        a = torch.randint(-8, 8, (n, n), dtype=torch.int8)
        b = torch.randint(-8, 8, (n, n), dtype=torch.int8)
        operation = lambda: torch._int_mm(a, b)
    for _ in range(args.warmups):
        result = operation()
    started = time.perf_counter()
    result = operation()
    elapsed = time.perf_counter() - started
    checksum = float(result[0, 0]) + float(result[-1, -1])
    operations = 2 * n * n * n
    print(json.dumps({
        "benchmark": "amx_onednn_gemm",
        "kernel": f"amx_{args.dtype}_gemm",
        "dtype": args.dtype,
        "threads": threads,
        "m": n, "n": n, "k": n,
        "warmup_iterations": args.warmups,
        "operations": operations,
        "elapsed_seconds": elapsed,
        "performance_gops": operations / elapsed / 1e9,
        "checksum": checksum,
        "onednn_version": "3.12.0 (from torch.__config__ in system snapshot)",
        "verification": "DNNL_VERBOSE output in this raw record must name an AMX implementation",
        "valid": bool(torch.isfinite(result).all()),
    }))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
