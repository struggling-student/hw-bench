"""One visual language for every figure.

Colour identifies the memory configuration, dash identifies what kind of number a
ceiling is, and markers are measurements.  Units are SI throughout (GB/s, TOP/s).

* colour: Flat DDR, Flat HBM, Cache (effective) -- fixed across all notebooks
* dash:   theoretical = dashed, measured peak = solid, measured achievable = dotted
* marker: an achieved operating point; hover shows campaign, node and sample count
"""

from __future__ import annotations

import numpy as np
import pandas as pd
import plotly.graph_objects as go

from hwbench.analysis import ROOT, export_figure, style
from hwbench.roofline import Ceiling, MemoryCeiling, WorkloadPoint, ridge

CONFIG_COLORS = {
    "flat_ddr": "#3476A6",
    "flat_hbm": "#C24A40",
    "cache": "#268270",
    "theory": "#6B7480",
}
CONFIG_LABELS = {
    "flat_ddr": "Flat · DDR",
    "flat_hbm": "Flat · HBM",
    "cache": "Cache · effective",
    "theory": "Theoretical",
}
KIND_DASH = {
    "theoretical": "dash",
    "measured_peak": "solid",
    "measured_achievable": "dot",
}
#: One colour per precision/ISA path, used where the memory configuration is fixed.
PATH_COLORS = {
    "fp64": "#3476A6",
    "fp32": "#8754A1",
    "avx512_bf16": "#B76C23",
    "vnni_int8": "#268270",
    "amx_bf16": "#C24A40",
    "amx_int8": "#7A3E3E",
}

__all__ = [
    "CONFIG_COLORS",
    "CONFIG_LABELS",
    "KIND_DASH",
    "PATH_COLORS",
    "ROOT",
    "config_key",
    "export_figure",
    "roofline_figure",
    "style",
]


def config_key(mode: str, tier: str | None) -> str:
    """Map (mode, memory target) to a palette key."""

    if mode == "cache" or tier == "effective_cache":
        return "cache"
    return "flat_hbm" if tier == "hbm" else "flat_ddr"


def roofline_figure(
    compute: list[Ceiling],
    memory: list[MemoryCeiling],
    points: list[WorkloadPoint] | None = None,
    title: str = "Roofline",
    x_range: tuple[float, float] = (0.05, 4096.0),
    height: int = 620,
):
    """Multi-ceiling roofline: memory slopes, compute plateaus, achieved points.

    Slopes are drawn up to the highest compute ceiling; each compute ceiling is a
    horizontal line starting where it meets the first memory slope.  Ridge points
    are marked with hover text giving the exact intensity.
    """

    fig = go.Figure()
    x = np.geomspace(*x_range, 400)
    top = max((c.gops for c in compute), default=1.0)
    for m in memory:
        key = config_key(m.mode or "flat", m.tier)
        slope = np.minimum(m.gbs * x, top)
        fig.add_scatter(
            x=x,
            y=slope / 1000,
            mode="lines",
            name=f"{CONFIG_LABELS[key]} {m.kernel} · {m.gbs:.0f} GB/s ({m.scope})",
            line=dict(color=CONFIG_COLORS[key], width=2.5, dash=KIND_DASH[m.kind]),
            hovertemplate=(
                f"{m.tier} {m.kernel}<br>{m.gbs:.1f} GB/s · {m.scope}"
                f"<br>campaign {m.source_campaign}<extra></extra>"
            ),
        )
    seen = set()
    for c in compute:
        color = PATH_COLORS.get(c.path, "#444444")
        label = f"{c.path} · {c.gops / 1000:.1f} TOP/s ({c.scope}, {c.cores}c)"
        x0 = ridge(c.gops, max((m.gbs for m in memory), default=1.0))
        fig.add_scatter(
            x=[max(x0, x_range[0]), x_range[1]],
            y=[c.gops / 1000] * 2,
            mode="lines",
            name=label,
            line=dict(color=color, width=2, dash=KIND_DASH[c.kind]),
            legendgroup=c.path,
            hovertemplate=(
                f"{c.path} ({c.kind})<br>{c.gops / 1000:.2f} TOP/s"
                f"<br>{c.ghz or float('nan'):.2f} GHz · campaign {c.source_campaign}<extra></extra>"
            ),
        )
        if memory and (c.path, c.scope) not in seen:
            seen.add((c.path, c.scope))
            for m in memory:
                r = ridge(c.gops, m.gbs)
                if x_range[0] < r < x_range[1]:
                    key = config_key(m.mode or "flat", m.tier)
                    fig.add_scatter(
                        x=[r],
                        y=[c.gops / 1000],
                        mode="markers",
                        showlegend=False,
                        marker=dict(symbol="diamond-open", size=8, color=CONFIG_COLORS[key]),
                        hovertemplate=f"ridge {r:.1f} op/B<extra></extra>",
                    )
    for p in points or []:
        color = PATH_COLORS.get(p.isa_path, "#444444")
        fig.add_scatter(
            x=[p.intensity],
            y=[p.gops / 1000],
            mode="markers",
            name=p.name,
            marker=dict(color=color, size=9, line=dict(color="white", width=1)),
            hovertemplate=(
                f"{p.name}<br>{p.gops / 1000:.3f} TOP/s · {p.intensity:.2f} op/B"
                f"<br>{p.bytes_source}<extra></extra>"
            ),
        )
    style(fig, title, "Operations per byte of memory traffic", "TOP/s", height)
    fig.update_xaxes(type="log")
    fig.update_yaxes(type="log")
    return fig


def line_by_config(
    frame: pd.DataFrame,
    x: str,
    y: str,
    group: str,
    title: str,
    xlabel: str,
    ylabel: str,
    log_x: bool = True,
    log_y: bool = False,
    height: int = 520,
    error: str | None = None,
):
    """Generic line chart; ``group`` values are palette keys or arbitrary labels."""

    fig = go.Figure()
    for name, part in frame.groupby(group):
        part = part.sort_values(x)
        color = CONFIG_COLORS.get(name) or PATH_COLORS.get(name)
        fig.add_scatter(
            x=part[x],
            y=part[y],
            mode="lines+markers",
            name=CONFIG_LABELS.get(name, str(name)),
            line=dict(color=color, width=2.2),
            marker=dict(size=6),
            error_y=dict(type="data", array=part[error]) if error else None,
        )
    style(fig, title, xlabel, ylabel, height)
    if log_x:
        fig.update_xaxes(type="log")
    if log_y:
        fig.update_yaxes(type="log")
    return fig
