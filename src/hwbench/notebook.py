"""Common setup for the analysis notebooks: validated data, tables, figure export."""

from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass
from typing import Callable

import pandas as pd
import plotly.io as pio
from IPython.display import Markdown, display

from hwbench import claims, report
from hwbench.analysis import ROOT, export_figure
from hwbench.theory import Theory

LABELS = {
    "flat_ddr": "Flat · DDR",
    "flat_hbm": "Flat · HBM",
    "cache": "Cache",
    "native_amx_4_tiles": "AMX tiles",
}


@dataclass
class Context:
    name: str
    validation: dict
    everything: pd.DataFrame
    thesis: pd.DataFrame
    ext: pd.DataFrame
    policy: dict
    theory: Theory
    table: Callable[..., None]
    figure: Callable[..., None]
    say: Callable[[str], None]
    say_claims: Callable[..., None]


def setup(name: str) -> Context:
    """Load the validated dataset and return the helpers a notebook needs.

    The notebook refuses to run on data that does not match the validation
    report, so a stale ``measurements.csv`` can never feed a figure.
    """

    # "+png" adds a static image next to the interactive HTML, so viewers that do not run
    # scripts (GitHub) still show every figure.
    pio.renderers.default = "notebook+png"
    validation = json.loads((ROOT / "data/processed/validation.json").read_text())
    assert validation["status"] == "passed", validation["errors"]
    assert validation["dataset_sha256"] == hashlib.sha256(
        (ROOT / "data/processed/measurements.csv").read_bytes()
    ).hexdigest(), "measurements.csv changed after validation; run make_analysis.sh"
    assert validation["selection_sha256"] == hashlib.sha256(
        (ROOT / "configs/analysis.json").read_bytes()
    ).hexdigest(), "analysis.json changed after validation; run make_analysis.sh"
    everything, thesis, ext, policy = report.load()

    def table(frame: pd.DataFrame, digits: int = 3) -> None:
        shown = frame.copy()
        if "config" in shown:
            shown["config"] = shown["config"].replace(LABELS)
        display(shown.style.format(precision=digits, na_rep="—").set_uuid(name).hide(axis="index"))

    def figure(fig, slug: str) -> None:
        export_figure(fig, slug, name)

    def say(text: str) -> None:
        display(Markdown(text))

    def say_claims(items, ids=None, lead: str = "") -> None:
        """Render computed claims as bullets; the notebook stops if one is contradicted."""

        chosen = [c for c in items if ids is None or c.id in ids]
        if ids is not None:
            chosen.sort(key=lambda c: ids.index(c.id))
            assert len(chosen) == len(ids), f"unknown claim id in {ids}"
        failed = claims.check(chosen)
        assert not failed, [c.id for c in failed]
        display(Markdown((lead + "\n\n" if lead else "") + claims.render(chosen)))

    return Context(
        name, validation, everything, thesis, ext, policy, Theory.load(), table, figure, say, say_claims
    )
