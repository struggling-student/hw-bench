"""Selected hardware evidence, shared summaries, and eight thesis figures."""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import numpy as np
import pandas as pd
import plotly.graph_objects as go
from plotly.subplots import make_subplots

from hwbench.theory import Theory

ROOT = Path(__file__).resolve().parents[2]
COLORS = {
    "ddr": "#2A78D6",
    "hbm": "#EB6834",
    "effective_cache": "#1BAF7A",
    "fp64": "#B3ABF0",
    "fp32": "#8754A1",
    "native_amx_4_tiles": "#8754A1",
    "onednn_numactl_only_omp_affinity_unset": "#B76C23",
}
LABELS = {
    "ddr": "DDR",
    "hbm": "HBM",
    "effective_cache": "Cache effective",
    "native_amx_4_tiles": "Native AMX tiles",
    "onednn_numactl_only_omp_affinity_unset": "oneDNN GEMM (6144³)",
}
NUMERIC = [
    "socket",
    "memory_socket",
    "threads",
    "working_set_bytes",
    "working_set_gib",
    "iteration",
    "elapsed_seconds",
    "bandwidth_gbs",
    "performance_gops",
    "arithmetic_intensity",
    "latency_ns",
    "m",
    "n",
    "k",
    "start_ns",
    "end_ns",
    "operations",
    "modeled_bytes",
    "cycles",
    "instructions",
    "ref_cycles",
    "dram_read_lines",
    "dram_write_lines",
    "counted_bytes",
]
# Columns that identify one measured configuration independently of the campaign.
CONFIGURATION = [
    "memory_mode",
    "socket_scope",
    "socket",
    "memory_socket",
    "memory_target",
    "benchmark",
    "dtype",
    "m",
    "n",
    "k",
    "threads",
    "working_set_bytes",
    "notes",
]
def _model_specs():
    """Per-dtype architectural bound, read from the one theory source (``configs/theory.toml``)."""

    theory = Theory.load()
    return {
        "base_ghz": theory.base_ghz,
        "max_turbo_ghz": theory.max_turbo_ghz,
        "fp64": theory.isa("fp64").ops_per_cycle,
        "fp32": theory.isa("fp32").ops_per_cycle,
        "bf16": theory.isa("amx_bf16").ops_per_cycle,
    }


MODEL_SPECS = _model_specs()


def load_measurements(path):
    frame = pd.read_csv(path)
    for col in NUMERIC:
        if col in frame:
            frame[col] = pd.to_numeric(frame[col], errors="coerce")
    for col in ["accepted", "synchronized"]:
        if col in frame:
            frame[col] = frame[col].astype(str).str.lower().eq("true")
    return frame


def select_measurements(df, policy=None, include_rejected=False):
    policy = policy or json.loads((ROOT / "configs/analysis.json").read_text())
    selected = df[
        df.phase.eq("steady") & (True if include_rejected else df.accepted)
    ].copy()
    mask = pd.Series(False, index=selected.index)
    for mode, campaign in policy["primary_campaigns"].items():
        overrides = policy.get("benchmark_campaigns", {}).get(mode, {})
        mask |= (
            selected.memory_mode.eq(mode)
            & selected.campaign_id.eq(campaign)
            & ~selected.benchmark.isin(overrides)
        )
        for benchmark, override in overrides.items():
            mask |= (
                selected.memory_mode.eq(mode)
                & selected.benchmark.eq(benchmark)
                & selected.campaign_id.eq(override)
            )
    for mode, campaign in policy.get("supersede", {}).items():
        mask |= selected.memory_mode.eq(mode) & selected.campaign_id.eq(campaign)
    selected = selected[mask]
    # A campaign named under "supersede" repeats configurations of the primary
    # campaigns under better conditions (longer synchronized windows); it replaces
    # exactly the configurations it measured and nothing else.
    for mode, campaign in policy.get("supersede", {}).items():
        in_mode = selected.memory_mode.eq(mode)
        replacement = selected[in_mode & selected.campaign_id.eq(campaign)]
        keys = pd.MultiIndex.from_frame(replacement[CONFIGURATION].fillna("-"))
        configured = pd.MultiIndex.from_frame(selected[CONFIGURATION].fillna("-"))
        superseded = in_mode & ~selected.campaign_id.eq(campaign) & configured.isin(keys)
        selected = selected[~superseded]
    return selected.copy()


