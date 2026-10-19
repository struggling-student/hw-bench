"""One visual language for every figure.

Each colour has one meaning:

* **hue = memory configuration** -- Flat DDR (blue), Flat HBM (orange), Cache (aqua),
  the first three slots of a palette validated for colour-vision deficiency;
* **violet ramp = compute path**, lightest to darkest in order of vendor operations
  per cycle, so a compute ceiling is never mistaken for a memory slope;
* **pattern = placement** (remote / interleaved bars are hatched in the colour of their
  tier), never a different hue;
* **dash = kind of ceiling** -- theoretical dashed, measured peak solid, library-achievable
  dotted;
* **marker shape = series**, the same shape for the same series on every tier.

Units are SI throughout (GB/s, TOP/s).  Colours are validated for the light surface used
by the exported figures; there is no dark variant.
"""

from __future__ import annotations

import numpy as np
import pandas as pd
import plotly.graph_objects as go
from plotly.subplots import make_subplots

from hwbench.analysis import ROOT, export_figure, style
from hwbench.roofline import Ceiling, MemoryCeiling, WorkloadPoint, ridge

SURFACE = "#FCFCFB"
INK = "#0B0B0B"
INK_2 = "#52514E"
MUTED = "#898781"
GRID = "#E1E0D9"

CONFIG_COLORS = {
    "flat_ddr": "#2A78D6",
    "flat_hbm": "#EB6834",
    "cache": "#1BAF7A",
    "theory": MUTED,
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
#: Compute paths: one hue, ordered by vendor operations per cycle (lightest = fewest).
PATH_COLORS = {
    "fp64": "#B3ABF0",
    "fp32": "#9085E9",
    "avx512_bf16": "#7467D8",
    "vnni_int8": "#5A4CC0",
    "amx_bf16": "#4A3AA7",
    "amx_int8": "#352886",
}
PATH_LABELS = {
    "fp64": "AVX-512 FP64",
    "fp32": "AVX-512 FP32",
    "avx512_bf16": "AVX-512 BF16",
    "vnni_int8": "VNNI INT8",
    "amx_bf16": "AMX BF16",
    "amx_int8": "AMX INT8",
}
#: GEMM shapes (identity inside the GEMM figures only; those show a single memory tier).
SHAPE_COLORS = {
    "4096x4096": "#008300",
    "4096x14336": "#E87BA4",
    "14336x4096": "#EDA100",
    "6144x6144": "#E34948",
}
SYMBOLS = ["circle", "square", "diamond", "triangle-up", "cross", "x", "star", "hexagon"]

__all__ = [
    "CONFIG_COLORS",
    "CONFIG_LABELS",
    "KIND_DASH",
    "PATH_COLORS",
    "PATH_LABELS",
    "ROOT",
    "SHAPE_COLORS",
    "cache_capacity_figure",
    "cache_latency_figure",
    "compute_efficiency_figure",
    "counted_ratio_figure",
    "config_key",
    "dual_efficiency_figure",
    "export_figure",
    "gemm_efficiency_figure",
    "gemm_pool_figure",
    "gemm_prepacked_figure",
    "memory_scaling_figure",
    "placement_figure",
    "remote_threads_figure",
    "repeat_runs_figure",
    "roofline_figure",
    "style",
]


def config_key(mode: str, tier: str | None) -> str:
    """Map (mode, memory target) to a palette key."""

    if mode == "cache" or tier == "effective_cache":
        return "cache"
    return "flat_hbm" if tier == "hbm" else "flat_ddr"


def _auto_range(compute, memory, points) -> tuple[float, float]:
    xs = [p.intensity for p in points or []]
    ridges = [ridge(c.gops, m.gbs) for c in compute for m in memory]
    lo = min(xs + ridges, default=1.0) / 4
    hi = max(xs + ridges, default=1000.0) * 12
    return max(lo, 0.02), min(hi, 40000.0)


def roofline_figure(
    compute: list[Ceiling],
    memory: list[MemoryCeiling],
    points: list[WorkloadPoint] | None = None,
    title: str = "Roofline",
    x_range: tuple[float, float] | None = None,
    height: int = 620,
    regions: list[tuple[float, float, str]] | None = None,
    point_labels: bool = False,
    open_label: str = "hollow: first sweep at M ≤ 32, weight pool too small (bytes overstated)",
):
    """Memory slopes, compute plateaus and achieved points on one log-log plane.

    Compute ceilings are labelled on the line (not in the legend); a measured ceiling is
    labelled above its line and a theoretical one below, so the pair stays readable.
    A plateau is drawn faintly between the ridge of the fastest and the slowest memory
    tier -- there only the faster tier reaches it -- and solid beyond.  ``regions`` shades
    labelled intensity intervals (for example decode and prefill).
    """

    if x_range is None:
        x_range = _auto_range(compute, memory, points)
    fig = go.Figure()
    x = np.geomspace(*x_range, 400)
    top = max((c.gops for c in compute), default=1.0)
    for lo, hi, label in regions or []:
        fig.add_vrect(x0=lo, x1=hi, fillcolor=GRID, opacity=0.55, line_width=0, layer="below")
        fig.add_annotation(
            x=np.log10(np.sqrt(lo * hi)), y=1.0, xref="x", yref="paper", text=label, showarrow=False,
            yanchor="bottom", font=dict(size=13, color=INK_2),
        )
    for m in memory:
        key = config_key(m.mode or "flat", m.tier)
        slope = np.minimum(m.gbs * x, top)
        where = f" @{m.working_set_gib:.0f} GiB" if m.mode == "cache" and m.working_set_gib else ""
        fig.add_scatter(
            x=x,
            y=slope / 1000,
            mode="lines",
            name=f"{CONFIG_LABELS[key]} {m.kernel}{where} · {m.gbs:.0f} GB/s ({m.scope})",
            line=dict(color=CONFIG_COLORS[key], width=2.5, dash=KIND_DASH[m.kind]),
            hovertemplate=(
                f"{m.tier} {m.kernel}<br>{m.gbs:.1f} GB/s · {m.scope}"
                f"<br>campaign {m.source_campaign}<extra></extra>"
            ),
        )
    bandwidths = [m.gbs for m in memory] or [1.0]
    placed: list[tuple[str, float]] = []  # (side, log10 y) of labels already on the right edge
    for c in compute:
        color = PATH_COLORS.get(c.path, INK_2)
        r_fast, r_slow = ridge(c.gops, max(bandwidths)), ridge(c.gops, min(bandwidths))
        hover = (
            f"{c.path} ({c.kind})<br>{c.gops / 1000:.2f} TOP/s"
            f"<br>{c.ghz or float('nan'):.2f} GHz · campaign {c.source_campaign}<extra></extra>"
        )
        if r_slow > r_fast:
            fig.add_scatter(
                x=[max(r_fast, x_range[0]), min(r_slow, x_range[1])], y=[c.gops / 1000] * 2, mode="lines",
                line=dict(color=color, width=1.5, dash=KIND_DASH[c.kind]), opacity=0.35, showlegend=False,
                hovertemplate=hover,
            )
        fig.add_scatter(
            x=[max(r_slow, x_range[0]), x_range[1]], y=[c.gops / 1000] * 2, mode="lines",
            line=dict(color=color, width=2.2, dash=KIND_DASH[c.kind]), showlegend=False, hovertemplate=hover,
        )
        label = {
            "theoretical": f"{PATH_LABELS.get(c.path, c.path)} vendor at {c.ghz or 0:.1f} GHz {c.gops / 1000:.1f}",
            "measured_peak": f"{PATH_LABELS.get(c.path, c.path)} {c.gops / 1000:.1f} TOP/s",
            "measured_achievable": f"{PATH_LABELS.get(c.path, c.path)} nn.Linear, plain weights {c.gops / 1000:.1f}",
        }[c.kind]
        ly = np.log10(c.gops / 1000)
        side = "top" if c.kind == "theoretical" else "bottom"
        if any(s_ == side and abs(y_ - ly) < 0.1 for s_, y_ in placed):  # keep neighbouring labels apart
            side = "bottom" if side == "top" else "top"
        placed.append((side, ly))
        fig.add_annotation(
            x=np.log10(x_range[1]), y=ly, xref="x", yref="y", text=label, showarrow=False,
            xanchor="right", yanchor=side, font=dict(size=12, color=INK_2), xshift=-4,
        )
        for m in memory:
            r = ridge(c.gops, m.gbs)
            if x_range[0] < r < x_range[1] and c.kind != "theoretical":
                fig.add_scatter(
                    x=[r], y=[c.gops / 1000], mode="markers", showlegend=False,
                    marker=dict(symbol="diamond-open", size=8, color=CONFIG_COLORS[config_key(m.mode or "flat", m.tier)]),
                    hovertemplate=f"ridge {r:.1f} op/B<extra></extra>",
                )
    # One trace per (tier, series); the symbol belongs to the series so DDR and HBM agree.
    groups: dict[tuple, list[WorkloadPoint]] = {}
    for p in points or []:
        groups.setdefault((p.mode, p.memory_target, p.provenance.get("series", p.isa_path)), []).append(p)
    symbols = {s: SYMBOLS[i % len(SYMBOLS)] for i, s in enumerate(sorted({k[2] for k in groups}))}
    any_open = False
    for (mode, tier, series), members in groups.items():
        key = config_key(mode or "flat", tier)
        # Filled points first: the legend shows the first point's marker, which must not look hollow.
        members = sorted(members, key=lambda q: (bool(q.provenance.get("open")), q.intensity))
        labelled = point_labels and all("label" in q.provenance for q in members)
        # A hollow marker is a point the analysis does not treat as converged (see open_label).
        hollow = [bool(q.provenance.get("open")) for q in members]
        any_open |= any(hollow)
        fig.add_scatter(
            x=[q.intensity for q in members],
            y=[q.gops / 1000 for q in members],
            mode="markers+text" if labelled else "markers",
            name=f"{CONFIG_LABELS[key]} · {series}",
            marker=dict(
                color=CONFIG_COLORS[key],
                symbol=[f"{symbols[series]}-open" if h else symbols[series] for h in hollow],
                size=9,
                line=dict(color=[CONFIG_COLORS[key] if h else SURFACE for h in hollow], width=[2 if h else 1.5 for h in hollow]),
            ),
            text=[q.provenance["label"] if labelled else q.name for q in members],
            textposition="top center",
            textfont=dict(size=11, color=INK_2),
            customdata=[[q.bytes_source, q.provenance.get("campaign", "")] for q in members],
            hovertemplate=(
                "%{text}<br>%{y:.3f} TOP/s · %{x:.2f} op/B<br>%{customdata[0]} · %{customdata[1]}<extra></extra>"
            ),
        )
    if any_open:
        fig.add_scatter(
            x=[None], y=[None], mode="markers", name=open_label,
            marker=dict(symbol="circle-open", size=9, color=MUTED, line=dict(color=MUTED, width=2)),
        )
    style(fig, title, "Operations per byte of memory traffic (modeled)", "TOP/s", height)
    fig.update_xaxes(type="log", range=[np.log10(x_range[0]), np.log10(x_range[1])], dtick=1, tickformat="~g")
    fig.update_yaxes(type="log", dtick=1, tickformat="~g")
    fig.update_layout(margin=dict(l=85, r=40, t=95, b=125))
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
        color = CONFIG_COLORS.get(name) or PATH_COLORS.get(name) or SHAPE_COLORS.get(name) or INK_2
        fig.add_scatter(
            x=part[x],
            y=part[y],
            mode="lines+markers",
            name=CONFIG_LABELS.get(name, PATH_LABELS.get(name, str(name))),
            line=dict(color=color, width=2.2),
            marker=dict(size=6, line=dict(color=SURFACE, width=1)),
            error_y=dict(type="data", array=part[error]) if error else None,
        )
    style(fig, title, xlabel, ylabel, height)
    if log_x:
        fig.update_xaxes(type="log", dtick=1, tickformat="~g")
    if log_y:
        fig.update_yaxes(type="log", dtick=1, tickformat="~g")
    return fig


def mark_x(fig, edges: dict[str, float], log: bool = True) -> None:
    """Dotted vertical reference lines with labels that work on log axes.

    ``add_vline`` places its annotation in data coordinates, which on a log axis
    puts the label far off screen; labels need ``log10(x)`` there.
    """

    for label, x in edges.items():
        fig.add_shape(
            type="line", x0=x, x1=x, y0=0, y1=1, xref="x", yref="paper",
            line=dict(dash="dot", color=MUTED, width=1.5),
        )
        fig.add_annotation(
            x=np.log10(x) if log else x, y=1.0, xref="x", yref="paper", text=label,
            showarrow=False, yanchor="bottom", font=dict(size=12, color=INK_2),
        )


def bytes_axis(fig, low: int = 2**14, high: int = 2**32, step: int = 4) -> None:
    """Binary-prefixed ticks (KiB/MiB/GiB) on a log x axis."""

    values, labels, size = [], [], low
    while size <= high:
        values.append(size)
        for unit, scale in (("GiB", 2**30), ("MiB", 2**20), ("KiB", 2**10)):
            if size >= scale:
                labels.append(f"{size // scale} {unit}")
                break
        size *= step
    fig.update_xaxes(type="log", tickmode="array", tickvals=values, ticktext=labels)


def mark_y(fig, y: float, text: str, log: bool = True) -> None:
    """Solid reference line with a label that works on a log y axis."""

    fig.add_shape(
        type="line", x0=0, x1=1, y0=y, y1=y, xref="paper", yref="y",
        line=dict(color=MUTED, width=1.5),
    )
    fig.add_annotation(
        x=1.0, y=np.log10(y) if log else y, xref="paper", yref="y", text=text, showarrow=False,
        xanchor="right", yanchor="bottom", font=dict(size=12, color=INK_2),
    )


# ----------------------------------------------------------- master figures
def compute_efficiency_figure(peaks: pd.DataFrame, notes: dict[str, str] | None = None):
    """Measured against vendor operations per cycle per core, one dot per path.

    ``peaks`` has one row per path (one socket, 56 cores).  The x axis is linear: the
    only quantity comparable across paths is the fraction of the per-cycle figure, and
    the measured clock is annotated because it differs by path.  ``notes`` maps a path to
    a caveat appended to its label (for example an assumed bound).
    """

    order = ["fp64", "fp32", "avx512_bf16", "vnni_int8", "amx_bf16", "amx_int8"]
    rows = peaks.set_index("path").loc[order]
    frac = rows.ops_per_cycle_per_core / rows.theory_ops_per_cycle
    fig = go.Figure()
    fig.add_vline(x=1.0, line=dict(color=MUTED, width=1.5))
    fig.add_scatter(
        x=frac,
        y=[PATH_LABELS[p] for p in order],
        mode="markers+text",
        marker=dict(size=13, color=[PATH_COLORS[p] for p in order], line=dict(color=INK_2, width=1)),
        text=[
            f"{r.ops_per_cycle_per_core:.0f} of {r.theory_ops_per_cycle:.0f} op/cycle · {r.ghz_effective:.2f} GHz"
            + (f" · {notes[p]}" if notes and p in notes else "")
            for p, r in rows.iterrows()
        ],
        textposition="middle right",
        textfont=dict(size=12, color=INK_2),
        showlegend=False,
        hovertemplate="%{y}: %{x:.1%} of the per-cycle figure<extra></extra>",
    )
    style(fig, "Operations per cycle against the per-cycle figure · per core, mean over 56 cores", "Measured ÷ per-cycle figure", "", 440)
    fig.update_xaxes(range=[0, 1.8], tickformat=".0%", tickvals=[0, 0.25, 0.5, 0.75, 1.0])
    fig.update_yaxes(autorange="reversed", showgrid=False)
    fig.update_layout(margin=dict(l=130, r=40, t=85, b=70))
    return fig


def memory_scaling_figure(read: pd.DataFrame, clock: pd.DataFrame):
    """Read bandwidth against core count, with the effective clock on a second panel.

    Two panels share the core axis (no second y-scale): bandwidth above, the clock the
    cores actually ran at below, so a bandwidth that stops rising can be compared with a
    clock that falls.
    """

    fig = make_subplots(rows=2, cols=1, shared_xaxes=True, vertical_spacing=0.07, row_heights=[0.68, 0.32])
    for cfg in ["flat_ddr", "flat_hbm", "cache"]:
        part = read[read.config.eq(cfg)].sort_values("threads")
        clk = clock[clock.config.eq(cfg)].sort_values("threads")
        color = CONFIG_COLORS[cfg]
        fig.add_scatter(
            x=part.threads, y=part.gbs, mode="lines+markers", name=CONFIG_LABELS[cfg], legendgroup=cfg,
            line=dict(color=color, width=2.2), marker=dict(size=7, line=dict(color=SURFACE, width=1.5)),
            error_y=dict(type="data", array=part["std"].fillna(0)), row=1, col=1,
        )
        fig.add_scatter(
            x=clk.threads, y=clk.ghz, mode="lines+markers", name=CONFIG_LABELS[cfg], legendgroup=cfg, showlegend=False,
            line=dict(color=color, width=2.2), marker=dict(size=7, line=dict(color=SURFACE, width=1.5)), row=2, col=1,
        )
    fig.add_vline(x=28, line=dict(color=MUTED, width=1))
    fig.add_annotation(x=np.log10(28), y=1.0, xref="x", yref="paper", text="28 cores", showarrow=False, yanchor="bottom", font=dict(size=12, color=INK_2))
    style(fig, "Read bandwidth and effective clock against core count · socket 0, 8 GiB", "Cores", "GB/s", 640)
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1, 2, 4, 8, 14, 28, 56], ticktext=["1", "2", "4", "8", "14", "28", "56"])
    fig.update_xaxes(title_text="", row=1, col=1)
    fig.update_xaxes(title_text="Cores", row=2, col=1)
    fig.update_yaxes(title_text="GB/s", row=1, col=1)
    fig.update_yaxes(title_text="GHz", range=[1.2, 2.8], row=2, col=1)
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.16))
    return fig


