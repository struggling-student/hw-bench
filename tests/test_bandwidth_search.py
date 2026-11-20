"""Placement safety and simultaneous-window accounting for the new study."""
import copy

import pytest

from hwbench.bandwidth_search import (
    GIB,
    load_study,
    matrix,
    placements,
    ranking,
    summarize_record,
)


@pytest.fixture
def topology():
    return dict(memory_mode="flat", threads_per_core=1, sockets=[
        dict(socket=s, physical_cores=56, logical_cpus=list(range(s * 56, (s + 1) * 56)),
             hbm_nodes=[s + 2], ddr_nodes=[s]) for s in (0, 1)])


def test_matrix_disjoint_locality_and_capacity(topology):
    cases = matrix(topology)
    assert len({c["name"] for c in cases}) == len(cases)
    for case in cases:
        cpus = [c for m in case["members"] for c in m["cpus"]]
        assert len(cpus) == len(set(cpus)), case["name"]
        for m in case["members"]:
            if case["family"] != "span":
                assert all(c // 56 == m["socket"] for c in m["cpus"])
                assert (m["socket"] != m["memory_socket"]) == (case["family"] == "remote")
                assert m["nodes"] == [m["memory_socket"] + (2 if m["tier"] == "hbm" else 0)]
            if m["tier"] == "hbm":
                assert m["bytes"] <= 56 * GIB or case["family"] == "span"


def test_striped_split_is_complementary(topology):
    members = placements(topology, [0], 42, layout="striped")
    assert [len(m["cpus"]) for m in members] == [42, 14]
    assert sorted(c for m in members for c in m["cpus"]) == list(range(56))
    assert members[0]["cpus"] != list(range(42))


def test_cache_mode_rejected(topology):
    topology["memory_mode"] = "cache"
    with pytest.raises(ValueError, match="Flat"):
        matrix(topology)


def record(topology):
    case = dict(name="synthetic", family="split", layout="blocked", hbm_cores=28,
                members=placements(topology, [0], 28))
    results = []
    for gbs in (400, 100):
        samples = [dict(planned_start_ns=i * 3_000_000_000,
                        start_ns=i * 3_000_000_000, end_ns=i * 3_000_000_000 + 2_000_000_000,
                        modeled_bytes=gbs * 2_000_000_000) for i in range(6)]
        results.append(dict(valid=True, samples=samples, working_set_bytes=4 * GIB))
    return dict(case=case, launch=1, results=results,
                resident_pages=[{str(m["nodes"][0]): 1000} for m in case["members"]])


def test_sum_and_fixed_model_scan_are_different(topology):
    r = record(topology)
    # A transient first window must never inflate the steady result.
    r["results"][0]["samples"][0]["modeled_bytes"] *= 10
    summary = summarize_record(r)
    assert summary["gbs"] == 500
    assert summary["fixed_shard_gbs"] == 200
    assert summary["windows"] == 5


def test_uses_enclosing_window_not_intersection(topology):
    r = record(topology)
    for s in r["results"][1]["samples"]:
        s["end_ns"] += 20_000_000
    assert summarize_record(r)["gbs"] == pytest.approx(500 * 2 / 2.02)


@pytest.mark.parametrize("defect", ["planned", "overlap", "valid", "partial", "missing_pages"])
def test_bad_groups_cannot_be_ranked(topology, defect):
    r = copy.deepcopy(record(topology))
    if defect == "planned":
        r["results"][1]["samples"][1]["planned_start_ns"] += 1
    elif defect == "overlap":
        r["results"][1]["samples"][1]["start_ns"] += 500_000_000
    elif defect == "valid":
        r["results"][1]["valid"] = False
    elif defect == "missing_pages":
        r["resident_pages"].pop()
    else:
        r["results"].pop()
    with pytest.raises(ValueError):
        summarize_record(r)


def test_wrong_observed_page_residency_is_rejected(topology):
    r = record(topology)
    r["resident_pages"] = [{"0": 1000}, {"0": 1000}]
    with pytest.raises(ValueError, match="resident|anonymous"):
        summarize_record(r)


def test_two_launches_do_not_establish_a_winner(topology):
    import pandas as pd
    rows = []
    for launch in range(1, 4):
        r = record(topology)
        r["launch"] = launch
        rows.append(dict(campaign="test", **summarize_record(r)))
    assert ranking(pd.DataFrame(rows[:2])).empty
    assert ranking(pd.DataFrame(rows)).iloc[0].launches == 3


def test_incomplete_campaign_is_audited_and_never_loaded(tmp_path):
    import json
    (tmp_path / "configs").mkdir()
    (tmp_path / "configs/bandwidth_search.json").write_text(json.dumps({"campaigns": ["pending"]}))
    rows, audit = load_study(tmp_path)
    assert rows.empty
    assert not audit.iloc[0].accepted
    assert audit.iloc[0].reason == "campaign incomplete"