def stats(data, keys, metric):
    if data.empty:
        return pd.DataFrame(
            columns=keys + ["n_samples", "median", "std", "minimum", "maximum"]
        )
    return (
        data.groupby(keys, dropna=False, sort=True)[metric]
        .agg(
            n_samples="count", median="median", std="std", minimum="min", maximum="max"
        )
        .reset_index()
    )


def memory_table(df):
    data = df[
        df.benchmark.eq("stream_triad")
        & df.socket_scope.eq("single")
        & df.locality.eq("local")
        & df.threads.eq(56)
        & df.notes.isin(["core_scaling", "capacity"])
    ]
    return stats(
        data,
        [
            "campaign_id",
            "memory_mode",
            "socket",
            "memory_target",
            "threads",
            "working_set_gib",
        ],
        "bandwidth_gbs",
    )


def compute_table(df):
    data = df[
        df.benchmark.isin(["avx512_peak", "amx_peak", "amx_onednn_gemm"])
        & df.socket_scope.eq("single")
        & df.threads.eq(56)
    ]
    return stats(
        data,
        [
            "campaign_id",
            "memory_mode",
            "socket",
            "dtype",
            "implementation",
            "m",
            "n",
            "k",
            "threads",
        ],
        "performance_gops",
    )


def locality_table(df):
    data = df[
        df.benchmark.isin(["stream_triad", "pointer_chase"])
        & df.socket_scope.eq("single")
        & df.notes.isin(["core_scaling", "locality", "idle_latency"])
    ]
    data = data[
        (data.benchmark.eq("pointer_chase"))
        | (data.threads.eq(56) & np.isclose(data.working_set_gib, 8))
    ]
    rows = []
    for benchmark, metric in [
        ("stream_triad", "bandwidth_gbs"),
        ("pointer_chase", "latency_ns"),
    ]:
        part = stats(
            data[data.benchmark.eq(benchmark)],
            [
                "campaign_id",
                "memory_mode",
                "socket",
                "memory_target",
                "locality",
                "threads",
                "working_set_gib",
            ],
            metric,
        )
        part["metric"] = metric
        rows.append(part)
    return pd.concat(rows, ignore_index=True)


def scaling_table(df):
    rows = []
    dual = df[df.socket_scope.eq("dual") & df.synchronized]
    keys = [
        "campaign_id",
        "memory_mode",
        "benchmark",
        "memory_target",
        "implementation",
        "dtype",
        "kernel",
        "m",
        "n",
        "k",
        "working_set_bytes",
    ]
    for key, group in dual.groupby(keys, dropna=False):
        selector = pd.Series(True, index=df.index)
        for col, value in zip(keys, key):
            selector &= df[col].isna() if pd.isna(value) else df[col].eq(value)
        single = df[
            selector
            & df.socket_scope.eq("single")
            & df.threads.eq(56)
            & df.locality.eq("local")
            & df.notes.isin(["compute_scaling", "core_scaling"])
        ]
        metric = "bandwidth_gbs" if key[2] == "stream_triad" else "performance_gops"
        baselines = single.groupby("socket")[metric].median()
        if set(baselines.index) != {0, 1}:
            raise ValueError(f"Missing isolated socket baselines for {key}")
        summed = float(baselines.sum())
        value = float(group[metric].median())
        rows.append(
            dict(
                zip(keys, key),
                single_socket0=float(baselines.loc[0]),
                single_socket1=float(baselines.loc[1]),
                isolated_sum=summed,
                dual_median=value,
                efficiency=value / summed,
                n_samples=len(group),
                metric=metric,
                overlap_min=float(group.overlap_fraction.min()),
            )
        )
    return pd.DataFrame(rows)


def knees_table(df):
    rows = []
    mem = memory_table(df)
    comp = compute_table(df)
    for _, m in mem.iterrows():
        if (m.memory_mode == "flat" and not np.isclose(m.working_set_gib, 8)) or (
            m.memory_mode == "cache"
            and not any(np.isclose(m.working_set_gib, v) for v in [16, 96])
        ):
            continue
        paths = comp[comp.memory_mode.eq(m.memory_mode) & comp.socket.eq(m.socket)]
        for _, c in paths.iterrows():
            if (
                c.implementation == "onednn_numactl_only_omp_affinity_unset"
                and c.m != 6144
            ):
                continue
            rows.append(
                dict(
                    memory_campaign_id=m.campaign_id,
                    compute_campaign_id=c.campaign_id,
                    memory_mode=m.memory_mode,
                    socket=m.socket,
                    memory_target=m.memory_target,
                    working_set_gib=m.working_set_gib,
                    dtype=c["dtype"],
                    implementation=c.implementation,
                    compute_gflops=c["median"],
                    bandwidth_kernel="triad (October core scaling)",
                    bandwidth_gbs=m["median"],
                    knee_flop_per_byte=c["median"] / m["median"],
                )
            )
    return pd.DataFrame(rows)