def cache_capacity_figure(cache: pd.DataFrame, flat: pd.DataFrame, markers: dict[str, float], gemm: pd.DataFrame | None = None):
    """Cache-mode bandwidth for every kernel against working set, with Flat reference bands.

    Only measured working sets are drawn: a kernel with few points gets markers alone,
    because a line between 16 and 64 GiB would invent a smooth curve.  The bands span
    the three kernels on Flat HBM and Flat DDR at 8 GiB.
    """

    fig = go.Figure()
    for cfg in ("flat_hbm", "flat_ddr"):
        part = flat[flat.config.eq(cfg)]
        lo, hi = part.gbs.min(), part.gbs.max()
        fig.add_hrect(y0=lo, y1=hi, fillcolor=CONFIG_COLORS[cfg], opacity=0.22, line_width=0)
        fig.add_annotation(
            x=1.0, xref="paper", y=hi, yref="y", text=f"{CONFIG_LABELS[cfg]}, three kernels at 8 GiB", showarrow=False,
            xanchor="right", yanchor="bottom", font=dict(size=12, color=INK_2),
        )
    symbols = {"read": "circle", "triad": "square", "triad_nt": "diamond"}
    names = {"read": "read-only", "triad": "Triad", "triad_nt": "non-temporal Triad"}
    for kernel, part in cache.groupby("kernel"):
        part = part.sort_values("working_set_gib")
        dense = len(part) >= 6
        fig.add_scatter(
            x=part.working_set_gib, y=part.gbs, mode="lines+markers" if dense else "markers", name=f"Cache · {names[kernel]}",
            marker=dict(size=10, symbol=symbols[kernel], color=CONFIG_COLORS["cache"], line=dict(color=SURFACE, width=1.5)),
            line=dict(color=CONFIG_COLORS["cache"], width=2),
        )
    # Decode GEMM weight streams (M = 1) at their pool sizes: the access pattern a model has.
    for dtype, symbol in (("bf16", "star"), ("int8", "hexagon")):
        part = gemm[gemm.dtype.eq(dtype)] if gemm is not None else pd.DataFrame()
        if len(part):
            fig.add_scatter(
                x=part.pool_gib, y=part.gbs, mode="markers", name=f"Cache · GEMM weight stream, M=1, {dtype.upper()} 14336×4096",
                marker=dict(size=13, symbol=f"{symbol}-open", color=CONFIG_COLORS["cache"], line=dict(color=CONFIG_COLORS["cache"], width=2.5)),
            )
    for label, x in markers.items():
        fig.add_vline(x=x, line=dict(color=MUTED, width=1))
        fig.add_annotation(x=x, y=1.0, xref="x", yref="paper", text=label, showarrow=False, yanchor="bottom", font=dict(size=12, color=INK_2))
    style(fig, "Cache-mode bandwidth against working set · socket 0, 56 cores", "Working set (GiB)", "GB/s", 520)
    fig.update_yaxes(range=[0, 640])
    fig.update_xaxes(range=[0, 135])
    return fig


