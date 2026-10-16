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