def theoretical_table(df):
    table = compute_table(df)
    for col in ["reference_base_tflops", "reference_max_turbo_tflops"]:
        clock = MODEL_SPECS[
            "base_ghz" if col == "reference_base_tflops" else "max_turbo_ghz"
        ]
        table[col] = table.dtype.map(MODEL_SPECS) * table.threads * clock / 1000
    table["measured_tflops"] = table["median"] / 1000
    return table[
        [
            "memory_mode",
            "socket",
            "dtype",
            "implementation",
            "m",
            "measured_tflops",
            "reference_base_tflops",
            "reference_max_turbo_tflops",
        ]
    ]


def concurrent_table(df):
    rows = []
    for socket in [0, 1]:
        for scope, target, label, notes in [
            ("single", "ddr", "DDR, 28 assigned cores", "split_control"),
            ("single", "hbm", "HBM, 28 assigned cores", "split_control"),
            ("concurrent_tier_component", "ddr", "DDR while HBM active", "split"),
            ("concurrent_tier_component", "hbm", "HBM while DDR active", "split"),
            ("concurrent_tiers", "ddr+hbm", "Combined, 28+28 cores", "split"),
            ("single", "hbm", "HBM, all 56 cores", "core_scaling"),
        ]:
            a = df[
                df.memory_mode.eq("flat")
                & df.socket.eq(socket)
                & df.socket_scope.eq(scope)
                & df.memory_target.eq(target)
                & df.notes.eq(notes)
                & df.benchmark.eq("stream_triad")
            ]
            if label == "HBM, all 56 cores":
                a = a[a.threads.eq(56)]
            if a.empty:
                continue
            rows.append(
                dict(
                    campaign_id=";".join(sorted(a.campaign_id.unique())),
                    socket=socket,
                    case=label,
                    cpu_bind=a.cpu_bind.iloc[0],
                    working_set_gib=a.working_set_gib.iloc[0],
                    median_gbs=a.bandwidth_gbs.median(),
                    std_gbs=a.bandwidth_gbs.std(),
                    n_samples=len(a),
                )
            )
    return pd.DataFrame(rows)


def style(fig, title, x, y, height=490):
    """Shared figure chrome: recessive solid hairline grid, ink text, legend under the plot."""

    fig.update_layout(
        template="plotly_white",
        title=dict(text=title, x=0.04, font=dict(size=20, color="#0B0B0B")),
        width=1000,
        height=height,
        font=dict(family="Arial", size=15, color="#52514E"),
        margin=dict(l=85, r=40, t=85, b=125),
        legend=dict(orientation="h", x=0, y=-0.25),
        hovermode="closest",
        paper_bgcolor="#FCFCFB",
        plot_bgcolor="#FCFCFB",
    )
    fig.update_xaxes(title_text=x, showgrid=True, gridcolor="#E1E0D9", zeroline=False, linecolor="#C3C2B7")
    fig.update_yaxes(title_text=y, showgrid=True, gridcolor="#E1E0D9", zeroline=False, linecolor="#C3C2B7")
    return fig


def _trace(fig, part, col, label, color, scale=1, dash="solid"):
    fig.add_scatter(
        x=part.threads,
        y=part["median"] / scale,
        mode="lines+markers",
        name=label,
        legendgroup=label,
        showlegend=col == 1,
        line=dict(color=color, width=2.5, dash=dash),
        marker=dict(size=7),
        error_y=dict(type="data", array=part["std"].fillna(0) / scale),
        row=1,
        col=col,
    )


def bandwidth_scaling(df):
    a = df[
        df.benchmark.eq("stream_triad")
        & df.socket_scope.eq("single")
        & df.notes.eq("core_scaling")
    ]
    fig = make_subplots(rows=1, cols=2, subplot_titles=["Socket 0", "Socket 1"])
    for col, socket in enumerate([0, 1], 1):
        for mode, target in [
            ("flat", "ddr"),
            ("flat", "hbm"),
            ("cache", "effective_cache"),
        ]:
            part = stats(
                a[
                    a.socket.eq(socket)
                    & a.memory_mode.eq(mode)
                    & a.memory_target.eq(target)
                ],
                ["threads"],
                "bandwidth_gbs",
            )
            _trace(fig, part, col, LABELS[target], COLORS[target])
    style(fig, "Sustainable bandwidth · 8 GiB per socket", "Physical cores", "GB/s")
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1, 2, 4, 8, 14, 28, 56])
    fig.update_yaxes(rangemode="tozero")
    return fig