def gemm_efficiency_figure(sweeps: dict[str, pd.DataFrame], decode_max: int, prefill_min: int):
    """GEMM efficiency against batch M on two panels sharing the M axis.

    ``sweeps`` maps a path key (``amx_bf16``, ``amx_int8``) to rows with ``m``,
    ``tile_fraction`` and ``bandwidth_fraction``.  Top: share of the measured tile peak.
    Bottom: share of the read-bandwidth ceiling, from modeled bytes.
    """

    fig = make_subplots(rows=2, cols=1, shared_xaxes=True, vertical_spacing=0.08)
    any_open = False
    for path, part in sweeps.items():
        part = part.sort_values("m")
        hollow = list(part.status.eq("small pool, M ≤ 32")) if "status" in part else [False] * len(part)
        any_open |= any(hollow)
        for row, col in ((1, "tile_fraction"), (2, "bandwidth_fraction")):
            fig.add_scatter(
                x=part.m, y=part[col], mode="lines+markers", name=PATH_LABELS[path], legendgroup=path, showlegend=row == 1,
                line=dict(color=PATH_COLORS[path], width=2.2),
                marker=dict(
                    size=8, color=[SURFACE if h else PATH_COLORS[path] for h in hollow],
                    line=dict(color=[PATH_COLORS[path] if h else SURFACE for h in hollow], width=[2 if h else 1.5 for h in hollow]),
                ),
                row=row, col=1,
            )
    if any_open:
        fig.add_scatter(
            x=[None], y=[None], mode="markers", name="hollow: first sweep at M ≤ 32, weight pool too small",
            marker=dict(size=8, color=SURFACE, line=dict(color=MUTED, width=2)), row=1, col=1,
        )
    for row in (1, 2):
        fig.add_vrect(x0=0.7, x1=decode_max * 1.2, fillcolor=GRID, opacity=0.55, line_width=0, layer="below", row=row, col=1)
        fig.add_vrect(x0=prefill_min / 1.2, x1=6000, fillcolor=GRID, opacity=0.55, line_width=0, layer="below", row=row, col=1)
    labels = (
        (f"decode (M ≤ {decode_max})", np.sqrt(0.7 * decode_max * 1.2)),
        (f"prefill (M ≥ {prefill_min})", np.sqrt(prefill_min / 1.2 * 6000)),
    )
    for text, x in labels:
        fig.add_annotation(x=np.log10(x), y=1.0, xref="x", yref="paper", text=text, showarrow=False, yanchor="bottom", font=dict(size=13, color=INK_2))
    style(fig, "GEMM efficiency against batch M · 14336×4096, Flat HBM, 56 cores", "", "", 640)
    ticks = [1, 4, 16, 64, 256, 1024, 4096]
    fig.update_xaxes(type="log", range=[np.log10(0.7), np.log10(6000)], tickmode="array", tickvals=ticks, ticktext=[str(t) for t in ticks])
    fig.update_xaxes(title_text="", row=1, col=1)
    fig.update_xaxes(title_text="M (tokens per batch)", row=2, col=1)
    fig.update_yaxes(title_text="Share of tile peak", tickformat=".0%", rangemode="tozero", row=1, col=1)
    fig.update_yaxes(title_text="Share of read ceiling", tickformat=".0%", rangemode="tozero", row=2, col=1)
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.14))
    return fig


