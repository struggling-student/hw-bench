"""Every statement the notebooks print about the data must hold on the committed data."""

import re
from pathlib import Path

import pytest

from hwbench import claims, report
from hwbench.theory import Theory

ROOT = Path(__file__).resolve().parents[1]


@pytest.fixture(scope="module")
def evidence():
    if not (ROOT / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    _, thesis, ext, _ = report.load(ROOT)
    return ext, thesis, Theory.load(), claims.all_claims(ext, thesis, Theory.load(), ROOT)


def by_id(all_claims):
    return {c.id: c for group in all_claims.values() for c in group}


def test_every_claim_holds(evidence):
    *_, all_claims = evidence
    failed = [c.id for group in all_claims.values() for c in claims.check(group)]
    assert not failed, failed


def test_claim_ids_are_unique_and_text_is_fully_formatted(evidence):
    *_, all_claims = evidence
    items = [c for group in all_claims.values() for c in group]
    assert len({c.id for c in items}) == len(items)
    for c in items:
        assert "{" not in c.text and not re.search(r"\bnan\b", c.text.lower()), c.id


def test_cache_mode_is_not_said_to_match_flat_hbm(evidence):
    """Review A1: the decline starts below the cache capacity, so the statement must say so."""

    ext, thesis, _, all_claims = evidence
    bw = report.bandwidth_summary(ext, thesis)
    bw = bw[bw.socket.eq(0) & bw.locality.eq("local") & bw.socket_scope.eq("single") & bw.kernel.eq("triad")]
    hbm = bw[bw.config.eq("flat_hbm")].gbs.max()
    cache = bw[bw.config.eq("cache")].set_index(bw[bw.config.eq("cache")].working_set_gib.round(0)).gbs
    assert cache[32] < 0.8 * hbm and cache[64] < 0.5 * hbm
    text = by_id(all_claims)["cache_declines_before_capacity"].text
    assert "does **not** match Flat HBM" in text


def test_spilled_latency_is_declared_unmeasured(evidence):
    """Review A3: no miss latency exists, and the claim says so."""

    ext, *_, all_claims = evidence
    assert "not measured" in by_id(all_claims)["cache_latency_resident_only"].text
    h = report.hierarchy(ext)
    lat = h[h.notes.eq("hier_latency") & h.config.eq("cache")]
    assert lat.per_thread_bytes.max() < 64 * 2**30


def test_like_for_like_comparison_with_flat_ddr(evidence):
    """Review A11: Cache is compared with Flat DDR kernel by kernel, not read against Triad."""

    text = by_id(evidence[3])["cache_below_flat_ddr"].text
    for kernel in ("read-only", "Triad", "non-temporal Triad"):
        assert kernel in text
    assert "Compared kernel by kernel" in text


def test_interleaving_costs_more_than_half_on_hbm(evidence):
    """Review A11: interleaving does not merely 'halve' the benefit on HBM."""

    ext, thesis, *_ = evidence
    sp = report.span_table(ext)
    read = sp[sp.memory_mode.eq("flat") & sp.benchmark.eq("stream_read")].set_index(["config", "placement"]).gbs
    assert read[("flat_hbm", "interleave")] < 0.5 * read[("flat_hbm", "firsttouch")]
    assert read[("flat_ddr", "interleave")] > 0.5 * read[("flat_ddr", "firsttouch")]


def test_store_width_claim_matches_the_disassembly():
    """Review A11: regular Triad stores are 256-bit; only the non-temporal variant is 512-bit."""

    if not any((ROOT / "data/raw/flat").glob("*/system/hardware.asm")):
        pytest.skip("no disassembly in this checkout")
    assert claims.triad_store_widths(ROOT) == {"regular_ymm": True, "non_temporal_zmm": True}


def test_fp64_sweep_is_not_said_to_reach_its_plateau(evidence):
    """Review A10: 84% of the peak at the highest intensity, 60% at the ridge."""

    ext, thesis, theory, all_claims = evidence
    peak = report.compute_ceiling(ext, "fp64", "flat", 56).gops
    top = max(report.fp64_sweep_points(thesis, "flat", "hbm"), key=lambda p: p.intensity)
    assert top.gops / peak < 0.95
    assert "does not reach the compute plateau" in by_id(all_claims)["sweep_plateau_not_reached"].text


def test_bimodal_gemm_points_do_not_get_a_causal_story(evidence):
    """Review A7: the variation is reported with oneDNN's own implementation name, cause unknown."""

    text = by_id(evidence[3])["gemm_bimodal_points"].text
    assert "its cause is unknown" in text
    verbose = claims.gemm_verbose(ROOT)
    i8 = verbose[verbose.dtype.eq("int8") & verbose.n.eq(4096) & verbose.k.eq(4096) & verbose.m.isin([32, 64, 128])]
    assert i8.implementation.nunique() == 1


def test_gemm_asymmetry_is_documented(evidence):
    """Review A6: BF16 weights are plain, INT8 weights are prepacked."""

    verbose = claims.gemm_verbose(ROOT)
    assert set(verbose[verbose.dtype.eq("bf16")].weights) == {"bf16/blocked:ba"}
    assert all("BA16a64b4a" in w for w in verbose[verbose.dtype.eq("int8")].weights)


def test_render_and_check_helpers():
    items = [claims.Claim("a", True, "first"), claims.Claim("b", False, "second")]
    assert claims.render(items) == "* first\n* second"
    assert [c.id for c in claims.check(items)] == ["b"]


def test_counter_probe_validates_the_events_and_the_write_allocate_inference():
    if not any((ROOT / "data/probes").glob("counters-*/*.json")):
        pytest.skip("no counter probe results in this checkout")
    found = {c.id: c for c in claims.counters(ROOT)}
    assert set(found) == {"counters_unprivileged", "write_allocate_counted"}
    assert all(c.holds for c in found.values())
    probe = claims.probe_events(ROOT)
    # Triad reads two of its three arrays whether or not the stores are non-temporal.
    reads = {w: probe[f"{w}/hbm"]["OCR.READS_TO_CORE.DRAM"]["per_expected_line"] for w in ("triad", "triad-nt")}
    assert abs(reads["triad"] - reads["triad-nt"]) < 0.05 and reads["triad"] < 0.7
