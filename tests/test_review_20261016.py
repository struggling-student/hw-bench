"""Checks for the corrections of the 2026-10-16 review, run on the committed data."""

from pathlib import Path

import pytest

from hwbench import claims, report, roofline
from hwbench.theory import Theory

ROOT = Path(__file__).resolve().parents[1]


@pytest.fixture(scope="module")
def evidence():
    if not (ROOT / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    _, thesis, ext, _ = report.load(ROOT)
    return ext, thesis, Theory.load()


def by_id(items):
    return {c.id: c for c in items}


# ------------------------------------------------------------------ C1
def test_headline_gemm_points_use_the_converged_pool_where_measured(evidence):
    ext, *_ = evidence
    head = report.headline_gemm_points(ext)
    for m in (1, 16, 256):
        rows = head[head.m.eq(m)]
        assert len(rows) == 4 and rows.status.eq("converged pool").all() and rows.pool_x.ge(16).all()
    small = head[head.m.le(report.SMALL_POOL_MAX_M) & ~head.m.isin([1, 16])]
    assert small.status.eq("small pool, M ≤ 32").all() and len(small) == 4 * 4


def test_no_filled_headline_point_lies_above_its_ceiling(evidence):
    ext, thesis, theory = evidence
    head = report.headline_gemm_points(ext)
    mem = [report.memory_ceiling(ext, thesis, "flat", t, access="read") for t in ("hbm", "ddr")]
    comp = [report.compute_ceiling(ext, p, "flat", 56) for p in ("amx_bf16", "amx_int8")]
    audit = roofline.audit_points(report.gemm_workload_points(head, theory), mem, comp)
    assert audit.unconverged.sum() == 4 * 4
    assert not audit[~audit.unconverged].exceeds.any()
    # the first sweep's exceedances are all small-pool points
    first = report.gemm_points(ext)
    full = roofline.audit_points(report.gemm_workload_points(first[first.memory_mode.eq("flat")], theory), mem, comp)
    assert full.exceeds.any() and full[full.exceeds].unconverged.all()


def test_small_m_bias_claim_quantifies_the_first_sweep(evidence):
    ext, thesis, theory = evidence
    c = by_id(claims.gemm(ext, thesis, theory, ROOT))
    assert c["first_sweep_small_m_bias"].holds and c["pool_insensitive_large_m"].holds
    assert "+10% (HBM BF16)" in c["first_sweep_small_m_bias"].text


# ------------------------------------------------------------- C2, C4
def test_table1_carries_the_between_campaign_range(evidence):
    ext, thesis, theory = evidence
    t1 = report.headline_table(ext, thesis, theory)
    assert t1["between"].notna().all() and t1.campaigns.ge(4).all()
    assert (t1.total >= t1.spread + t1["between"] - 1e-9).all()
    cache = t1[t1.quantity.str.startswith("Cache")].iloc[0]
    assert cache["between"] > cache["repeat"]  # back-to-back launches understate the Cache spread


def test_cache_node_difference_is_not_attributed_to_the_node(evidence):
    ext, thesis, _ = evidence
    c = by_id(claims.xcheck(ext, thesis))
    assert c["campaign_spread"].holds
    assert "node-to-node difference" not in c["repeat_launches"].text
    assert "cannot be attributed to the node" in c["campaign_spread"].text
    cs = report.campaign_spread(ext, thesis)
    cache = cs[cs.memory_mode.eq("cache") & cs.quantity.str.startswith("stream_")]
    flat = cs[cs.memory_mode.eq("flat") & cs.quantity.str.startswith("stream_")]
    assert cache.same_node_percent.max() > 2 * flat.same_node_percent.max()


def test_hbm_first_window_transient_is_reported(evidence):
    ext, thesis, theory = evidence
    c = by_id(claims.repeatability(ext, thesis))["hbm_first_window"]
    assert c.holds
    t1 = report.headline_table(ext, thesis, theory).set_index("quantity")
    hbm = t1.loc["Flat HBM read-only (56 cores)"]
    assert hbm.sustained < hbm["median"] < hbm.high  # the fast first window lifts median and max


# ------------------------------------------------------------- C3, M1
def test_spilled_cache_statement_uses_the_gemm_weight_stream(evidence):
    ext, thesis, _ = evidence
    c = by_id(claims.cache_mode(ext, thesis))
    assert c["cache_spilled_gemm"].holds and "unexplained" in c["cache_spilled_gemm"].text
    assert "cache_spilled_gemm" in c["cache_below_flat_ddr"].text


def test_decode_table_and_its_claim(evidence):
    ext, thesis, theory = evidence
    dt = report.decode_table(ext, thesis, theory)
    conv = dt[dt.pool.eq("64× on-chip")]
    assert len(conv) == 4 and (conv.counted_gbs / conv.gbs).between(0.97, 1.03).all()
    hbm = conv[conv.tier.eq("Flat HBM")].set_index("precision")
    ddr = conv[conv.tier.eq("Flat DDR")].set_index("precision")
    assert (hbm.gbs / ddr.gbs < 1.7).all() and (hbm.of_read_ceiling < ddr.of_read_ceiling).all()
    assert dt[dt.layout.eq("prepacked") & dt.precision.eq("bf16")].pool.str.contains("not converged").all()
    c = by_id(claims.decode_bound(ext, thesis, theory))["decode_achieved"]
    assert c.holds and "1.43×" in c.text


# ------------------------------------------------------------------ C7
def test_far_latency_is_qualified_for_translation(evidence):
    ext, _, theory = evidence
    c = by_id(claims.latency(ext, theory, ROOT))
    assert c["latency_translation"].holds
    far = c["cache_latency_far"].text
    assert "upper bound" in far and "costs" not in far and "latency_translation" in far


# ------------------------------------------------------------------ C8
def test_cache_claims_use_the_fill_in_working_sets(evidence):
    ext, thesis, _ = evidence
    c = by_id(claims.cache_mode(ext, thesis))
    assert "read 56 GiB" in c["cache_below_flat_ddr"].text and "triad_nt 56 GiB" in c["cache_below_flat_ddr"].text
    assert "24, 32, 40, 48, 56, 64 GiB" in c["cache_declines_before_capacity"].text