def placement_figure(local_remote: pd.DataFrame, span: pd.DataFrame):
    """Left: local and remote bandwidth per tier and kernel. Right: one process on 112 cores.

    Hatching means 'worse placement' (remote, interleaved); the colour stays the tier's.
    The diamond is the sum of the two isolated sockets, the reference for a spanning process.
    ``local_remote`` has ``label``, ``config``, ``local``, ``remote`` and their spreads;
    ``span`` has ``label``, ``config``, ``placement``, ``gbs`` and ``isolated_sum``.
    """

    fig = make_subplots(
        rows=1, cols=2, column_widths=[0.55, 0.45],
        subplot_titles=("Local and remote · one socket", "One 112-thread process · read-only"),
    )
    pattern = lambda shape: dict(shape=shape, fgcolor=SURFACE, size=6, solidity=0.5)  # noqa: E731
    for placement, hatch in (("local", ""), ("remote", "/")):
        fig.add_bar(
            x=local_remote.label, y=local_remote[placement], showlegend=False,
            marker=dict(color=[CONFIG_COLORS[c] for c in local_remote.config], pattern=pattern(hatch), line=dict(width=0)),
            error_y=dict(type="data", array=local_remote[f"{placement}_spread"], color=INK_2, thickness=1.2),
            row=1, col=1,
        )
    for placement, hatch in (("firsttouch", ""), ("interleave", "/")):
        part = span[span.placement.eq(placement)]
        fig.add_bar(
            x=part.label, y=part.gbs, showlegend=False,
            marker=dict(color=[CONFIG_COLORS[c] for c in part.config], pattern=pattern(hatch), line=dict(width=0)),
            row=1, col=2,
        )
    ref = span.drop_duplicates("label")
    fig.add_scatter(
        x=ref.label, y=ref.isolated_sum, mode="markers", name="two isolated sockets, summed",
        marker=dict(symbol="diamond", size=12, color=INK, line=dict(color=SURFACE, width=1.5)), row=1, col=2,
    )
    style(fig, "Placement: remote memory and one process spanning both sockets", "", "GB/s", 520)
    fig.update_layout(barmode="group", bargap=0.3, legend=dict(orientation="h", x=0.55, y=-0.17))
    # Colour already says the tier, so the key only explains the hatching.
    fig.add_annotation(
        x=0, y=-0.17, xref="paper", yref="paper", xanchor="left", yanchor="middle", showarrow=False,
        text="Solid: local, first-touch   ·   Hatched: remote, interleaved", font=dict(size=14, color=INK_2),
    )
    for ann in fig.layout.annotations:
        ann.font = dict(size=14, color=INK_2)
    return fig


