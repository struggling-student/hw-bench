"""Execution-context guards: where, and how, a campaign is allowed to run.

Flat-mode measurements are taken on one dedicated node outside Slurm (a
login-node SSH session that owns the whole machine), Cache-mode measurements
inside an exclusive Slurm allocation on any *other* node.  The two rules are
checked here, before anything is measured, and re-checked around every
recorded process so that a job that lands on the Flat node mid-run is noticed.

Every input that touches the machine (hostname, environment, ``squeue``,
load average, topology) is injectable so the rules can be tested without a
cluster.
"""

from __future__ import annotations

import os
import platform
import subprocess
import time
from collections.abc import Callable, Mapping
from dataclasses import dataclass, field
from typing import Any

#: The only node that is allowed to run Flat-mode campaigns, and the node every
#: Cache-mode Slurm submission must exclude.
FLAT_NODE = "cresco8-hbm14"

LOAD_LIMIT = 1.0

LAUNCH_SSH = "ssh"
LAUNCH_SLURM = "slurm"
LAUNCH_SLURM_EXCLUSIVE = "slurm_exclusive"


class ExecutionError(RuntimeError):
    """The current context is not one in which the requested mode may run."""


def short_host(name: str) -> str:
    """``cresco8-hbm14.portici.enea.it`` -> ``cresco8-hbm14``."""

    return name.split(".", 1)[0]


def flat_node(environ: Mapping[str, str] | None = None) -> str:
    environ = os.environ if environ is None else environ
    return short_host(environ.get("HW_BENCH_FLAT_NODE") or FLAT_NODE)


def squeue_jobs(node: str) -> list[str]:
    """Slurm jobs currently placed on ``node`` (one ``id user state`` line each)."""

    completed = subprocess.run(
        ["squeue", "-h", "-w", node, "-o", "%i %u %T"],
        capture_output=True,
        text=True,
        check=False,
    )
    if completed.returncode != 0:
        raise ExecutionError(
            f"squeue -w {node} failed ({completed.returncode}): {completed.stderr.strip()}"
        )
    return [line.strip() for line in completed.stdout.splitlines() if line.strip()]


def read_loadavg() -> tuple[float, float, float]:
    with open("/proc/loadavg", encoding="ascii") as handle:
        one, five, fifteen = handle.read().split()[:3]
    return float(one), float(five), float(fifteen)


@dataclass
class Context:
    """The facts about the current process that the guards consult."""

    hostname: str = field(default_factory=lambda: short_host(platform.node()))
    environ: Mapping[str, str] = field(default_factory=lambda: dict(os.environ))
    loadavg: Callable[[], tuple[float, float, float]] = read_loadavg
    jobs_on: Callable[[str], list[str]] = squeue_jobs
    clock: Callable[[], float] = time.time

    @property
    def slurm_job_id(self) -> str | None:
        return self.environ.get("SLURM_JOB_ID") or None

    @property
    def flat_node(self) -> str:
        return flat_node(self.environ)

    @property
    def launch_method(self) -> str:
        if not self.slurm_job_id:
            return LAUNCH_SSH
        if self.environ.get("HW_BENCH_EXCLUSIVE") == "1":
            return LAUNCH_SLURM_EXCLUSIVE
        return LAUNCH_SLURM


def snapshot(context: Context, node: str | None = None) -> dict[str, Any]:
    """Load and foreign Slurm jobs on ``node`` at this instant."""

    node = node or context.hostname
    return {
        "timestamp": context.clock(),
        "node": node,
        "loadavg": list(context.loadavg()),
        "foreign_jobs": context.jobs_on(node),
    }


def require_cache(context: Context, topology_mode: str) -> dict[str, Any]:
    """Cache mode: Slurm allocation, never the Flat node, topology says cache."""

    if not context.slurm_job_id:
        raise ExecutionError("Cache campaigns run only inside a Slurm allocation.")
    if context.hostname == context.flat_node:
        raise ExecutionError(
            f"{context.hostname} is the Flat-mode node; Cache campaigns must exclude it."
        )
    if topology_mode != "cache":
        raise ExecutionError(f"Expected cache topology, found {topology_mode}.")
    return {
        "launch_method": context.launch_method,
        "node": context.hostname,
        "slurm_job_id": context.slurm_job_id,
        "memory_mode_verified": True,
    }


def require_flat(context: Context, topology_mode: str) -> dict[str, Any]:
    """Flat mode: the Flat node, outside Slurm, idle, topology says flat."""

    if context.hostname != context.flat_node:
        raise ExecutionError(
            f"Flat campaigns run only on {context.flat_node}, not {context.hostname}."
        )
    if context.slurm_job_id:
        raise ExecutionError(
            "Flat campaigns run outside Slurm (an SSH session on the Flat node)."
        )
    if topology_mode != "flat":
        raise ExecutionError(f"Expected flat topology, found {topology_mode}.")
    before = snapshot(context)
    if before["foreign_jobs"]:
        raise ExecutionError(
            f"Slurm jobs are placed on {context.hostname}: {before['foreign_jobs']}"
        )
    if before["loadavg"][0] >= LOAD_LIMIT:
        raise ExecutionError(
            f"1-minute load {before['loadavg'][0]:.2f} on {context.hostname} is not idle."
        )
    return {
        "launch_method": context.launch_method,
        "node": context.hostname,
        "slurm_job_id": None,
        "memory_mode_verified": True,
        "preflight": before,
    }


def require_context(mode: str, topology_mode: str, context: Context | None = None):
    """Dispatch on ``mode``; returns the provenance stored in ``campaign.json``."""

    context = context or Context()
    if mode == "cache":
        return require_cache(context, topology_mode)
    if mode == "flat":
        return require_flat(context, topology_mode)
    raise ExecutionError(f"Unknown memory mode: {mode}")


def interference(before: Mapping[str, Any], after: Mapping[str, Any]) -> list[str]:
    """Reasons a measurement bracketed by two snapshots must not be trusted."""

    reasons = []
    if before.get("foreign_jobs") or after.get("foreign_jobs"):
        reasons.append("foreign_slurm_job")
    return reasons


class Guard:
    """Brackets one recorded process with before/after snapshots."""

    def __init__(self, context: Context | None = None, check: bool = True):
        self.context = context or Context()
        self.check = check
        self.before: dict[str, Any] | None = None

    def start(self) -> None:
        self.before = snapshot(self.context) if self.check else None

    def finish(self) -> dict[str, Any]:
        """Fields to merge into the record; empty when guarding is disabled."""

        if not self.check or self.before is None:
            return {"launch_method": self.context.launch_method}
        after = snapshot(self.context)
        return {
            "launch_method": self.context.launch_method,
            "node": self.context.hostname,
            "loadavg_before": self.before["loadavg"],
            "loadavg_after": after["loadavg"],
            "foreign_jobs_before": self.before["foreign_jobs"],
            "foreign_jobs_after": after["foreign_jobs"],
            "interference_suspected": bool(interference(self.before, after)),
        }
