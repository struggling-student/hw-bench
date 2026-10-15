import json

import pandas as pd

from hwbench.extended import (
    campaign_context_errors,
    check_extended,
    peak_violations,
    select_earlier,
    select_extended,
)
from hwbench.theory import Theory


def make_campaign(root, mode, name, node, method, memory_mode=None, foreign=(), complete=True):
    system = root / mode / name / "system"
    system.mkdir(parents=True)
    (system / "campaign.json").write_text(
        json.dumps(
            dict(
                node=node,
                launch_method=method,
                memory_mode_verified=True,
                preflight={"foreign_jobs": []},
                postflight={"foreign_jobs": list(foreign)},
            )
        )
    )
    (system / "topology.json").write_text(
        json.dumps(dict(hostname=node + ".example", memory_mode=memory_mode or mode))
    )
    if complete:
        (root / mode / name / "COMPLETED").write_text("ok")


def test_flat_must_be_ssh_on_the_dedicated_node_without_foreign_jobs(tmp_path):
    make_campaign(tmp_path, "flat", "good", "cresco8-hbm14", "ssh")
    make_campaign(tmp_path, "flat", "legacy", "cresco8-hbm14", "slurm_exclusive")
    make_campaign(tmp_path, "flat", "elsewhere", "cresco8-hbm02", "ssh")
    make_campaign(tmp_path, "flat", "queued", "cresco8-hbm14", "slurm")
    make_campaign(tmp_path, "flat", "noisy", "cresco8-hbm14", "ssh", foreign=["9 u RUNNING"])
    make_campaign(tmp_path, "flat", "partial", "cresco8-hbm14", "ssh", complete=False)
    raw = [tmp_path / "flat"]
    ok = lambda c: campaign_context_errors("flat", c, raw)  # noqa: E731
    assert ok("good") == [] and ok("legacy") == []
    assert any("dedicated node" in e for e in ok("elsewhere"))
    assert any("launch method" in e for e in ok("queued"))
    assert any("Foreign Slurm job" in e for e in ok("noisy"))
    assert any("not complete" in e for e in ok("partial"))
    assert any("Missing raw" in e for e in ok("absent"))


def test_cache_must_use_slurm_on_another_node_with_cache_topology(tmp_path):
    make_campaign(tmp_path, "cache", "good", "cresco8-hbm01", "slurm_exclusive")
    make_campaign(tmp_path, "cache", "on_flat_node", "cresco8-hbm14", "slurm")
    make_campaign(tmp_path, "cache", "ssh", "cresco8-hbm01", "ssh")
    make_campaign(tmp_path, "cache", "wrong_mode", "cresco8-hbm01", "slurm", memory_mode="flat")
    raw = [tmp_path / "cache"]
    check = lambda c: campaign_context_errors("cache", c, raw)  # noqa: E731
    assert check("good") == []
    assert any("Flat node" in e for e in check("on_flat_node"))
    assert any("launch method" in e for e in check("ssh"))
    assert any("Topology mode" in e for e in check("wrong_mode"))


def row(**kw):
    base = dict(
        campaign_id="x",
        memory_mode="flat",
        socket_scope="single",
        socket=0,
        memory_socket=0,
        memory_target="registers",
        benchmark="amx_peak",
        kernel="bf16",
        dtype="bf16",
        m=None,
        n=None,
        k=1,
        threads=56,
        working_set_bytes=0,
        notes="isa",
        phase="steady",
        accepted=True,
        exclusion_reason=None,
        performance_gops=100_000.0,
        bandwidth_gbs=None,
        ghz_effective=1.96,
        overlap_fraction=None,
    )
    return {**base, **kw}


def test_result_above_peak_at_measured_clock_is_an_error():
    theory = Theory.load()
    fine = pd.DataFrame([row()])
    assert peak_violations(fine, theory) == []
    impossible = pd.DataFrame([row(performance_gops=130_000.0)])
    assert "exceeds the peak" in peak_violations(impossible, theory)[0]


def test_selection_and_sample_count_checks(tmp_path):
    make_campaign(tmp_path, "flat", "x", "cresco8-hbm14", "ssh")
    policy = {"extended_campaigns": {"flat": ["x"]}, "minimum_samples": 5}
    rows = [row(iteration=i, performance_gops=100_000.0 + i) for i in range(4)]
    rows.append(row(campaign_id="other"))
    df = pd.DataFrame(rows)
    assert set(select_extended(df, policy).campaign_id) == {"x"}
    errors, _ = check_extended(df, policy, [tmp_path / "flat"])
    assert any("Fewer than 5 samples" in e for e in errors)
    df = pd.DataFrame([row(performance_gops=100_000.0 + i) for i in range(5)])
    errors, warnings = check_extended(df, policy, [tmp_path / "flat"])
    assert errors == []


def test_interrupted_campaign_is_accepted_only_when_a_completed_one_resumes_it(tmp_path):
    make_campaign(tmp_path, "cache", "first", "cresco8-hbm01", "slurm", complete=False)
    make_campaign(tmp_path, "cache", "second", "cresco8-hbm01", "slurm")
    policy = {"extended_campaigns": {"cache": ["first", "second"]}}
    raw = [tmp_path / "cache"]
    errors, _ = check_extended(pd.DataFrame([row(campaign_id="x")]), policy, raw)
    assert any("not complete: first" in e for e in errors)
    meta = tmp_path / "cache/second/system/campaign.json"
    data = json.loads(meta.read_text())
    meta.write_text(json.dumps({**data, "resumes": "first"}))
    errors, _ = check_extended(pd.DataFrame([row(campaign_id="x")]), policy, raw)
    assert not any("not complete" in e for e in errors)


def test_earlier_kernel_campaigns_are_selected_apart_and_never_pooled(tmp_path):
    make_campaign(tmp_path, "flat", "old", "cresco8-hbm14", "ssh")
    make_campaign(tmp_path, "flat", "new", "cresco8-hbm14", "ssh")
    policy = {"extended_campaigns": {"flat": ["new"]}, "earlier_kernel_campaigns": {"flat": ["old"]}}
    df = pd.DataFrame([row(campaign_id="old"), row(campaign_id="new")])
    assert set(select_extended(df, policy).campaign_id) == {"new"}
    assert set(select_earlier(df, policy).campaign_id) == {"old"}
    # an earlier campaign is still checked for where and how it ran
    make_campaign(tmp_path, "flat", "bad", "hbm01", "ssh")
    errors, _ = check_extended(df, {**policy, "earlier_kernel_campaigns": {"flat": ["bad"]}}, [tmp_path / "flat"])
    assert any("off the dedicated node" in e for e in errors)