def dual_efficiency_figure(de: pd.DataFrame):
    """Two-process rate ÷ the sum of the isolated sockets, one dot per pair.

    ``de`` has ``label``, ``efficiency``, ``colour`` (a hex) and ``memory_mode``.  A dot
    plot on a narrow axis around 1: bars from a truncated axis would make a 1%
    difference look large.  The shaded band is ±2%.
    """

    fig = go.Figure()
    fig.add_hrect(y0=0.98, y1=1.02, fillcolor=GRID, opacity=0.6, line_width=0, layer="below")
    fig.add_hline(y=1.0, line=dict(color=MUTED, width=1.5))
    for mode, symbol in (("flat", "circle"), ("cache", "diamond")):
        part = de[de.memory_mode.eq(mode)]
        fig.add_scatter(
            x=part.label, y=part.efficiency, mode="markers", name={"flat": "Flat", "cache": "Cache"}[mode],
            marker=dict(symbol=symbol, size=10, color=part.colour, line=dict(color=INK_2, width=1)),
        )
    style(fig, "Two-socket efficiency · two-process rate ÷ sum of isolated sockets", "", "Efficiency", 520)
    fig.update_yaxes(range=[0.96, 1.04], tickformat=".2f")
    fig.update_xaxes(tickangle=-40)
    fig.update_layout(margin=dict(l=85, r=40, t=85, b=170), legend=dict(orientation="h", x=0, y=-0.5))
    return fig


def repeat_runs_figure(launches: pd.DataFrame):
    """Independent launches of each headline quantity, relative to the mean of its launches.

    ``launches`` has ``quantity``, ``memory_mode`` and ``relative``.  One row per mode and quantity,
    one dot per launch; the thin line joins the lowest and highest launch.  The band is the
    ±2% acceptance threshold, so a row inside it repeats within the tolerance.
    """

    fig = go.Figure()
    fig.add_vrect(x0=0.98, x1=1.02, fillcolor=GRID, opacity=0.6, line_width=0, layer="below")
    fig.add_vline(x=1.0, line=dict(color=MUTED, width=1.5))
    launches = launches.assign(row=launches.memory_mode.str.capitalize() + " · " + launches.quantity)
    order = list(dict.fromkeys(launches.sort_values(["memory_mode", "quantity"]).row))
    for mode, symbol, label in (("flat", "circle", "Flat · three launches, one node"), ("cache", "diamond", "Cache · three launches, one node")):
        part = launches[launches.memory_mode.eq(mode)]
        if part.empty:
            continue
        for row, rows in part.groupby("row"):
            fig.add_scatter(
                x=[rows.relative.min(), rows.relative.max()], y=[row] * 2, mode="lines", showlegend=False,
                line=dict(color=INK_2, width=1.5), hoverinfo="skip",
            )
        fig.add_scatter(
            x=part.relative, y=part.row, mode="markers", name=label,
            marker=dict(symbol=symbol, size=10, color=MUTED, line=dict(color=INK_2, width=1)),
            hovertemplate="%{y}: %{x:.4f} × mean<extra></extra>",
        )
    style(fig, "Repeatability · each launch ÷ mean of three independent launches", "Launch median ÷ mean of launches", "", 200 + 26 * len(order))
    fig.update_yaxes(categoryorder="array", categoryarray=order[::-1], showgrid=False)
    fig.update_xaxes(tickformat=".3f", range=[0.97, 1.03])
    fig.update_layout(margin=dict(l=240, r=40, t=85, b=110), legend=dict(orientation="h", x=0, y=-0.25))
    return fig