def cache_working_set(df):
    a = memory_table(df)
    a = a[a.memory_mode.eq("cache")]
    fig = go.Figure()
    for socket, color in [(0, "#268270"), (1, "#8754A1")]:
        part = a[a.socket.eq(socket)].sort_values("working_set_gib")
        fig.add_scatter(
            x=part.working_set_gib,
            y=part["median"],
            mode="lines+markers",
            name=f"Socket {socket}",
            line=dict(color=color, width=2.5),
            error_y=dict(type="data", array=part["std"].fillna(0)),
            marker=dict(size=8),
        )
    fig.add_vline(
        x=64,
        line_dash="dot",
        line_color="#777",
        annotation_text="Nominal HBM capacity",
        annotation_position="top right",
    )
    style(
        fig,
        "Cache mode · effective bandwidth versus working set",
        "Active working set per socket (GiB)",
        "GB/s",
    )
    fig.update_xaxes(tickmode="array", tickvals=[8, 16, 32, 48, 64, 96, 128])
    fig.update_yaxes(rangemode="tozero")
    return fig


def locality_figure(df, metric):
    table = locality_table(df)
    table = table[table.memory_mode.eq("flat") & table.metric.eq(metric)]
    fig = make_subplots(rows=1, cols=2, subplot_titles=["CPU socket 0", "CPU socket 1"])
    for col, socket in enumerate([0, 1], 1):
        for target in ["ddr", "hbm"]:
            part = (
                table[table.socket.eq(socket) & table.memory_target.eq(target)]
                .set_index("locality")
                .reindex(["local", "remote"])
            )
            fig.add_bar(
                x=["Local", "Remote"],
                y=part["median"],
                error_y=dict(type="data", array=part["std"]),
                name=LABELS[target],
                legendgroup=target,
                showlegend=col == 1,
                marker_color=COLORS[target],
                row=1,
                col=col,
            )
    latency = metric == "latency_ns"
    style(
        fig,
        "Idle dependent-load latency · 1 GiB"
        if latency
        else "NUMA placement cost · 56 cores, 8 GiB",
        "Memory placement",
        "ns/load" if latency else "GB/s",
    )
    fig.update_layout(barmode="group")
    fig.update_yaxes(rangemode="tozero")
    return fig


def compute_scaling(df, family):
    a = df[df.socket_scope.eq("single") & df.notes.eq("compute_scaling")]
    # Flat measurements provide the illustrated scaling; Cache values remain in numerical tables.
    a = a[a.memory_mode.eq("flat")]
    fig = make_subplots(rows=1, cols=2, subplot_titles=["Socket 0", "Socket 1"])
    for col, socket in enumerate([0, 1], 1):
        cases = (
            [("fp64", "avx512_peak"), ("fp32", "avx512_peak")]
            if family == "avx512"
            else [("bf16", "amx_peak"), ("bf16", "amx_onednn_gemm")]
        )
        for dtype, benchmark in cases:
            part = a[
                a.socket.eq(socket) & a.dtype.eq(dtype) & a.benchmark.eq(benchmark)
            ]
            if part.empty:
                continue
            impl = part.implementation.iloc[0]
            label = dtype.upper() if family == "avx512" else LABELS[impl]
            result = stats(part, ["threads"], "performance_gops")
            _trace(
                fig,
                result,
                col,
                label,
                COLORS[dtype if family == "avx512" else impl],
                1000,
            )
    style(
        fig,
        "AVX-512 register FMA throughput"
        if family == "avx512"
        else "BF16 · native AMX tiles and achieved GEMM",
        "Physical cores",
        "TFLOP/s",
    )
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1, 2, 4, 8, 14, 28, 56])
    fig.update_yaxes(rangemode="tozero")
    return fig


