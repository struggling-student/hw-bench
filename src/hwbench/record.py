"""Execute one benchmark and preserve raw output plus reproducibility metadata."""

from __future__ import annotations

import argparse
import json
import os
import platform
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def _frequency_khz() -> float | None:
    values: list[int] = []
    for path in Path("/sys/devices/system/cpu").glob("cpu[0-9]*/cpufreq/scaling_cur_freq"):
        try:
            values.append(int(path.read_text().strip()))
        except (OSError, ValueError):
            pass
    return sum(values) / len(values) if values else None


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--memory-mode", required=True)
    parser.add_argument("--memory-target", required=True)
    parser.add_argument("--socket-scope", required=True)
    parser.add_argument("--socket")
    parser.add_argument("--cpu-bind", required=True)
    parser.add_argument("--mem-bind", required=True)
    parser.add_argument("--threads", type=int, required=True)
    parser.add_argument("--working-set-bytes", type=int)
    parser.add_argument("--repetition", type=int)
    parser.add_argument("--pair-id")
    parser.add_argument("--notes", default="")
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args(argv)
    command = args.command[1:] if args.command[:1] == ["--"] else args.command
    if not command:
        parser.error("a command is required after --")
    before = _frequency_khz()
    completed = subprocess.run(command, capture_output=True, text=True, check=False)
    after = _frequency_khz()
    parsed: dict[str, Any] | None = None
    for line in reversed(completed.stdout.splitlines()):
        try:
            candidate = json.loads(line)
        except json.JSONDecodeError:
            continue
        if isinstance(candidate, dict):
            parsed = candidate
            break
    record = {
        "schema_version": "1.0",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "hostname": platform.node(),
        "memory_mode": args.memory_mode,
        "memory_target": args.memory_target,
        "socket_scope": args.socket_scope,
        "socket": int(args.socket) if args.socket is not None else None,
        "cpu_bind": args.cpu_bind,
        "mem_bind": args.mem_bind,
        "threads": args.threads,
        "physical_cores": args.threads,
        "working_set_bytes": args.working_set_bytes,
        "campaign_repetition": args.repetition,
        "pair_id": args.pair_id,
        "notes": args.notes,
        "command": command,
        "environment": {
            key: os.environ.get(key)
            for key in ("OMP_NUM_THREADS", "OMP_PROC_BIND", "OMP_PLACES", "KMP_AFFINITY")
        },
        "cpu_frequency_khz_before": before,
        "cpu_frequency_khz_after": after,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "result": parsed,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    if completed.returncode or parsed is None or not parsed.get("valid", False):
        print(completed.stderr, end="", file=os.sys.stderr)
        return completed.returncode or 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