# --------------------------------------------------------- follow-up figures
def counted_ratio_figure(t: pd.DataFrame):
    """Counted over modeled DRAM traffic, one dot per workload.

    ``t`` has ``label``, ``counted_over_modeled`` and ``config`` (a palette key).  The line
    at 1 means the traffic model describes what the cores moved; the band is ±2%.
    """

    fig = go.Figure()
    fig.add_vrect(x0=0.98, x1=1.02, fillcolor=GRID, opacity=0.6, line_width=0, layer="below")
    fig.add_vline(x=1.0, line=dict(color=MUTED, width=1.5))
    fig.add_scatter(
        x=t.counted_over_modeled, y=t.label, mode="markers", showlegend=False,
        marker=dict(size=11, color=[CONFIG_COLORS[c] for c in t.config], line=dict(color=INK_2, width=1)),
        hovertemplate="%{y}: %{x:.3f}<extra></extra>",
    )
    style(fig, "Counted against modeled DRAM traffic · one dot per workload", "Counted ÷ modeled bytes", "", 160 + 24 * len(t))
    fig.update_yaxes(autorange="reversed", showgrid=False)
    fig.update_xaxes(range=[0.75, 1.5])
    fig.update_layout(margin=dict(l=250, r=40, t=85, b=70))
    return fig


def remote_threads_figure(rt: pd.DataFrame):
    """Local and remote bandwidth against thread count for socket 0 (the remote-HBM repeat).

    Colour is the tier, filled markers are local memory and open markers remote memory.
    """

    fig = go.Figure()
    series = [("hbm", "read", "HBM read", "circle"), ("hbm", "triad_nt", "HBM non-temporal Triad", "square"), ("ddr", "read", "DDR read", "diamond")]
    for tier, kernel, name, symbol in series:
        part = rt[rt.memory_target.eq(tier) & rt.kernel.eq(kernel) & rt.socket.eq(0)].sort_values("threads")
        color = CONFIG_COLORS["flat_hbm" if tier == "hbm" else "flat_ddr"]
        fig.add_scatter(
            x=part.threads, y=part.gbs_local, mode="lines+markers", name=f"{name} · local",
            line=dict(color=color, width=2), marker=dict(size=9, symbol=symbol, color=color, line=dict(color=SURFACE, width=1.5)),
        )
        fig.add_scatter(
            x=part.threads, y=part.gbs_remote, mode="lines+markers", name=f"{name} · remote",
            error_y=dict(type="data", array=part.gbs_remote * part.cv_remote / 100, color=INK_2, thickness=1),
            line=dict(color=color, width=1.5), marker=dict(size=9, symbol=f"{symbol}-open", color=color, line=dict(color=color, width=2)),
        )
    style(fig, "Remote and local bandwidth against core count · socket 0, 8 GiB, 5 s windows", "Cores", "GB/s", 560)
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1, 4, 14, 28, 56], ticktext=["1", "4", "14", "28", "56"])
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.3))
    return fig


def gemm_pool_figure(pool: pd.DataFrame):
    """GEMM bandwidth at M=1 against the size of the weight pool, modeled and counted.

    ``pool`` has ``memory_target``, ``dtype``, ``pool_x``, ``modeled_gbs`` and ``counted_gbs``.
    Hollow markers are modeled bytes, filled markers counted bytes; once the pool is large
    enough to defeat the caches the two meet.
    """

    fig = go.Figure()
    for tier, color in (("hbm", CONFIG_COLORS["flat_hbm"]), ("ddr", CONFIG_COLORS["flat_ddr"])):
        for dtype, symbol in (("bf16", "circle"), ("int8", "diamond")):
            part = pool[pool.memory_target.eq(tier) & pool["dtype"].eq(dtype)].sort_values("pool_x")
            label = f"{'HBM' if tier == 'hbm' else 'DDR'} {dtype.upper()}"
            fig.add_scatter(
                x=part.pool_x, y=part.modeled_gbs, mode="lines+markers", name=f"{label} · modeled", legendgroup=label,
                line=dict(color=color, width=1.5), marker=dict(size=10, symbol=f"{symbol}-open", color=color, line=dict(color=color, width=2)),
            )
            fig.add_scatter(
                x=part.pool_x, y=part.counted_gbs, mode="lines+markers", name=f"{label} · counted", legendgroup=label,
                line=dict(color=color, width=2.2), marker=dict(size=9, symbol=symbol, color=color, line=dict(color=SURFACE, width=1.5)),
            )
    style(fig, "GEMM bandwidth at M=1 against weight-pool size · 14336×4096", "Weight pool (× on-chip capacity of 225 MiB)", "GB/s", 560)
    fig.update_xaxes(type="log", tickmode="array", tickvals=[4, 16, 64], ticktext=["4×", "16×", "64×"])
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.3))
    return fig


