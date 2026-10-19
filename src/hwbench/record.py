"""Execute one benchmark and preserve raw output plus reproducibility metadata."""

from __future__ import annotations

import argparse
import gzip
import json
import os
import platform
import subprocess
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from hwbench.execution import Guard
from hwbench.uncore import Session


def _frequency_khz() -> float | None:
    values: list[int] = []
    for path in Path("/sys/devices/system/cpu").glob(
        "cpu[0-9]*/cpufreq/scaling_cur_freq"
    ):
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
    parser.add_argument("--memory-socket", type=int)
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
    guard = Guard(check=os.environ.get("HWBENCH_GUARD") == "1")
    guard.start()
    # Privileged system-wide uncore counters (hwbench.uncore): only the first participant
    # of a synchronized group owns the session; its windows are the group's windows.
    event_set = os.environ.get("HWBENCH_UNCORE") or ""
    session = None
    environment = os.environ.copy()
    if event_set and os.environ.get("HWBENCH_PARTICIPANT", "0") == "0":
        session = Session(event_set, args.output.with_suffix(".perf.csv"))
        session.start()
        environment.update(session.environment())
    before = _frequency_khz()
    started_ns = time.monotonic_ns()
    try:
        completed = subprocess.run(command, capture_output=True, text=True, check=False, env=environment)
    finally:
        finished_ns = time.monotonic_ns()
        uncore = None
        if session:
            uncore = session.result(session.stop())
            # Keep perf's own output as evidence, compressed (minutes of idle intervals).
            raw = session.log
            if raw.exists():
                compressed = raw.with_name(raw.name + ".gz")
                compressed.write_bytes(gzip.compress(raw.read_bytes(), mtime=0))
                raw.unlink()
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
        "schema_version": "2.0",
        "campaign_id": os.environ.get("HWBENCH_CAMPAIGN_ID"),
        "memory_socket": args.memory_socket,
        "synchronized": bool(os.environ.get("HWBENCH_SYNC_DIR")),
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "process_start_ns": started_ns,
        "process_end_ns": finished_ns,
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
            for key in (
                "OMP_NUM_THREADS",
                "OMP_PROC_BIND",
                "OMP_PLACES",
                "KMP_AFFINITY",
                "HWBENCH_SYNC_DIR",
                "HWBENCH_PARTICIPANT",
                "HWBENCH_PARTICIPANTS",
            )
        },
        "cpu_frequency_khz_before": before,
        "cpu_frequency_khz_after": after,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "result": parsed,
        "uncore": uncore,
        **guard.finish(),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    if completed.returncode or parsed is None or not parsed.get("valid", False):
        print(completed.stderr, end="", file=os.sys.stderr)
        return completed.returncode or 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
