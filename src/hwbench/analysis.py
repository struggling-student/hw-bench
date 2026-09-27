"""Plotly figures and quantitative summaries for the CRESCO8 Roofline study."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

import numpy as np
import pandas as pd
import plotly.graph_objects as go
from plotly.subplots import make_subplots

COLORS = {"ddr": "#3274A1", "hbm": "#D64B43", "cache_resident": "#278B72",
          "cache_spill": "#A46C23", "effective_cache": "#278B72"}
MEMORY_CASES = [
    ("flat", "ddr", 8, "Flat DDR", "ddr"),
    ("flat", "hbm", 8, "Flat HBM", "hbm"),
    ("cache", "effective_cache", 16, "Cache 16 GiB", "cache_resident"),
    ("cache", "effective_cache", 96, "Cache 96 GiB", "cache_spill"),
]
DTYPE_LABELS = {"fp64": "FP64 · AVX-512", "fp32": "FP32 · AVX-512",
                "bf16": "BF16 · AMX", "int8": "INT8 · AMX"}
MODEL_SPECS = {
    "Intel(R) Xeon(R) CPU Max 9480": {
        "base_ghz": 1.9,
        "max_turbo_ghz": 3.5,
        "avx512_fp32_ops_cycle_core": 64,
        "avx512_fp64_ops_cycle_core": 32,
        "amx_bf16_ops_cycle_core": 1024,
        "amx_int8_ops_cycle_core": 2048,
        "ddr_gbs_socket": 307.2,
        "hbm_gbs_socket": 1000.0,
    }
}


def load_measurements(path: str | Path) -> pd.DataFrame:
    frame = pd.read_csv(path)
    numeric = ["socket", "threads", "physical_cores", "working_set_bytes", "working_set_gib",
               "iteration", "elapsed_seconds", "bandwidth_gbs", "operations", "performance_gops",
               "performance_gflops", "performance_tops", "arithmetic_intensity", "cpu_frequency_ghz"]
    for column in numeric:
        if column in frame:
            frame[column] = pd.to_numeric(frame[column], errors="coerce")
    return frame


def _style(fig: go.Figure, title: str, x: str, y: str, log_x: bool = False, log_y: bool = False) -> go.Figure:
    fig.update_layout(template="plotly_white", title={"text": title, "x": .04, "font": {"size": 23}},
                      xaxis_title=x, yaxis_title=y, width=1120, height=680,
                      margin={"l": 100, "r": 35, "t": 90, "b": 105},
                      legend={"orientation": "h", "x": 0, "y": -0.19, "font": {"size": 14}},
                      legend_title_text="", font={"family": "Arial", "size": 16}, hovermode="closest")
    fig.update_xaxes(showgrid=True, gridcolor="#E6ECF2", zeroline=False,
                     title_standoff=16, tickfont={"size": 14})
    fig.update_yaxes(showgrid=True, gridcolor="#E6ECF2", zeroline=False,
                     title_standoff=16, tickfont={"size": 14})
    if log_x:
        fig.update_xaxes(type="log", tickmode="array", tickvals=[.01,.1,1,10,100,1000,10000],
                         ticktext=["0.01","0.1","1","10","100","1k","10k"])
    if log_y:
        fig.update_yaxes(type="log", tickmode="array", tickvals=[.001,.01,.1,1,10,100,1000],
                         ticktext=["0.001","0.01","0.1","1","10","100","1k"])
    return fig


def bandwidth_scaling(df: pd.DataFrame) -> go.Figure:
    data = df[(df.benchmark == "stream_triad") & (df.phase == "steady") &
              (df.socket_scope == "single") & (df.working_set_gib.between(7.5, 8.5))]
    grouped = data.groupby(["memory_mode", "memory_target", "threads"], dropna=False).bandwidth_gbs.agg(["median", "std"]).reset_index()
    fig = go.Figure()
    for (mode, target), part in grouped.groupby(["memory_mode", "memory_target"]):
        label = {("flat", "ddr"): "Flat DDR", ("flat", "hbm"): "Flat HBM",
                 ("cache", "effective_cache"): "Cache effective"}.get((mode,target), f"{mode} {target}")
        fig.add_scatter(x=part.threads, y=part["median"], error_y={"type":"data", "array":part["std"].fillna(0)},
                        mode="lines+markers", name=label,
                        line={"color": COLORS.get(target), "width": 3}, marker={"size": 9}, customdata=part[["std"]],
                        hovertemplate="%{x:.0f} cores<br>%{y:.1f} GB/s<br>σ=%{customdata[0]:.1f}<extra>%{fullData.name}</extra>")
    fig = _style(fig, "Steady Triad bandwidth · 8 GiB per socket", "Physical cores per socket (log scale)", "GB/s")
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1,2,4,8,14,28,56],
                     range=[-.06,np.log10(62)])
    fig.update_yaxes(rangemode="tozero")
    return fig


def cache_working_set(df: pd.DataFrame) -> go.Figure:
    data = df[(df.memory_mode == "cache") & (df.benchmark == "stream_triad") &
              (df.memory_target == "effective_cache") & (df.socket_scope.isin(["single", "dual"]))]
    maxima = data.groupby("socket_scope").threads.transform("max")
    data = data[data.threads == maxima]
    grouped = data.groupby(["socket_scope", "working_set_gib", "phase"], dropna=False).bandwidth_gbs.agg(["median", "std"]).reset_index()
    fig = make_subplots(rows=1, cols=2, subplot_titles=["One socket · 56 cores", "Two sockets · 112 cores"],
                        horizontal_spacing=.1)
    for col, scope in enumerate(("single", "dual"), start=1):
        for phase, dash in (("steady", "solid"), ("first", "dash")):
            part = grouped[(grouped.socket_scope == scope) & (grouped.phase == phase)].sort_values("working_set_gib")
            if part.empty: continue
            fig.add_scatter(x=part.working_set_gib, y=part["median"], row=1, col=col,
                            mode="lines+markers", name=f"{phase.title()} timed pass", legendgroup=phase,
                            showlegend=(col == 1), line={"color": "#278B72" if phase == "steady" else "#8E6C9C",
                                                          "width": 3, "dash": dash}, marker={"size": 8},
                            error_y={"type": "data", "array": part["std"].fillna(0)},
                            hovertemplate="%{x:.0f} GiB total working set<br>%{y:.1f} GB/s<extra>%{fullData.name}</extra>")
        fig.add_vline(x=64, row=1, col=col,
                      line_dash="dot", line_color="#777777", annotation_text="HBM capacity",
                      annotation_position="top left")
        fig.update_xaxes(tickmode="array", tickvals=[8,16,32,48,64,96,128], row=1, col=col)
        fig.update_yaxes(rangemode="tozero", row=1, col=col)
    fig = _style(fig, "Cache Mode · effective bandwidth by per-socket working set", "Working set (GiB)", "GB/s")
    fig.update_layout(width=1450, height=600)
    fig.update_xaxes(title_text="Working set per socket (GiB)", row=1, col=1)
    fig.update_xaxes(title_text="Working set per socket (GiB)", row=1, col=2)
    return fig


def compute_scaling(df: pd.DataFrame, family: str) -> go.Figure:
    if family == "avx512":
        data = df[(df.benchmark == "avx512_peak") & (df.socket_scope == "single")]
        title = "AVX-512 register-resident FMA scaling"
    else:
        data = df[df.benchmark.isin(["amx_onednn_gemm", "amx_peak"]) & (df.socket_scope == "single")]
        accepted_onednn = (data.dtype == "bf16") & data.notes.fillna("").str.contains("numactl_only")
        if accepted_onednn.any():
            data = data[(data.dtype != "bf16") | accepted_onednn]
        elif ((data.benchmark == "amx_peak") & (data.dtype == "bf16")).any():
            data = data[(data.benchmark == "amx_peak") | (data.dtype != "bf16")]
        title = "AMX matrix-compute scaling (verified implementations)"
    grouped = data.groupby(["dtype", "threads"], dropna=False).performance_gops.agg(["median", "std"]).reset_index()
    if family == "amx":
        fig = make_subplots(rows=1, cols=2, subplot_titles=["BF16 · TFLOP/s", "INT8 · TOPS"],
                            horizontal_spacing=.11)
        for col, (dtype, color) in enumerate((("bf16", "#72559A"), ("int8", "#C67832")), start=1):
            part = grouped[grouped.dtype == dtype].sort_values("threads")
            fig.add_scatter(x=part.threads, y=part["median"] / 1000, row=1, col=col,
                            mode="lines+markers", name=dtype.upper(), showlegend=False,
                            line={"color": color, "width": 3}, marker={"size": 9},
                            error_y={"type": "data", "array": part["std"].fillna(0) / 1000})
            fig.update_yaxes(title_text="TFLOP/s" if dtype == "bf16" else "TOPS", rangemode="tozero", row=1, col=col)
        fig = _style(fig, title, "Physical cores per socket", "")
        fig.update_layout(width=1300, height=580, margin={"l": 90, "r": 45, "t": 95, "b": 75})
    else:
        fig = go.Figure()
        for dtype, color in (("fp64", "#4477AA"), ("fp32", "#9A5D9F")):
            part = grouped[grouped.dtype == dtype].sort_values("threads")
            fig.add_scatter(x=part.threads, y=part["median"] / 1000, mode="lines+markers",
                            name=dtype.upper(), line={"color": color, "width": 3}, marker={"size": 9},
                            error_y={"type": "data", "array": part["std"].fillna(0) / 1000})
        fig = _style(fig, title, "Physical cores per socket", "TFLOP/s")
        fig.update_yaxes(rangemode="tozero")
    fig.update_xaxes(type="log", tickmode="array", tickvals=[1,2,4,8,14,28,56],
                     range=[-.06,np.log10(62)])
    return fig


def _single_socket_ceiling(df: pd.DataFrame, dtype: str) -> float:
    data = df[(df.dtype == dtype) & (df.socket_scope == "single") & df.performance_gops.notna()]
    if dtype == "bf16":
        accepted = data.notes.fillna("").str.contains("numactl_only")
        if accepted.any(): data = data[accepted]
        elif (data.benchmark == "amx_peak").any(): data = data[data.benchmark == "amx_peak"]
    if data.empty: return float("nan")
    max_threads = data.threads.max()
    full = data[data.threads == max_threads]
    return float(full.groupby(["memory_mode", "socket"], dropna=False).performance_gops.median().max())


def _bandwidth_ceiling(df: pd.DataFrame, mode: str, target: str, ws_gib: float | None = 8) -> float:
    data = df[(df.memory_mode == mode) & (df.memory_target == target) &
              (df.benchmark == "stream_triad") & (df.phase == "steady") & (df.socket_scope == "single")]
    if ws_gib is not None:
        data = data[np.isclose(data.working_set_gib, ws_gib, rtol=0, atol=.6)]
    if data.empty: return float("nan")
    max_threads = data.threads.max()
    full = data[data.threads == max_threads]
    return float(full.groupby("socket", dropna=False).bandwidth_gbs.median().max())


def _dual_compute_ceiling(df: pd.DataFrame, dtype: str) -> float:
    data=df[(df.dtype==dtype)&(df.socket_scope=="dual")&df.performance_gops.notna()]
    if dtype=="bf16":
        accepted=data.notes.fillna("").str.contains("numactl_only")
        if accepted.any(): data=data[accepted]
        elif (data.benchmark=="amx_peak").any(): data=data[data.benchmark=="amx_peak"]
    return float(data.performance_gops.median()) if not data.empty else float("nan")


def _dual_bandwidth_ceiling(df: pd.DataFrame, mode: str, target: str, ws_gib: float) -> float:
    data=df[(df.memory_mode==mode)&(df.memory_target==target)&(df.benchmark=="stream_triad")&
            (df.phase=="steady")&(df.socket_scope=="dual")&np.isclose(df.working_set_gib,ws_gib,atol=.6)]
    return float(data.bandwidth_gbs.median()) if not data.empty else float("nan")


def _case_sweep(df: pd.DataFrame, mode: str, target: str, ws_gib: float) -> pd.DataFrame:
    points = df[(df.memory_mode == mode) & (df.benchmark == "roofline_sweep") &
                (df.socket_scope == "single") & (df.dtype == "fp64") &
                (df.memory_target == target)]
    points = points[points.notes.fillna("").str.contains("avx512_8_independent_chains")]
    if mode == "cache":
        regime = "below_hbm_capacity" if ws_gib < 64 else "above_hbm_capacity"
        points = points[points.notes.fillna("").str.contains(regime)]
    if points.empty:
        return pd.DataFrame(columns=["arithmetic_intensity", "performance_gops"])
    return points.groupby("arithmetic_intensity", as_index=False).performance_gops.median()


def _roofline_limits(dtype: str) -> tuple[float, float]:
    return (.05, 300) if dtype in ("fp64", "fp32") else ((.05, 1000) if dtype == "bf16" else (.5, 5000))


def roofline_figure(df: pd.DataFrame, mode: str, targets: list[tuple[str, str, float]], dtype: str = "fp64") -> go.Figure:
    peak = _single_socket_ceiling(df, dtype)
    xmin, xmax = _roofline_limits(dtype)
    intensity = np.geomspace(xmin, xmax, 400)
    fig = go.Figure()
    for target, label, ws in targets:
        bw = _bandwidth_ceiling(df, mode, target, ws)
        color = COLORS["cache_resident" if mode == "cache" and ws < 64 else
                       "cache_spill" if mode == "cache" else target]
        fig.add_scatter(x=intensity, y=np.minimum(peak, bw * intensity) / 1000, mode="lines",
                        name=f"{label} · {bw:.0f} GB/s", line={"color":color, "width":3},
                        hovertemplate="Intensity %{x:.2f}<br>Roof %{y:.2f}<extra>%{fullData.name}</extra>")
        if dtype == "fp64":
            points = _case_sweep(df, mode, target, ws)
            if not points.empty:
                fig.add_scatter(x=points.arithmetic_intensity, y=points.performance_gops / 1000,
                                mode="markers", name=f"{label} · measured FP64", marker={"size":11,
                                "color":"white", "line":{"color":color,"width":2.5}},
                                hovertemplate="Intensity %{x:.3f}<br>Measured %{y:.3f} TFLOP/s<extra>%{fullData.name}</extra>")
    fig.add_scatter(x=[xmin,xmax], y=[peak/1000,peak/1000], mode="lines",
                    name=f"Compute peak · {peak/1000:.2f}", line={"color":"#27364A","width":2,"dash":"dash"})
    unit = "OP" if dtype == "int8" else "FLOP"
    perf_unit = "TOPS" if dtype == "int8" else "TFLOP/s"
    fig = _style(fig, f"{mode.title()} Mode · {DTYPE_LABELS[dtype]} Roofline · one socket",
                 f"Operational intensity ({unit}/byte)", perf_unit, True, True)
    fig.update_xaxes(range=[np.log10(xmin),np.log10(xmax)])
    fig.update_yaxes(range=[np.log10(max(.005, xmin*190/1000)),np.log10(peak/1000*1.7)])
    return fig


def roofline_overview(df: pd.DataFrame, scope: str = "single") -> go.Figure:
    """All measured memory treatments and compute paths in one readable view."""
    if scope not in {"single", "dual"}: raise ValueError(scope)
    paths = ("fp64", "fp32", "bf16", "int8")
    fig = make_subplots(rows=2, cols=2, subplot_titles=[DTYPE_LABELS[d] for d in paths],
                        horizontal_spacing=.12, vertical_spacing=.16)
    for index, dtype in enumerate(paths):
        row, col = divmod(index, 2)
        row += 1; col += 1
        peak = _single_socket_ceiling(df,dtype) if scope == "single" else _dual_compute_ceiling(df,dtype)
        xmin, xmax = _roofline_limits(dtype)
        intensity = np.geomspace(xmin,xmax,400)
        for mode,target,ws,label,color_key in MEMORY_CASES:
            bw = (_bandwidth_ceiling(df,mode,target,ws) if scope == "single" else
                  _dual_bandwidth_ceiling(df,mode,target,ws))
            knee = peak / bw
            fig.add_scatter(x=intensity, y=np.minimum(peak,bw*intensity)/1000, row=row, col=col,
                            mode="lines", name=label, legendgroup=label, showlegend=(index == 0),
                            line={"color":COLORS[color_key], "width":3,
                                  "dash":"solid" if mode == "flat" else "dash"},
                            customdata=np.full(len(intensity),knee),
                            hovertemplate=f"{label}<br>Bandwidth {bw:.1f} GB/s<br>Intensity %{{x:.2f}}<br>Roof %{{y:.2f}} T/s<br>Knee %{{customdata:.2f}}<extra></extra>")
            if scope == "single" and dtype == "fp64":
                points = _case_sweep(df,mode,target,ws)
                if not points.empty:
                    fig.add_scatter(x=points.arithmetic_intensity, y=points.performance_gops/1000,
                                    row=row, col=col, mode="markers", name="Measured FP64 sweep",
                                    legendgroup="Measured FP64 sweep", showlegend=(label == "Flat DDR"),
                                    marker={"size":9,"color":"white","line":{"color":COLORS[color_key],"width":2}},
                                    hovertemplate=f"{label} measured<br>Intensity %{{x:.3f}}<br>%{{y:.3f}} TFLOP/s<extra></extra>")
        fig.add_scatter(x=[xmin,xmax], y=[peak/1000,peak/1000], row=row, col=col,
                        mode="lines", name="Measured compute ceiling", legendgroup="compute",
                        showlegend=(index == 0), line={"color":"#27364A","dash":"dot","width":2.5},
                        hovertemplate=f"{DTYPE_LABELS[dtype]} peak {peak/1000:.2f} {'TOPS' if dtype == 'int8' else 'TFLOP/s'}<extra></extra>")
        fig.update_xaxes(type="log", range=[np.log10(xmin),np.log10(xmax)], row=row, col=col,
                         tickmode="array", tickvals=[.1,1,10,100,1000],
                         ticktext=["0.1","1","10","100","1k"],
                         title_text="OP/byte" if dtype == "int8" else "FLOP/byte")
        fig.update_yaxes(type="log", range=[np.log10(max(.005,xmin*190/1000)),np.log10(peak/1000*1.7)],
                         row=row,col=col,title_text="TOPS" if dtype == "int8" else "TFLOP/s",
                         tickmode="array", tickvals=[.01,.1,1,10,100],
                         ticktext=["0.01","0.1","1","10","100"])
    fig.update_layout(template="plotly_white", width=1520, height=1110,
                      title={"text":f"Complete measured Roofline · {'one socket (56 cores)' if scope == 'single' else 'two sockets (112 cores)'}",
                             "x":.04,"font":{"size":25}},
                      font={"family":"Arial","size":15}, hovermode="closest",
                      margin={"l":100,"r":45,"t":105,"b":125},
                      legend={"orientation":"h","x":.02,"y":-.08,"font":{"size":15}})
    fig.update_xaxes(showgrid=True,gridcolor="#E8EDF2",title_standoff=12)
    fig.update_yaxes(showgrid=True,gridcolor="#E8EDF2",title_standoff=12)
    return fig


def mode_comparison(df: pd.DataFrame) -> go.Figure:
    labels = [case[3] for case in MEMORY_CASES]
    values = [_bandwidth_ceiling(df,mode,target,ws) for mode,target,ws,_,_ in MEMORY_CASES]
    colors = [COLORS[case[4]] for case in MEMORY_CASES]
    fig = go.Figure(go.Bar(x=values, y=labels, orientation="h", marker_color=colors,
                           text=[f"{value:.1f} GB/s" for value in values], textposition="outside",
                           hovertemplate="%{y}<br>%{x:.1f} GB/s<extra></extra>"))
    fig = _style(fig,"Sustainable bandwidth by memory regime · one socket","GB/s","")
    fig.update_layout(height=520,showlegend=False,margin={"l":160,"r":105,"t":85,"b":75})
    fig.update_xaxes(range=[0,max(values)*1.18])
    fig.update_yaxes(categoryorder="array",categoryarray=labels[::-1])
    return fig


def concurrent_tiers(df: pd.DataFrame) -> go.Figure:
    data = df[(df.memory_mode == "flat") & (df.benchmark == "stream_triad") &
              (df.phase == "steady") &
              (df.socket_scope.isin(["concurrent_tier_component", "concurrent_tiers"]))]
    cases = [("concurrent_tier_component", "ddr", "DDR · 28 cores", COLORS["ddr"]),
             ("concurrent_tier_component", "hbm", "HBM · 28 cores", COLORS["hbm"]),
             ("concurrent_tiers", "ddr+hbm", "Combined · 56 cores", "#27364A")]
    labels, medians, errors, colors = [], [], [], []
    for scope,target,label,color in cases:
        values = data[(data.socket_scope == scope) & (data.memory_target == target)].bandwidth_gbs
        if values.empty: continue
        labels.append(label); medians.append(float(values.median()))
        errors.append(float(values.std()) if len(values) > 1 else 0.0); colors.append(color)
    fig = go.Figure(go.Bar(x=medians,y=labels,orientation="h",marker_color=colors,
                           error_x={"type":"data","array":errors},
                           hovertemplate="%{y}<br>Median %{x:.1f} GB/s<extra></extra>"))
    fig = _style(fig,"Concurrent Flat DDR + HBM · one socket, split core set","GB/s","")
    fig.update_layout(height=500,showlegend=False,margin={"l":220,"r":115,"t":85,"b":75})
    for label,median,error in zip(labels,medians,errors):
        fig.add_annotation(x=median+error+10,y=label,text=f"{median:.1f} GB/s",
                           showarrow=False,xanchor="left",font={"size":15,"color":"#27364A"})
    fig.update_xaxes(range=[0,max(median+error for median,error in zip(medians,errors))*1.2]
                     if medians else [0,1])
    fig.update_yaxes(categoryorder="array",categoryarray=labels[::-1])
    return fig


def dual_scaling(df: pd.DataFrame) -> go.Figure:
    data = df[(df.socket_scope.isin(["single", "dual"])) &
              ((df.benchmark == "stream_triad") | df.benchmark.isin(["avx512_peak", "amx_onednn_gemm", "amx_peak"]))]
    data = data[(data.benchmark != "stream_triad") | np.isclose(data.working_set_gib, 8, atol=.6)]
    accepted_bf16 = (data.dtype == "bf16") & data.notes.fillna("").str.contains("numactl_only")
    if accepted_bf16.any(): data = data[(data.dtype != "bf16") | accepted_bf16]
    rows = []
    for (mode, benchmark, kernel, target), part in data.groupby(["memory_mode", "benchmark", "kernel", "memory_target"], dropna=False):
        single = part[part.socket_scope == "single"]
        dual = part[part.socket_scope == "dual"]
        if single.empty or dual.empty: continue
        metric = "bandwidth_gbs" if benchmark == "stream_triad" else "performance_gops"
        single_max = single.threads.max()
        single_value = single[single.threads == single_max][metric].median()
        dual_value = dual[metric].median()
        path = ({"amx_bf16_gemm":"BF16 AMX", "amx_int8_dot":"INT8 AMX",
                 "avx512_fp32_fma":"FP32 AVX-512", "avx512_fp64_fma":"FP64 AVX-512"}
                .get(kernel,"Triad bandwidth"))
        if benchmark == "stream_triad":
            path += " · " + {"ddr":"DDR","hbm":"HBM",
                               "effective_cache":"effective"}.get(target,target)
        rows.append({"case":f"{mode.title()} · {path}", "memory_mode":mode,
                     "efficiency":dual_value/(2*single_value), "dual":dual_value,
                     "unit":"GB/s" if benchmark == "stream_triad" else "GOP/s"})
    result = pd.DataFrame(rows)
    result = result.sort_values(["memory_mode","case"])
    fig = go.Figure()
    for mode in ("flat","cache"):
        part = result[result.memory_mode == mode]
        fig.add_bar(x=part.efficiency, y=part.case, orientation="h", name=mode.title(),
                    marker_color="#4477AA" if mode == "flat" else "#278B72",
                    text=part.efficiency.map(lambda value:f"{value:.2f}×"),
                    textposition="inside", insidetextanchor="end", textfont_color="white",
                    customdata=part[["dual","unit"]].to_numpy(),
                    hovertemplate="%{y}<br>Efficiency %{x:.3f}<br>Dual %{customdata[0]:.1f} %{customdata[1]}<extra></extra>")
    fig.add_vline(x=1.0,line_dash="dash",line_color="#334155")
    fig = _style(fig,"Two-socket efficiency · measured dual / (2 × one socket)",
                 "Scaling efficiency","")
    fig.update_layout(height=770,margin={"l":255,"r":80,"t":95,"b":100})
    fig.update_xaxes(range=[0,max(1.15,result.efficiency.max()*1.13)])
    fig.update_yaxes(categoryorder="array",categoryarray=result.case.iloc[::-1])
    return fig


def knees_table(df: pd.DataFrame) -> pd.DataFrame:
    compute = {dtype:_single_socket_ceiling(df, dtype) for dtype in ("fp32", "fp64", "bf16", "int8")}
    memories = [
        ("flat", "ddr", 8, "Flat DDR"), ("flat", "hbm", 8, "Flat HBM"),
        ("cache", "effective_cache", 16, "Cache ≤HBM candidate"),
        ("cache", "effective_cache", 96, "Cache >HBM candidate"),
    ]
    rows=[]
    for dtype, peak in compute.items():
        for mode,target,ws,label in memories:
            bw=_bandwidth_ceiling(df,mode,target,ws)
            if np.isfinite(peak) and np.isfinite(bw):
                rows.append({"compute_path":dtype,"memory_system":label,"measured_compute_gops":peak,
                             "measured_bandwidth_gbs":bw,"critical_intensity_ops_per_byte":peak/bw})
    return pd.DataFrame(rows)


def theoretical_table(df: pd.DataFrame, topology: dict[str, Any]) -> pd.DataFrame:
    spec = MODEL_SPECS.get(topology.get("cpu_model"))
    if spec is None: return pd.DataFrame()
    cores = topology["sockets"][0]["physical_cores"]
    measured = {dtype:_single_socket_ceiling(df,dtype) for dtype in ("fp32","fp64","bf16","int8")}
    rows=[]
    for dtype,key in [("fp32","avx512_fp32_ops_cycle_core"),("fp64","avx512_fp64_ops_cycle_core"),
                      ("bf16","amx_bf16_ops_cycle_core"),("int8","amx_int8_ops_cycle_core")]:
        theoretical=cores*spec[key]*spec["base_ghz"]
        maximum=cores*spec[key]*spec["max_turbo_ghz"]
        rows.append({"path":dtype,"cores":cores,"clock_assumption_ghz":spec["base_ghz"],
                     "max_turbo_ghz":spec["max_turbo_ghz"],"ops_cycle_core":spec[key],
                     "base_clock_theoretical_gops":theoretical,"max_turbo_bound_gops":maximum,
                     "measured_gops":measured[dtype],
                     "efficiency_vs_base_percent":100*measured[dtype]/theoretical,
                     "efficiency_vs_max_turbo_percent":100*measured[dtype]/maximum,
                     "implied_clock_ghz":measured[dtype]/(cores*spec[key])})
    return pd.DataFrame(rows)


def memory_theoretical_table(df: pd.DataFrame, topology: dict[str, Any]) -> pd.DataFrame:
    spec = MODEL_SPECS.get(topology.get("cpu_model"))
    if spec is None: return pd.DataFrame()
    rows=[]
    for target,key,label in [("ddr","ddr_gbs_socket","Flat DDR"),("hbm","hbm_gbs_socket","Flat HBM")]:
        measured=_bandwidth_ceiling(df,"flat",target,8)
        theoretical=spec[key]
        rows.append({"memory_system":label,"theoretical_gbs":theoretical,"measured_gbs":measured,
                     "efficiency_percent":100*measured/theoretical})
    return pd.DataFrame(rows)


def executive_summary(df: pd.DataFrame) -> dict[str, Any]:
    result = {
        "flat_hbm_peak_gbs_socket": _bandwidth_ceiling(df,"flat","hbm",8),
        "flat_ddr_peak_gbs_socket": _bandwidth_ceiling(df,"flat","ddr",8),
        "cache_effective_peak_gbs_socket": _bandwidth_ceiling(df,"cache","effective_cache",16),
        "cache_above_hbm_gbs_socket": _bandwidth_ceiling(df,"cache","effective_cache",96),
        "avx512_fp32_peak_gflops_socket": _single_socket_ceiling(df,"fp32"),
        "avx512_fp64_peak_gflops_socket": _single_socket_ceiling(df,"fp64"),
        "amx_bf16_peak_gflops_socket": _single_socket_ceiling(df,"bf16"),
        "amx_int8_peak_gops_socket": _single_socket_ceiling(df,"int8"),
        "flat_hbm_peak_gbs_dual": _dual_bandwidth_ceiling(df,"flat","hbm",8),
        "flat_ddr_peak_gbs_dual": _dual_bandwidth_ceiling(df,"flat","ddr",8),
        "avx512_fp32_peak_gflops_dual": _dual_compute_ceiling(df,"fp32"),
        "avx512_fp64_peak_gflops_dual": _dual_compute_ceiling(df,"fp64"),
        "amx_bf16_peak_gflops_dual": _dual_compute_ceiling(df,"bf16"),
        "amx_int8_peak_gops_dual": _dual_compute_ceiling(df,"int8"),
    }
    hbm,ddr=result["flat_hbm_peak_gbs_socket"],result["flat_ddr_peak_gbs_socket"]
    result["flat_hbm_over_ddr"] = hbm/ddr if ddr else None
    return result


def build_figures(df: pd.DataFrame) -> dict[str, go.Figure]:
    return {
        "roofline_overview_single": roofline_overview(df,"single"),
        "roofline_overview_dual": roofline_overview(df,"dual"),
        "bandwidth_scaling": bandwidth_scaling(df),
        "cache_working_set": cache_working_set(df),
        "avx512_scaling": compute_scaling(df,"avx512"),
        "amx_scaling": compute_scaling(df,"amx"),
        "flat_fp64_roofline": roofline_figure(df,"flat",[("ddr","DDR",8),("hbm","HBM",8)],"fp64"),
        "flat_fp32_roofline": roofline_figure(df,"flat",[("ddr","DDR",8),("hbm","HBM",8)],"fp32"),
        "flat_bf16_roofline": roofline_figure(df,"flat",[("ddr","DDR",8),("hbm","HBM",8)],"bf16"),
        "flat_int8_roofline": roofline_figure(df,"flat",[("ddr","DDR",8),("hbm","HBM",8)],"int8"),
        "cache_roofline": roofline_figure(df,"cache",[("effective_cache","≤HBM candidate",16),("effective_cache",">HBM candidate",96)],"fp64"),
        "mode_comparison": mode_comparison(df),
        "concurrent_tiers": concurrent_tiers(df),
        "dual_scaling": dual_scaling(df),
    }


def main(argv: list[str] | None = None) -> int:
    parser=argparse.ArgumentParser()
    parser.add_argument("--measurements",type=Path,required=True)
    parser.add_argument("--figures",type=Path,required=True)
    parser.add_argument("--topology",type=Path)
    parser.add_argument("--summary",type=Path,required=True)
    parser.add_argument("--png",action="store_true",help="also export static PNG previews (requires Kaleido/Chrome)")
    args=parser.parse_args(argv)
    df=load_measurements(args.measurements)
    args.figures.mkdir(parents=True,exist_ok=True)
    for name,fig in build_figures(df).items():
        fig.write_html(args.figures/f"{name}.html",include_plotlyjs=True)
        if args.png: fig.write_image(args.figures/f"{name}.png",scale=1.5)
    summary=executive_summary(df)
    summary["roofline_knees"]=knees_table(df).to_dict(orient="records")
    if args.topology and args.topology.exists():
        topology=json.loads(args.topology.read_text())
        summary["theoretical_compute"]=theoretical_table(df,topology).to_dict(orient="records")
        summary["theoretical_memory"]=memory_theoretical_table(df,topology).to_dict(orient="records")
    args.summary.write_text(json.dumps(summary,indent=2)+"\n",encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