def gemm_prepacked_figure(pk: pd.DataFrame):
    """Speed-up of BF16 with prepacked weights over plain weights, one dot per case."""

    pk = pk.assign(label=lambda f: f.memory_target.str.upper() + " " + f["shape"] + " · M=" + f.m.astype(int).astype(str)).sort_values(["memory_target", "shape", "m"])
    fig = go.Figure()
    fig.add_vline(x=1.0, line=dict(color=MUTED, width=1.5))
    fig.add_scatter(
        x=pk.speedup, y=pk.label, mode="markers", showlegend=False,
        marker=dict(size=11, color=[CONFIG_COLORS["flat_hbm" if t == "hbm" else "flat_ddr"] for t in pk.memory_target], line=dict(color=INK_2, width=1)),
        hovertemplate="%{y}: %{x:.2f}×<extra></extra>",
    )
    style(fig, "BF16 with prepacked weights ÷ plain weights · 4× pool", "Throughput ratio", "", 160 + 24 * len(pk))
    fig.update_yaxes(autorange="reversed", showgrid=False)
    fig.update_layout(margin=dict(l=220, r=40, t=85, b=70))
    return fig


def cache_latency_figure(cache: pd.DataFrame, flat: dict[str, float], flat_far: pd.DataFrame | None = None):
    """Cache-mode idle latency against working set, with the Flat tiers as the control.

    ``cache`` has ``working_set_gib`` and ``latency_ns``; ``flat`` maps ``DDR`` and ``HBM`` to
    their idle latency at the 4 GiB reference size.  ``flat_far`` (``config``, ``working_set_gib``,
    ``latency_ns``) is the same chase on Flat memory at 16 GiB and beyond: where given, the Flat
    tiers are drawn as lines over the working set (the 4 GiB reference joins them), so what
    translation alone adds can be read against what Cache mode adds.  The HBM cache capacity
    is marked.
    """

    fig = go.Figure()
    for name, key in (("Flat DDR", "flat_ddr"), ("Flat HBM", "flat_hbm")):
        value = flat["DDR" if "DDR" in name else "HBM"]
        if flat_far is None:
            fig.add_hline(y=value, line=dict(color=CONFIG_COLORS[key], width=2))
            fig.add_annotation(
                x=1.0, xref="paper", y=value, yref="y", text=f"{name} {value:.0f} ns", showarrow=False, xanchor="right", yanchor="bottom",
                font=dict(size=12, color=INK_2),
            )
            continue
        far = flat_far[flat_far.config.eq(key)].sort_values("working_set_gib")
        x = [4.0, *far.working_set_gib]
        y = [value, *far.latency_ns]
        fig.add_scatter(
            x=x, y=y, mode="lines+markers", name=name, line=dict(color=CONFIG_COLORS[key], width=2.2),
            marker=dict(size=8, color=CONFIG_COLORS[key], line=dict(color=SURFACE, width=1.5)),
        )
        fig.add_annotation(x=np.log10(x[-1]), y=y[-1], xref="x", yref="y", text=name, showarrow=False, xanchor="left", yanchor="middle", xshift=8,
                           font=dict(size=12, color=INK_2))
    part = cache.sort_values("working_set_gib")
    fig.add_scatter(
        x=part.working_set_gib, y=part.latency_ns, mode="lines+markers", name="Cache mode",
        line=dict(color=CONFIG_COLORS["cache"], width=2.2), marker=dict(size=10, color=CONFIG_COLORS["cache"], line=dict(color=SURFACE, width=1.5)),
    )
    if flat_far is not None:
        fig.add_annotation(x=np.log10(part.working_set_gib.iloc[-1]), y=part.latency_ns.iloc[-1], xref="x", yref="y", text="Cache", showarrow=False,
                           xanchor="left", yanchor="middle", xshift=8, font=dict(size=12, color=INK_2))
    fig.add_vline(x=64, line=dict(color=MUTED, width=1))
    fig.add_annotation(x=np.log10(64), y=1.0, xref="x", yref="paper", text="HBM cache 64 GiB", showarrow=False, yanchor="bottom", font=dict(size=12, color=INK_2))
    style(fig, "Idle load latency against working set · Cache mode and the Flat control", "Working set (GiB)", "ns per dependent load", 480)
    fig.update_xaxes(type="log", tickmode="array", tickvals=[4, 16, 32, 64, 96, 128], ticktext=["4", "16", "32", "64", "96", "128"],
                     range=[np.log10(3.2), np.log10(170)])
    fig.update_yaxes(rangemode="tozero")
    fig.update_layout(showlegend=False, margin=dict(l=85, r=70, t=85, b=70))
    return fig


def loaded_latency_figure(loaded: pd.DataFrame):
    """Load-latency curve: dependent-load latency of one core against what the other cores stream.

    ``loaded`` is :func:`hwbench.report.loaded_latency`.  Each point is a number of streaming
    cores (labelled from 14), at the aggregate rate they reached; the idle latency is the first point
    of each curve (no streaming cores).
    """

    fig = go.Figure()
    for key in ("flat_ddr", "flat_hbm"):
        part = loaded[loaded.config.eq(key)].sort_values("stream_cores")
        idle = float(part.idle_ns.iloc[0])
        fig.add_scatter(
            x=[0, *part.stream_gbs], y=[idle, *part.loaded_ns], mode="lines+markers+text", name=CONFIG_LABELS[key],
            text=["", *[f"{int(n)} cores" if n >= 14 else "" for n in part.stream_cores]],
            textposition="bottom right" if key == "flat_ddr" else "top center", textfont=dict(size=11, color=INK_2),
            line=dict(color=CONFIG_COLORS[key], width=2.2),
            marker=dict(size=9, color=CONFIG_COLORS[key], line=dict(color=SURFACE, width=1.5)),
            hovertemplate="%{x:.0f} GB/s streamed · %{y:.0f} ns<extra></extra>",
        )
    style(fig, "Dependent-load latency beside streaming cores · Flat, one socket", "Read bandwidth of the streaming cores (GB/s)", "ns per dependent load", 480)
    fig.update_yaxes(rangemode="tozero")
    fig.update_xaxes(rangemode="tozero")
    return fig


# ------------------------------------------------- privileged uncore counters (U1-U4, R3)
KERNEL_SYMBOLS = {"read": "circle", "triad": "square", "copy_nt": "diamond"}
KERNEL_NAMES = {"read": "read", "triad": "Triad", "copy_nt": "copy, non-temporal"}


