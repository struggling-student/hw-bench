"""M3: the comparison with published Xeon Max 9480 bandwidths."""

import pytest

from hwbench import claims, plotting, report
from hwbench.analysis import ROOT
from hwbench.roofline import Ceiling


@pytest.fixture(scope="module")
def evidence():
    if not (ROOT / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    _, thesis, ext, _ = report.load(ROOT)
    return ext, thesis


def test_every_published_value_has_a_cited_source_and_a_measured_counterpart(evidence):
    ext, thesis = evidence
    table = report.literature_table(ext, thesis)
    sources = report.literature_sources()
    assert set(table.source) <= set(sources.key)
    assert sources.url.str.startswith("https://").all() and sources.citation.str.len().gt(40).all()
    assert table.measured.notna().all() and (table.published > 0).all()
    assert table.location.str.match(r"(slide|section) \d+").all()


def test_tier_ratios_are_computed_from_the_measured_pairs_not_copied(evidence):
    ext, thesis = evidence
    t = report.literature_table(ext, thesis).set_index("quantity")
    assert t.loc["HBM over DDR, read-only", "measured"] == pytest.approx(
        t.loc["HBM read-only, 1 socket", "measured"] / t.loc["DDR read-only, 1 socket", "measured"]
    )


def test_literature_claims_hold_and_say_what_was_not_tested(evidence):
    ext, thesis = evidence
    cs = {c.id: c for c in claims.literature(ext, thesis)}
    assert not claims.check(list(cs.values()))
    assert "was not tested" in cs["literature_agreement"].text
    assert "STREAMGAP" in cs["literature_agreement"].text and "not the node" in cs["literature_agreement"].text
    assert "like-for-like" in cs["literature_two_socket"].text


def test_library_line_is_labelled_as_plain_weight_nn_linear():
    fig = plotting.roofline_figure(
        [Ceiling(kind="measured_achievable", precision="bf16", path="amx_bf16", gops=41000.0, unit="GOP/s", scope="1S", mode="flat", cores=56)],
        [],
        [],
    )
    assert any("nn.Linear, plain weights" in (a.text or "") for a in fig.layout.annotations)