def fp64_rooflines(df, socket=0):
    fig = make_subplots(
        rows=1,
        cols=2,
        subplot_titles=[
            "Flat: explicit DDR / HBM",
            "Cache: effective working-set cases",
        ],
    )
    knees = knees_table(df)
    knees = knees[knees.socket.eq(socket) & knees.dtype.eq("fp64")]
    x = np.geomspace(0.08, 64, 200)
    for col, mode in enumerate(["flat", "cache"], 1):
        for _, r in knees[knees.memory_mode.eq(mode)].iterrows():
            label = (
                LABELS[r.memory_target]
                if mode == "flat"
                else f"Cache {r.working_set_gib:.0f} GiB"
            )
            color = (
                COLORS[r.memory_target]
                if mode == "flat"
                else ("#268270" if r.working_set_gib < 64 else "#B76C23")
            )
            fig.add_scatter(
                x=x,
                y=np.minimum(r.compute_gflops, r.bandwidth_gbs * x) / 1000,
                mode="lines",
                name=label,
                line=dict(color=color, width=2.5),
                row=1,
                col=col,
            )
            points = df[
                df.benchmark.eq("roofline_sweep")
                & df.socket.eq(socket)
                & df.memory_mode.eq(mode)
                & df.memory_target.eq(r.memory_target)
                & np.isclose(df.working_set_gib, r.working_set_gib, atol=0.01)
            ]
            part = stats(points, ["arithmetic_intensity"], "performance_gops")
            fig.add_scatter(
                x=part.arithmetic_intensity,
                y=part["median"] / 1000,
                mode="markers",
                name=label + " measured",
                showlegend=False,
                marker=dict(color="white", size=8, line=dict(color=color, width=2)),
                error_y=dict(type="data", array=part["std"] / 1000),
                row=1,
                col=col,
            )
    style(
        fig,
        f"FP64 empirical envelopes and intensity sweep · socket {socket}",
        "Modeled FLOP/byte",
        "TFLOP/s",
        540,
    )
    fig.update_xaxes(type="log", tickmode="array", tickvals=[0.1, 1, 10, 64])
    fig.update_yaxes(type="log", tickmode="array", tickvals=[0.01, 0.1, 1, 10])
    return fig


def dual_scaling(df):
    t = scaling_table(df)
    fig = go.Figure()
    for mode in ["flat", "cache"]:
        part = t[t.memory_mode.eq(mode)].copy()

        def label(r):
            if r.benchmark == "stream_triad":
                return LABELS[r.memory_target] + " bandwidth"
            if r.benchmark == "amx_peak":
                return "BF16 native AMX"
            if r.benchmark == "amx_onednn_gemm":
                return "BF16 oneDNN GEMM"
            return r["dtype"].upper() + " AVX-512"

        part["case"] = [label(r) for _, r in part.iterrows()]
        fig.add_bar(
            y=part["case"],
            x=part.efficiency,
            orientation="h",
            name=mode.title(),
            marker_color="#3476A6" if mode == "flat" else "#268270",
        )
    fig.add_vline(x=1, line_dash="dot", line_color="#777")
    style(
        fig,
        "Socket scaling · simultaneous dual / sum of isolated sockets",
        "Scaling efficiency",
        "",
        570,
    )
    fig.update_layout(barmode="group", margin=dict(l=200, r=40, t=85, b=125))
    fig.update_xaxes(range=[0, max(1.15, t.efficiency.max() * 1.1)])
    return fig


def export_figure(fig, name, notebook, root=ROOT):
    """One figure object is both displayed and exported; export errors propagate."""
    directory = Path(root) / "figures" / notebook
    directory.mkdir(parents=True, exist_ok=True)
    for fmt in ["svg", "png"]:
        fig.write_image(
            str(directory / f"{name}.{fmt}"), format=fmt, scale=2 if fmt == "png" else 1
        )
    fig.show()
    print(f"Saved figures/{notebook}/{name}.svg and .png")


def write_tables(df, root=ROOT):
    directory = Path(root) / "data/processed/thesis"
    directory.mkdir(parents=True, exist_ok=True)
    for name, table in [
        ("memory", memory_table(df)),
        ("compute", compute_table(df)),
        ("locality", locality_table(df)),
        ("scaling", scaling_table(df)),
        ("knees", knees_table(df)),
        ("concurrent_tiers", concurrent_table(df)),
        ("theory", theoretical_table(df)),
    ]:
        table.to_csv(directory / f"{name}.csv", index=False, float_format="%.9g")


def main(argv=None):
    p = argparse.ArgumentParser()
    p.add_argument(
        "--measurements", type=Path, default=ROOT / "data/processed/measurements.csv"
    )
    args = p.parse_args(argv)
    write_tables(select_measurements(load_measurements(args.measurements)))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