def controller_ratio_figure(ct: pd.DataFrame):
    """Controller bytes over modeled bytes (filled) and over per-core counted bytes (open).

    ``ct`` is ``report.controller_table``; one row of markers per stream and tier, against
    the core count.  The band is the ±2% acceptance of the review.
    """

    fig = go.Figure()
    fig.add_hrect(y0=0.98, y1=1.02, fillcolor=GRID, opacity=0.6, line_width=0, layer="below")
    fig.add_hline(y=1.0, line=dict(color=MUTED, width=1.5))
    for tier in ("ddr", "hbm"):
        color = CONFIG_COLORS[f"flat_{tier}"]
        for kernel, symbol in KERNEL_SYMBOLS.items():
            part = ct[ct.memory_target.eq(tier) & ct.kernel.eq(kernel)].sort_values("threads")
            if part.empty:
                continue
            label = f"{tier.upper()} {KERNEL_NAMES[kernel]}"
            fig.add_scatter(
                x=part.threads, y=part.ctrl_over_modeled, mode="lines+markers", name=f"{label} · ÷ modeled", legendgroup=label,
                line=dict(color=color, width=1.5), marker=dict(size=10, symbol=symbol, color=color, line=dict(color=SURFACE, width=1.5)),
            )
            fig.add_scatter(
                x=part.threads, y=part.ctrl_over_counted, mode="markers", name=f"{label} · ÷ counted by the cores", legendgroup=label,
                marker=dict(size=10, symbol=f"{symbol}-open", color=color, line=dict(color=color, width=2)),
            )
    style(fig, "Memory-controller bytes against the traffic model and the cores' own counts · Flat, socket 0, 8 GiB", "Cores", "Controller ÷ other bytes", 600)
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1, 14, 28, 56], ticktext=["1", "14", "28", "56"])
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.22, font=dict(size=12)), margin=dict(b=190))
    return fig


def power_clock_figure(pt: pd.DataFrame):
    """Package power (left) and core and uncore clocks (right) against cores, per stream and tier.

    ``pt`` is ``report.power_table`` (stream rows).  On the right, solid lines are the core
    clock and dotted lines the uncore (CHA) clock; markers with a white centre mark windows
    in which the PCU clipped the frequency for power more than half the time.
    """

    fig = make_subplots(rows=1, cols=2, subplot_titles=("Package power, computing socket", "Clocks"), horizontal_spacing=0.1)
    data = pt[pt.memory_target.isin(["ddr", "hbm"])]
    for tier in ("ddr", "hbm"):
        color = CONFIG_COLORS[f"flat_{tier}"]
        for kernel, symbol in KERNEL_SYMBOLS.items():
            part = data[data.memory_target.eq(tier) & data.kernel.eq(kernel)].sort_values("threads")
            if part.empty:
                continue
            label = f"{tier.upper()} {KERNEL_NAMES[kernel]}"
            limited = part.power_limited.gt(0.5)
            marker = dict(size=9, symbol=symbol, color=[SURFACE if x else color for x in limited], line=dict(color=color, width=2))
            fig.add_scatter(x=part.threads, y=part.pkg_w, mode="lines+markers", name=label, legendgroup=label,
                            line=dict(color=color, width=1.5), marker=marker, row=1, col=1)
            fig.add_scatter(x=part.threads, y=part.core_ghz, mode="lines+markers", name=label, legendgroup=label, showlegend=False,
                            line=dict(color=color, width=1.5), marker=marker, row=1, col=2)
            fig.add_scatter(x=part.threads, y=part.uncore_ghz, mode="lines+markers", name=f"{label} · uncore", legendgroup=label, showlegend=False,
                            line=dict(color=color, width=1.5, dash="dot"), marker=dict(size=7, symbol=symbol, color=color), row=1, col=2)
    style(fig, "Power and clocks of the streams · Flat, socket 0 · open markers: power-limited more than half the time", "", "", 560)
    for col in (1, 2):
        fig.update_xaxes(title_text="Cores", type="log", tickmode="array", tickvals=[1, 14, 28, 56], ticktext=["1", "14", "28", "56"], row=1, col=col)
    fig.update_yaxes(title_text="W", row=1, col=1)
    fig.update_yaxes(title_text="GHz (solid core, dotted uncore)", row=1, col=2)
    fig.update_layout(legend=dict(orientation="h", x=0, y=-0.25, font=dict(size=12)))
    return fig


def uncore_timeline_figure(series: pd.DataFrame, tier: str, title: str):
    """Controller bandwidth, package power and uncore clock per 100 ms interval of one record.

    Shaded bands are the five timed windows; what lies before the first is the warm-up.
    """

    fig = make_subplots(rows=3, cols=1, shared_xaxes=True, vertical_spacing=0.06,
                        subplot_titles=(f"{tier.upper()} controller bandwidth, socket 0", "Package power, socket 0", "Uncore clock, socket 0"))
    color = CONFIG_COLORS[f"flat_{tier}"]
    for row, column, unit in ((1, f"{tier}_gbs_s0", "GB/s"), (2, "pkg_w_s0", "W"), (3, "uncore_ghz_s0", "GHz")):
        fig.add_scatter(x=series.t_s, y=series[column], mode="lines+markers", showlegend=False,
                        line=dict(color=color, width=2, shape="hv"), marker=dict(size=4, color=color), row=row, col=1)
        fig.update_yaxes(title_text=unit, row=row, col=1)
    for i, (start, end) in enumerate(series.attrs.get("windows", [])):
        if i % 2 == 0:
            fig.add_vrect(x0=start, x1=end, fillcolor=GRID, opacity=0.6, line_width=0, layer="below")
        fig.add_annotation(x=(start + end) / 2, y=0.02, xref="x3", yref="y3 domain", yanchor="bottom", text=f"window {i + 1}",
                           showarrow=False, font=dict(size=12, color=INK_2))
    style(fig, title, "", "", 720)
    fig.update_xaxes(title_text="Seconds after the first timed window starts", row=3, col=1)
    return fig
