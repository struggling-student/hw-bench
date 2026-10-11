"""The context rules, exercised with a fake machine instead of a cluster."""

import pytest

from hwbench.execution import (
    FLAT_NODE,
    Context,
    ExecutionError,
    Guard,
    interference,
    require_cache,
    require_context,
    require_flat,
    short_host,
)


def machine(host, environ=None, load=0.2, jobs=()):
    return Context(
        hostname=host,
        environ=environ or {},
        loadavg=lambda: (load, load, load),
        jobs_on=lambda node: list(jobs),
        clock=lambda: 1.0,
    )


def test_short_host_drops_domain():
    assert short_host("cresco8-hbm14.portici.enea.it") == "cresco8-hbm14"


def test_cache_requires_slurm_other_node_and_cache_topology():
    ok = machine("cresco8-hbm02", {"SLURM_JOB_ID": "7"})
    info = require_cache(ok, "cache")
    assert info["launch_method"] == "slurm"
    assert info["node"] == "cresco8-hbm02" and info["memory_mode_verified"]
    with pytest.raises(ExecutionError, match="Slurm allocation"):
        require_cache(machine("cresco8-hbm02"), "cache")
    with pytest.raises(ExecutionError, match="Flat-mode node"):
        require_cache(machine(FLAT_NODE, {"SLURM_JOB_ID": "7"}), "cache")
    with pytest.raises(ExecutionError, match="cache topology"):
        require_cache(ok, "flat")


def test_exclusive_allocation_is_labelled():
    ctx = machine("cresco8-hbm02", {"SLURM_JOB_ID": "7", "HW_BENCH_EXCLUSIVE": "1"})
    assert require_cache(ctx, "cache")["launch_method"] == "slurm_exclusive"


def test_flat_requires_the_flat_node_outside_slurm_and_idle():
    info = require_flat(machine(FLAT_NODE), "flat")
    assert info["launch_method"] == "ssh" and info["slurm_job_id"] is None
    assert info["preflight"]["foreign_jobs"] == []
    with pytest.raises(ExecutionError, match="only on"):
        require_flat(machine("cresco8-hbm02"), "flat")
    with pytest.raises(ExecutionError, match="outside Slurm"):
        require_flat(machine(FLAT_NODE, {"SLURM_JOB_ID": "7"}), "flat")
    with pytest.raises(ExecutionError, match="flat topology"):
        require_flat(machine(FLAT_NODE), "cache")
    with pytest.raises(ExecutionError, match="Slurm jobs are placed"):
        require_flat(machine(FLAT_NODE, jobs=["9 someone RUNNING"]), "flat")
    with pytest.raises(ExecutionError, match="not idle"):
        require_flat(machine(FLAT_NODE, load=3.0), "flat")


def test_flat_node_can_be_overridden_by_site_environment():
    ctx = machine("cresco8-hbm09", {"HW_BENCH_FLAT_NODE": "cresco8-hbm09.example"})
    assert require_flat(ctx, "flat")["node"] == "cresco8-hbm09"


def test_require_context_dispatches_and_rejects_unknown_modes():
    assert require_context("flat", "flat", machine(FLAT_NODE))["launch_method"] == "ssh"
    with pytest.raises(ExecutionError):
        require_context("hybrid", "flat", machine(FLAT_NODE))


def test_guard_marks_a_job_that_appears_during_the_run():
    seen = [[], ["12 other RUNNING"]]
    ctx = machine(FLAT_NODE)
    ctx.jobs_on = lambda node: seen.pop(0)
    guard = Guard(ctx)
    guard.start()
    fields = guard.finish()
    assert fields["interference_suspected"] is True
    assert fields["foreign_jobs_before"] == [] and fields["foreign_jobs_after"]
    assert fields["launch_method"] == "ssh"


def test_guard_quiet_run_and_disabled_guard():
    guard = Guard(machine(FLAT_NODE))
    guard.start()
    assert guard.finish()["interference_suspected"] is False
    off = Guard(machine("cresco8-hbm02", {"SLURM_JOB_ID": "1"}), check=False)
    off.start()
    assert off.finish() == {"launch_method": "slurm"}


def test_interference_reasons():
    assert interference({"foreign_jobs": []}, {"foreign_jobs": []}) == []
    assert interference({"foreign_jobs": ["x"]}, {}) == ["foreign_slurm_job"]
