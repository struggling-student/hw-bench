"""Statements the notebooks make about the data, computed and checked in one place.

A ``Claim`` pairs a sentence whose numbers come from the measurements with a boolean
saying whether the *direction* of the statement is true (``holds``).  Notebooks render
claims with ``say_claims``; building a notebook, or running the test suite, fails when a
claim no longer holds, so prose cannot drift away from the data again.

Claims that describe a mechanism say so explicitly ("inferred", "not measured"): the
counters that would test them are not readable on this system.
"""

from __future__ import annotations

import json
import math
import re
from dataclasses import dataclass
from pathlib import Path

import numpy as np
import pandas as pd

from hwbench import report
from hwbench.analysis import ROOT, concurrent_table
from hwbench.theory import Theory


@dataclass(frozen=True)
class Claim:
    id: str
    holds: bool
    text: str


def render(claims: list[Claim]) -> str:
    return "\n".join(f"* {c.text}" for c in claims)


def check(claims: list[Claim]) -> list[Claim]:
    """Return the claims whose direction is contradicted by the data."""

    return [c for c in claims if not c.holds]


def _pct(x: float, digits: int = 0) -> str:
    return f"{100 * x:.{digits}f}%"


def _socket0_local(bw: pd.DataFrame) -> pd.DataFrame:
    return bw[bw.locality.eq("local") & bw.socket_scope.eq("single") & bw.socket.eq(0)]


def _at(bw: pd.DataFrame, config: str, kernel: str, ws: float) -> float:
    part = bw[bw.config.eq(config) & bw.kernel.eq(kernel) & bw.working_set_gib.sub(ws).abs().lt(0.5)]
    return float(part.gbs.iloc[0]) if len(part) else math.nan


def hmat_latency_ns(root: Path = ROOT) -> dict[str, float]:
    """Firmware-advertised (ACPI HMAT) read latency per tier for socket 0, ns."""

    flat = sorted((root / "data/raw/flat").glob("*/system/platform.json"))
    plat = json.loads(flat[0].read_text())
    topo = json.loads(flat[0].with_name("topology.json").read_text())
    return {
        node["memory_tier"]: float(plat["hmat_access"][str(node["node"])]["read_latency"])
        for node in topo["numa_nodes"]
        if node["socket"] == 0 and str(node["node"]) in plat["hmat_access"]
    }


def hmat_gbs(root: Path = ROOT) -> dict[str, float]:
    """Firmware-advertised (ACPI HMAT) read bandwidth per socket, GB/s, by tier."""

    flat = sorted((root / "data/raw/flat").glob("*/system/platform.json"))
    plat = json.loads(flat[0].read_text())
    topo = json.loads(flat[0].with_name("topology.json").read_text())
    out: dict[str, float] = {}
    for node in topo["numa_nodes"]:
        if node["socket"] == 0 and str(node["node"]) in plat["hmat_access"]:
            out[node["memory_tier"]] = plat["hmat_access"][str(node["node"])]["read_bandwidth"] / 1000
    return out


def triad_store_widths(root: Path = ROOT) -> dict[str, bool]:
    """Whether the Triad loops in the disassembly store 256-bit (regular) or 512-bit (non-temporal)."""

    asm = sorted((root / "data/raw/flat").glob("*/system/hardware.asm"))[0].read_text()
    regular = re.search(r"vfmadd213pd\s+\(.*\),%ymm\d+,%ymm\d+\n.*vmovupd\s+%ymm\d+,\(", asm) is not None
    non_temporal = re.search(r"vmovntpd\s+%zmm\d+,\(", asm) is not None
    return {"regular_ymm": regular, "non_temporal_zmm": non_temporal}


def gemm_verbose(root: Path = ROOT, campaign_glob: str = "flat-gemm-*") -> pd.DataFrame:
    """oneDNN's own description of each GEMM call: implementation and weight layout."""

    rows = []
    pattern = re.compile(r"matmul,(?P<impl>[^,]+),undef,(?P<desc>[^,]+),")
    for path in sorted((root / "data/raw/flat").glob(f"{campaign_glob}/records/*.json")):
        record = json.loads(path.read_text())
        result = record.get("result")
        if not isinstance(result, dict) or result.get("benchmark") != "onednn_gemm_sweep":
            continue
        line = next((x for x in record.get("stdout", "").splitlines() if ",exec," in x), "")
        match = pattern.search(line)
        if not match:
            continue
        weights = re.search(r"wei:(\S+)", match["desc"])
        rows.append(
            dict(
                memory_target=record["memory_target"],
                dtype=result["dtype"],
                m=int(result["m"]),
                n=int(result["n"]),
                k=int(result["k"]),
                implementation=match["impl"],
                weights=weights[1].split("::")[0] + "/" + weights[1].split("::")[1] if weights else "",
            )
        )
    return pd.DataFrame(rows).drop_duplicates()


# ---------------------------------------------------------------- compute
def compute_paths(ext: pd.DataFrame, theory: Theory) -> list[Claim]:
    peaks = report.isa_peaks(ext, theory)
    one = peaks[(peaks.scope == "1S") & (peaks.cores == 56) & (peaks.memory_mode == "flat")]
    one = one.groupby("path").first()
    avx = one.loc[["fp64", "fp32", "avx512_bf16"]].ghz_effective
    vnni = one.loc["vnni_int8"].ghz_effective
    amx = one.loc[["amx_bf16", "amx_int8"]].ghz_effective
    busy = one.loc[["amx_bf16", "amx_int8"]].amx_busy_frac
    bf = one.loc["avx512_bf16"]
    others = one.drop(["amx_bf16", "amx_int8"]).amx_busy_frac
    sc = report.isa_scaling(ext)
    sc = sc[sc.memory_mode.eq("flat") & sc.socket.eq(0)]
    worst = 1.0
    for _, part in sc.groupby(["benchmark", "dtype"]):
        part = part.sort_values("threads")
        per_core = part.gops / part.threads
        worst = min(worst, float((per_core / per_core.iloc[0]).min()))
    return [
        Claim(
            "clocks",
            float(amx.max()) < float(min(avx.min(), vnni)),
            f"The cores ran at about {avx.median():.2f} GHz on AVX-512 FMA/BF16 code, {vnni:.2f} GHz on VNNI and "
            f"{amx.median():.2f} GHz on AMX code, against a {theory.base_ghz:.1f} GHz base clock; AMX ran at the lowest clock. "
            "A power-related limit is plausible but was not measured.",
        ),
        Claim(
            "avx512_bf16_bound",
            0.85 < float(bf.efficiency_at_clock) < 1.02 and theory.isa("avx512_bf16").status == "table",
            f"The AVX-512 BF16 dot product reaches {bf.ops_per_cycle_per_core:.0f} of {bf.theory_ops_per_cycle:.0f} operations per cycle "
            f"({_pct(float(bf.efficiency_at_clock))}), that is {bf.ops_per_cycle_per_core / 64:.2f} instruction per cycle where the "
            "instruction table lists 0.5 (2.0 cycles per `vdpbf16ps`, uops.info for Alder Lake-P and Emerald Rapids, the same core "
            "family; Sapphire Rapids itself is not listed). The path is limited by the instruction, not by the kernel, and is slower than "
            "FP32 FMA. The bound is a table value for related parts and is to be confirmed on this node by the accumulator-chain sweep.",
        ),
        Claim(
            "linear_scaling",
            worst > 0.97,
            f"Per-core throughput stays within {_pct(1 - worst, 1)} of its one-core value up to 56 cores for every path, "
            "so compute is not shared between cores.",
        ),
        Claim(
            "amx_busy",
            float(busy.min()) > 0.97 and float(others.max()) < 0.01,
            f"`EXE.AMX_BUSY` is {_pct(float(busy.min()), 1)}–{_pct(float(busy.max()), 1)} of cycles on the AMX kernels "
            f"and at most {_pct(float(others.max()), 1)} on every other path.",
        ),
    ]


# ----------------------------------------------------------------- memory
def kernels(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    bw = _socket0_local(report.bandwidth_summary(ext, thesis))
    t = {t_: {k: _at(bw, f"flat_{t_}", k, 8) for k in ("read", "triad", "triad_nt")} for t_ in ("ddr", "hbm")}
    gap_ddr = abs(t["ddr"]["triad"] / t["ddr"]["triad_nt"] - 1)
    gap_hbm = abs(t["hbm"]["triad"] / t["hbm"]["triad_nt"] - 1)
    ddr_peak = theory.memory_gbs("ddr")
    rfo = t["ddr"]["triad"] * 32 / 24
    flags = ext.compiler_flags.dropna().unique()
    default_width = all("prefer-vector-width" not in f for f in flags)
    widths = triad_store_widths()
    return [
        Claim(
            "triad_vs_nt",
            max(gap_ddr, gap_hbm) < 0.03,
            f"Triad and non-temporal Triad agree to {_pct(gap_ddr, 1)} on DDR ({t['ddr']['triad']:.0f} and "
            f"{t['ddr']['triad_nt']:.0f} GB/s) and {_pct(gap_hbm, 1)} on HBM ({t['hbm']['triad']:.0f} and "
            f"{t['hbm']['triad_nt']:.0f} GB/s). A non-temporal store never reads the destination line, so equal rates "
            "suggest that regular Triad does not either.",
        ),
        Claim(
            "no_write_allocate_bound",
            rfo > ddr_peak,
            f"If DDR Triad paid a read-for-ownership its true traffic would be 32/24 × {t['ddr']['triad']:.0f} = "
            f"{rfo:.0f} GB/s, above the {ddr_peak:.1f} GB/s theoretical DDR5 peak; this makes a write-allocate read unlikely. "
            "It is an inference from rates: no memory-controller counter was read.",
        ),
        Claim(
            "triad_store_width",
            default_width and widths["regular_ymm"] and widths["non_temporal_zmm"],
            "Ordinary Triad is compiled with the compiler's default vector width for `-march=sapphirerapids` "
            "(no `-mprefer-vector-width`): its loop in the disassembly uses 256-bit `ymm` loads and stores, while the "
            "non-temporal variant stores full 64-byte `zmm` lines. 'Full-line vector stores' therefore does not explain why "
            "regular Triad shows no write-allocate cost; the mechanism is not identified.",
        ),
        Claim(
            "read_vs_triad",
            t["hbm"]["read"] < t["hbm"]["triad"] and t["ddr"]["read"] > t["ddr"]["triad"],
            f"Read-only is {t['ddr']['read'] / t['ddr']['triad'] - 1:+.0%} against Triad on DDR ({t['ddr']['read']:.0f} GB/s) "
            f"and {t['hbm']['read'] / t['hbm']['triad'] - 1:+.0%} on HBM ({t['hbm']['read']:.0f} GB/s): reading is not faster "
            "than a mixed read/write stream on HBM. The ceiling kernel therefore differs per tier (HBM: Triad, DDR: read).",
        ),
        Claim(
            "hbm_over_ddr",
            t["hbm"]["read"] > 2 * t["ddr"]["read"],
            f"HBM over DDR is {t['hbm']['read'] / t['ddr']['read']:.2f}× on read-only, {t['hbm']['triad'] / t['ddr']['triad']:.2f}× "
            f"on Triad and {t['hbm']['triad_nt'] / t['ddr']['triad_nt']:.2f}× on non-temporal Triad.",
        ),
    ]


def core_scaling(ext: pd.DataFrame, thesis: pd.DataFrame, root: Path = ROOT) -> list[Claim]:
    rs = report.read_scaling(ext)
    rs = rs[rs.socket.eq(0)].pivot(index="threads", columns="config", values="gbs")
    clock = (
        ext[ext.notes.eq("bw2_read_scaling") & ext.socket.eq(0)]
        .assign(config=lambda f: report.with_config(f).config)
        .groupby(["config", "threads"])
        .ghz_effective.median()
        .unstack(0)
    )
    ddr_gain = rs.loc[56, "flat_ddr"] / rs.loc[28, "flat_ddr"]
    hbm_gain = rs.loc[56, "flat_hbm"] / rs.loc[28, "flat_hbm"]
    hmat = hmat_gbs(root)
    ddr_cores = int(rs.flat_ddr[rs.flat_ddr >= 0.9 * rs.flat_ddr.max()].index.min())
    hbm_cores = int(rs.flat_hbm[rs.flat_hbm >= 0.9 * rs.flat_hbm.max()].index.min())
    return [
        Claim(
            "ddr_saturates",
            ddr_gain < 1.02,
            f"DDR read bandwidth saturates early: {rs.loc[28, 'flat_ddr']:.0f} GB/s at 28 cores and {rs.loc[56, 'flat_ddr']:.0f} GB/s "
            f"at 56 ({ddr_gain - 1:+.0%}); 90% of the peak is reached with {ddr_cores} cores.",
        ),
        Claim(
            "hbm_still_scaling",
            hbm_gain > 1.2,
            f"HBM read bandwidth is still rising at 56 cores: {rs.loc[28, 'flat_hbm']:.0f} GB/s at 28 and {rs.loc[56, 'flat_hbm']:.0f} GB/s "
            f"at 56 ({hbm_gain - 1:+.0%}); 90% of the peak needs {hbm_cores} cores. The HBM figure in this study is therefore a "
            "**56-core sustainable bandwidth**, not the capability of the HBM devices.",
        ),
        Claim(
            "hbm_clock_drop",
            clock.loc[56, "flat_hbm"] < clock.loc[56, "flat_ddr"] < clock.loc[1, "flat_hbm"],
            f"While HBM is streamed the effective clock falls from {clock.loc[1, 'flat_hbm']:.2f} GHz (1 core) to "
            f"{clock.loc[28, 'flat_hbm']:.2f} GHz (28 cores) and {clock.loc[56, 'flat_hbm']:.2f} GHz (56 cores); on DDR it falls less, "
            f"to {clock.loc[56, 'flat_ddr']:.2f} GHz at 56 cores. The cause (power limit or energy-efficient turbo) is not measured. "
            "Fewer cycles per second also lowers the rate at which cores can issue memory requests.",
        ),
        Claim(
            "hmat_gap",
            rs.loc[56, "flat_hbm"] < hmat["hbm"],
            f"The firmware (ACPI HMAT) advertises {hmat['ddr']:.0f} GB/s (DDR) and {hmat['hbm']:.0f} GB/s (HBM) read bandwidth per "
            f"socket. Measured DDR read is {rs.loc[56, 'flat_ddr'] / hmat['ddr']:.0%} of the DDR figure; HBM reaches "
            f"{rs.loc[56, 'flat_hbm'] / hmat['hbm']:.0%} of the HBM figure. The gap is attributed to concurrency and clock "
            "(above) or to the memory configuration (SNC4/HBM-only would change it); neither is tested here.",
        ),
    ]


def cache_mode(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    bw = _socket0_local(report.bandwidth_summary(ext, thesis))
    sizes = [8.0, 16.0, 32.0, 48.0, 64.0, 96.0, 128.0]
    triad = {s: _at(bw, "cache", "triad", s) for s in sizes}
    read = {s: _at(bw, "cache", "read", s) for s in sizes}
    hbm = {k: _at(bw, "flat_hbm", k, 8) for k in ("read", "triad")}
    ddr = {k: _at(bw, "flat_ddr", k, 8) for k in ("read", "triad", "triad_nt")}
    nt = {s: _at(bw, "cache", "triad_nt", s) for s in sizes}
    decreasing = all(triad[a] > triad[b] for a, b in zip(sizes, sizes[1:]))
    fractions = ", ".join(f"{_pct(triad[s] / hbm['triad'])} at {s:.0f}" for s in (16.0, 32.0, 48.0, 64.0))
    first_below = {}
    for kernel, series in (("read", read), ("triad", triad), ("triad_nt", nt)):
        below = [s for s in sizes if not math.isnan(series[s]) and series[s] < ddr[kernel]]
        first_below[kernel] = below[0] if below else None
    below_text = ", ".join(
        f"{k} {s:.0f} GiB" if s else f"{k} never"
        for k, s in first_below.items()
    )
    return [
        Claim(
            "cache_declines_before_capacity",
            decreasing and triad[32.0] < 0.8 * hbm["triad"] and triad[64.0] < 0.5 * hbm["triad"],
            f"Cache-mode Triad declines with working set from 8 GiB onward ({triad[8.0]:.0f}, {triad[16.0]:.0f}, {triad[32.0]:.0f}, "
            f"{triad[48.0]:.0f}, {triad[64.0]:.0f} GB/s at 8, 16, 32, 48, 64 GiB). Against Flat HBM Triad ({hbm['triad']:.0f} GB/s) "
            f"it retains {fractions} GiB. Cache mode therefore does **not** match Flat HBM while the working set fits "
            "in the 64 GiB memory-side cache. A direct-mapped cache with conflict misses would behave like this; that is an "
            "inference, because no cache hit-rate counter is readable.",
        ),
        Claim(
            "cache_resident_model",
            read[16.0] / hbm["read"] > 0.9 and triad[16.0] / hbm["triad"] > 0.8,
            f"At 16 GiB, the weight size of an 8B-parameter BF16 model, Cache mode keeps {_pct(read[16.0] / hbm['read'])} of Flat HBM "
            f"read bandwidth and {_pct(triad[16.0] / hbm['triad'])} of Flat HBM Triad; larger models keep progressively less.",
        ),
        Claim(
            "cache_below_flat_ddr",
            all(first_below[k] is not None for k in first_below),
            f"Compared kernel by kernel with Flat DDR, Cache mode falls below it at: {below_text}. At 96 GiB it delivers "
            f"{_pct(read[96.0] / ddr['read'])} (read-only), {_pct(triad[96.0] / ddr['triad'])} (Triad) and "
            f"{_pct(nt[96.0] / ddr['triad_nt'])} (non-temporal Triad) of Flat DDR. The cache lookup and fill add cost on every miss.",
        ),
        Claim(
            "cache_triad_spilled_ceiling",
            triad[96.0] > nt[96.0] and triad[96.0] > read[96.0],
            f"The best kernel at 96 GiB is Triad ({triad[96.0]:.0f} GB/s), {triad[96.0] / nt[96.0] - 1:+.0%} against non-temporal "
            f"Triad ({nt[96.0]:.0f}) and {triad[96.0] / read[96.0] - 1:+.0%} against read-only ({read[96.0]:.0f}); the spilled "
            "ceiling uses it (best of the three kernels, as for every other ceiling).",
        ),
    ]


def latency(ext: pd.DataFrame, theory: Theory, root: Path = ROOT) -> list[Claim]:
    h = report.hierarchy(ext)
    lv, lat = report.level_summary(h)
    mem = lat[lat.level.eq("memory")].set_index("config").latency_ns
    cache_ws = h[h.notes.eq("hier_latency") & h.config.eq("cache")].per_thread_bytes.max() / 2**30
    hmat = hmat_latency_ns(root)
    return [
        Claim(
            "hmat_latency",
            mem["flat_ddr"] > hmat["ddr"] and mem["flat_hbm"] > hmat["hbm"],
            f"The firmware (HMAT) advertises unloaded read latencies of {hmat['ddr']:.0f} ns (DDR) and {hmat['hbm']:.0f} ns (HBM); "
            f"measured dependent-load latency is higher ({mem['flat_ddr']:.0f} and {mem['flat_hbm']:.0f} ns), plausibly because it includes "
            "address translation and the cache path.",
        ),
        Claim(
            "latency_order",
            mem["flat_hbm"] > mem["flat_ddr"],
            f"Idle dependent-load latency from memory is {mem['flat_hbm']:.0f} ns on HBM, {mem['flat_ddr']:.0f} ns on DDR and "
            f"{mem['cache']:.0f} ns in Cache mode, so latency-bound code does not benefit from HBM.",
        ),
        Claim(
            "cache_latency_resident_only",
            cache_ws < 64,
            f"Cache-mode latency was measured only up to {cache_ws:.0f} GiB, inside the 64 GiB memory-side cache. "
            "The latency of a miss that goes to DDR was **not measured**, and no table in this study reuses the resident "
            "value for the spilled case.",
        ),
    ]


def hierarchy(ext: pd.DataFrame, theory: Theory) -> list[Claim]:
    h = report.hierarchy(ext)
    lv, _ = report.level_summary(h)
    v = lv[lv.config.eq("flat_hbm")].set_index("level").gbs
    one = ext[ext.notes.eq("hier_read_1")]
    l1 = one[one.working_set_bytes.eq(32 * 2**10) & one.memory_target.eq("hbm")]
    ghz = float(l1.ghz_effective.median())
    per_cycle = v["L1 (32 KiB)"] / ghz
    return [
        Claim(
            "per_core_levels",
            v["L2 (1 MiB)"] > 100 and 10 < v["memory, 1 core (4 GiB)"] < 30,
            f"Per core, L1 sustains {v['L1 (32 KiB)']:.0f} GB/s, L2 {v['L2 (1 MiB)']:.0f} GB/s and the L3 {v['LLC (16 MiB)']:.0f} GB/s; "
            f"a single core reaches only {v['memory, 1 core (4 GiB)']:.0f} GB/s from memory, so a thread needs its data in L2 to run at "
            "100+ GB/s and a thread streaming from memory is capped near that figure whatever the tier. "
            f"All 56 cores aggregate to {v['L1, 56 cores (32 KiB/core)'] / 1000:.1f} TB/s in L1 and {v['L2, 56 cores (1 MiB/core)'] / 1000:.1f} "
            f"TB/s in L2, against {v['memory, 56 cores (256 MiB/core)']:.0f} GB/s from HBM.",
        ),
        Claim(
            "l1_understated",
            per_cycle < 128,
            f"The L1 figure is a lower bound: {v['L1 (32 KiB)']:.0f} GB/s at {ghz:.2f} GHz is {per_cycle:.0f} of the 128 B/cycle "
            "two-load-port limit, because the read kernel reads the clock after every pass over its working set (a pass over 16 KiB "
            "takes only tens of nanoseconds, so the smaller working set reads lower still). This is a measurement overhead, not an L1 property.",
        ),
    ]


def xcheck(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    x = report.xcheck_table(ext, thesis)
    f, c = x[x.memory_mode.eq("flat")], x[x.memory_mode.eq("cache")]
    return [
        Claim(
            "repeat_runs",
            float(f.deviation_percent.abs().max()) < 3 and float(c.deviation_percent.abs().max()) < 10,
            f"Repeat runs on the same Flat node differ by at most {f.deviation_percent.abs().max():.1f}% "
            f"({_pct(f.within_tolerance.mean())} of {len(f)} points within 2%), including the October Slurm-exclusive runs against "
            f"the SSH runs, so the launch method is not a visible source of error. Cache repeats on a second node differ by up to "
            f"{c.deviation_percent.abs().max():.1f}% ({_pct(c.within_tolerance.mean())} of {len(c)} within 2%), which is node-to-node "
            "variance. These cross-run differences are a systematic uncertainty on top of the sample-to-sample spread.",
        )
    ]


def concurrent(thesis: pd.DataFrame) -> list[Claim]:
    c = concurrent_table(thesis)
    s0 = c[c.socket.eq(0)].set_index("case").median_gbs
    combined, hbm_all = s0["Combined, 28+28 cores"], s0["HBM, all 56 cores"]
    return [
        Claim(
            "tiers_not_additive",
            combined < hbm_all,
            f"With 28 cores on DDR and 28 on HBM the two streams together reach {combined:.0f} GB/s, below the {hbm_all:.0f} GB/s "
            f"that the same 56 cores reach on HBM alone ({combined / hbm_all - 1:+.0%}); each stream is also slower than in isolation "
            f"(DDR {s0['DDR while HBM active']:.0f} against {s0['DDR, 28 assigned cores']:.0f} GB/s). "
            "This measures two independent streams, not an application that mixes tiers.",
        )
    ]


def placement(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    """Remote against local bandwidth, for socket 0 (the reference socket)."""

    lr = report.local_remote_table(ext, thesis).set_index(["config", "kernel"])
    bw = report.bandwidth_summary(ext, thesis)
    cv = bw[bw.locality.eq("remote") & bw.config.eq("flat_hbm") & bw.kernel.eq("read")].cv_percent
    ddr_r, hbm_r = lr.loc[("flat_ddr", "read")], lr.loc[("flat_hbm", "read")]
    other = report.locality_ratio(ext, thesis)
    s1 = other[other.socket.eq(1) & other.config.eq("flat_hbm") & other.kernel.eq("read")].iloc[0]
    return [
        Claim(
            "remote_ddr",
            ddr_r.remote_over_local < 0.6,
            f"Socket 0 reaches {_pct(ddr_r.remote_over_local)} (read) to {_pct(lr.loc[('flat_ddr', 'triad_nt')].remote_over_local)} "
            f"(non-temporal Triad) of its local DDR bandwidth when the memory is on the other socket.",
        ),
        Claim(
            "remote_hbm",
            hbm_r.remote < ddr_r.remote and hbm_r.remote_over_local < 0.2,
            f"Remote HBM keeps {_pct(hbm_r.remote_over_local)} (read, {hbm_r.remote:.0f} GB/s against {hbm_r.local:.0f} GB/s local) to "
            f"{_pct(lr.loc[('flat_hbm', 'triad_nt')].remote_over_local)} (non-temporal Triad), below remote DDR "
            f"({ddr_r.remote:.0f} GB/s); socket 1 gives {s1.remote:.0f} GB/s ({_pct(s1.remote_over_local)}). The remote-HBM read "
            f"figure comes from one campaign with a coefficient of variation of {cv.min():.0f}–{cv.max():.0f}% and should be repeated "
            "before it is quoted as a headline. Link bandwidth alone does not explain it; the mechanism (for example directory "
            "updates) is not identified, because the UPI and CHA counters are not readable.",
        ),
    ]


def sockets(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    de = report.dual_efficiency(ext, thesis)
    kind = np.where(de.metric.eq("GB/s"), "bandwidth", "compute")
    by = de.groupby(kind).efficiency
    lo, hi = by.min(), by.max()
    return [
        Claim(
            "dual_efficiency",
            float(de.efficiency.min()) > 0.98 and float(de.efficiency.max()) < 1.02,
            f"Across {len(de)} paired measurements the two-process rate is {de.efficiency.min():.3f}–{de.efficiency.max():.3f}× the sum "
            f"of the isolated sockets (median {de.efficiency.median():.3f}); compute paths span {lo['compute']:.3f}–{hi['compute']:.3f} "
            f"and bandwidth paths {lo['bandwidth']:.3f}–{hi['bandwidth']:.3f}. The shared window overlapped by at least "
            f"{_pct(float(de.overlap_min.min()), 1)}. This describes independent workers, not tensor-parallel scaling.",
        )
    ]


def span(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    sp = report.span_table(ext)
    read = sp[sp.memory_mode.eq("flat") & sp.benchmark.eq("stream_read")].set_index(["config", "placement"]).gbs
    loc = report.bandwidth_summary(ext, thesis)
    loc = loc[loc.locality.eq("local") & loc.socket_scope.eq("single") & loc.kernel.eq("read")]
    isolated = {c: loc[loc.config.eq(c) & loc.working_set_gib.sub(8).abs().lt(0.5)].gbs.sum() for c in ("flat_hbm", "flat_ddr")}
    out = []
    for cfg, name in (("flat_hbm", "HBM"), ("flat_ddr", "DDR")):
        ft, il = read[(cfg, "firsttouch")], read[(cfg, "interleave")]
        out.append(
            Claim(
                f"span_{cfg}",
                il < ft,
                f"{name}, one 112-thread process, read-only: first-touch {ft:.0f} GB/s ({ft / isolated[cfg]:.0%} of the "
                f"{isolated[cfg]:.0f} GB/s that two isolated sockets sum to) against {il:.0f} GB/s interleaved "
                f"({il / ft:.0%} of first-touch).",
            )
        )
    hbm_loss = read[("flat_hbm", "interleave")] / read[("flat_hbm", "firsttouch")]
    ddr_loss = read[("flat_ddr", "interleave")] / read[("flat_ddr", "firsttouch")]
    out.append(
        Claim(
            "span_interleave_cost",
            hbm_loss < ddr_loss < 1,
            f"Interleaving costs more than half of the bandwidth on HBM (it keeps {_pct(hbm_loss)} of first-touch) and less on DDR "
            f"({_pct(ddr_loss)}). Interleaved HBM ends up close to interleaved DDR "
            f"({read[('flat_hbm', 'interleave')]:.0f} against {read[('flat_ddr', 'interleave')]:.0f} GB/s), which is consistent "
            "with half of every thread's traffic being remote and remote HBM being slow (inferred, not counted).",
        )
    )
    return out


# --------------------------------------------------------------- roofline
def ridges(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    from hwbench.roofline import ridge

    hbm = report.memory_ceiling(ext, thesis, "flat", "hbm")
    ddr = report.memory_ceiling(ext, thesis, "flat", "ddr")
    c = {p: report.compute_ceiling(ext, p, "flat", 56) for p in ("fp64", "amx_bf16", "amx_int8")}
    two = {
        p: report.compute_ceiling(ext, p, "flat", 56, "2S").gops / c[p].gops for p in ("fp64", "amx_bf16")
    }
    hbm2 = report.memory_ceiling(ext, thesis, "flat", "hbm", "2S")
    ddr2 = report.memory_ceiling(ext, thesis, "flat", "ddr", "2S")
    r = {(p, n): ridge(c[p].gops, m.gbs) for p in c for n, m in (("hbm", hbm), ("ddr", ddr))}
    ridge_shift = {
        "fp64": (two["fp64"] / (hbm2.gbs / hbm.gbs)),
        "amx_bf16": (two["amx_bf16"] / (hbm2.gbs / hbm.gbs)),
    }
    return [
        Claim(
            "ridge_points",
            r[("amx_bf16", "hbm")] > 100 and 5 < r[("fp64", "hbm")] < 12,
            f"On HBM ({hbm.gbs:.0f} GB/s, {hbm.kernel}) the ridge is {r[('fp64', 'hbm')]:.1f} FLOP/B for FP64, "
            f"{r[('amx_bf16', 'hbm')]:.0f} op/B for AMX BF16 and {r[('amx_int8', 'hbm')]:.0f} op/B for AMX INT8; on DDR "
            f"({ddr.gbs:.0f} GB/s, {ddr.kernel}) {r[('fp64', 'ddr')]:.1f}, {r[('amx_bf16', 'ddr')]:.0f} and {r[('amx_int8', 'ddr')]:.0f}. "
            "Ridge points are order-of-magnitude statements: bytes are modeled and the HBM ceiling is a 56-core figure.",
        ),
        Claim(
            "two_sockets_ridge",
            all(abs(v - 1) < 0.05 for v in ridge_shift.values()),
            f"Two sockets multiply the compute ceilings by {two['fp64']:.2f} (FP64) and {two['amx_bf16']:.2f} (AMX BF16) and the "
            f"HBM bandwidth ceiling by {hbm2.gbs / hbm.gbs:.2f} (DDR {ddr2.gbs / ddr.gbs:.2f}), so HBM ridge points move by "
            f"{ridge_shift['fp64'] - 1:+.1%} (FP64) and {ridge_shift['amx_bf16'] - 1:+.1%} (AMX BF16): essentially unchanged, "
            "because socket 1's HBM ceiling is a little higher than socket 0's.",
        ),
    ]


def fp64_sweep(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    peak = report.compute_ceiling(ext, "fp64", "flat", 56)
    hbm = report.memory_ceiling(ext, thesis, "flat", "hbm", access="readwrite")
    pts = report.fp64_sweep_points(thesis, "flat", "hbm")
    ridge_ai = peak.gops / hbm.gbs
    top = max(pts, key=lambda p: p.intensity)
    near = min(pts, key=lambda p: abs(p.intensity - ridge_ai))
    return [
        Claim(
            "sweep_plateau_not_reached",
            top.gops / peak.gops < 0.95 and near.gops / min(peak.gops, hbm.gbs * near.intensity) < 0.8,
            f"The FP64 sweep does not reach the compute plateau: at its highest intensity ({top.intensity:.0f} FLOP/B) it reaches "
            f"{top.gops / peak.gops:.0%} of the measured FP64 peak, and at the ridge (≈{ridge_ai:.0f} FLOP/B, point at "
            f"{near.intensity:.0f}) {near.gops / min(peak.gops, hbm.gbs * near.intensity):.0%} of the roofline. Its kernel runs 8 "
            "independent FMA chains (the product of the 4-cycle latency and 2 ports, with no slack), whereas the peak kernel runs 12; "
            "the sweep therefore under-fills the FMA pipes near the knee, and a 12-chain sweep is planned.",
        )
    ]


def gemm(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, root: Path = ROOT) -> list[Claim]:
    gm = report.gemm_points(ext)
    fl = gm[gm.memory_mode.eq("flat")]
    tile = {d: report.compute_ceiling(ext, p, "flat", 56).gops for d, p in (("bf16", "amx_bf16"), ("int8", "amx_int8"))}
    hbm_read = report.memory_ceiling(ext, thesis, "flat", "hbm", access="read").gbs
    big = fl[fl.memory_target.eq("hbm") & fl.m.eq(4096)].groupby("dtype").gops.max()
    m1 = fl[fl.memory_target.eq("hbm") & fl.m.eq(1)]
    best_m1 = m1.groupby("dtype").gbs.max()
    bf16 = m1[m1.dtype.eq("bf16")].set_index("shape").gbs
    ver = gemm_verbose(root)
    prepacked = ver[ver.dtype.eq("int8")].weights.unique()
    plain = ver[ver.dtype.eq("bf16")].weights.unique()
    samples = ext[ext.benchmark.eq("onednn_gemm_sweep") & ext.memory_mode.eq("flat")]
    grp = samples.groupby(["memory_target", "dtype", "n", "k", "m"]).performance_gops
    spread = (grp.max() / grp.min()).rename("ratio").reset_index()
    bimodal = spread[spread.ratio > 1.5]
    names = ", ".join(f"{r.dtype} {int(r.n)}×{int(r.k)} M={int(r.m)} ({r.memory_target})" for r in bimodal.itertuples())
    i4 = ver[ver.dtype.eq("int8") & ver.n.eq(4096) & ver.k.eq(4096) & ver.m.isin([32, 64, 128])]
    same_impl = i4.implementation.nunique() == 1 and len(i4) > 0
    return [
        Claim(
            "gemm_fraction_of_tile_peak",
            0.15 < big["bf16"] / tile["bf16"] < 0.6 and 0.15 < big["int8"] / tile["int8"] < 0.6,
            f"At M=4096 oneDNN reaches {big['bf16'] / 1000:.0f} TOP/s BF16 ({_pct(big['bf16'] / tile['bf16'])} of the measured tile peak) "
            f"and {big['int8'] / 1000:.0f} TOP/s INT8 ({_pct(big['int8'] / tile['int8'])}). The cause of the gap (tile loads, epilogue, "
            "data layout, call overhead) is not measured here.",
        ),
        Claim(
            "gemm_asymmetry",
            len(prepacked) == 1 and len(plain) == 1 and prepacked[0] != plain[0],
            f"BF16 and INT8 GEMM are **not like-for-like**: oneDNN's verbose log shows INT8 with prepacked weights "
            f"(`{prepacked[0] if len(prepacked) else '?'}`) and BF16 with plain weights (`{plain[0] if len(plain) else '?'}`), so the "
            "BF16 call must repack the weights inside every invocation (inferred from the layouts). Every call also includes Python dispatch and an OpenMP fork/join.",
        ),
        Claim(
            "gemv_fixed_cost",
            bf16["4096x4096"] < 0.6 * bf16["14336x4096"],
            f"At M=1 on HBM, BF16 4096×4096 reaches {bf16['4096x4096']:.0f} GB/s of modeled traffic against {bf16['14336x4096']:.0f} GB/s "
            f"for 14336×4096; the best of any shape is {best_m1['bf16']:.0f} (BF16) and {best_m1['int8']:.0f} GB/s (INT8), "
            f"{_pct(best_m1['bf16'] / hbm_read)} and {_pct(best_m1['int8'] / hbm_read)} of the {hbm_read:.0f} GB/s read ceiling. "
            "The shape dependence points to a fixed per-call cost, so decode-sized GEMM mixes framework, library and hardware "
            "effects and is not a measurement of HBM bandwidth.",
        ),
        Claim(
            "gemm_bimodal_points",
            len(bimodal) <= 4,
            f"Within one process {len(bimodal)} of {len(spread)} Flat GEMM configurations have samples that differ by more than "
            f"1.5× ({names}). "
            + (
                "oneDNN's verbose log names the same implementation for INT8 4096×4096 at M=32, 64 and 128 "
                f"(`{i4.implementation.iloc[0]}`), so the variation is not a visible switch of implementation; its cause is unknown."
                if same_impl
                else "The verbose log shows different implementations for neighbouring M."
            ),
        ),
    ]


def repeatability(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    cv = report.sample_cv(ext)
    q = cv.cv_percent.quantile([0.5, 0.9, 0.99])
    over = cv[cv.cv_percent > 5]
    worst = cv.loc[cv.cv_percent.idxmax()]
    fw = report.first_window_effect(ext)
    g = fw[fw.family.eq("gemm") & fw.memory_mode.eq("cache")].assign(pool=lambda f: (f.working_set_bytes / 2**30).round())
    spilled, resident = g[g.pool.gt(64)], g[g.pool.le(64)]
    flat = fw[fw.memory_mode.eq("flat")]
    return [
        Claim(
            "per_configuration_cv",
            float(q[0.5]) < 2 and float(q[0.99]) < 25 and float(cv.cv_percent.max()) < 50,
            f"Across {len(cv)} configurations (each a benchmark, tier, thread count, working set and, for GEMM, shape and batch) the "
            f"sample-to-sample coefficient of variation has a median of {q[0.5]:.1f}%, a 90th percentile of {q[0.9]:.1f}%, a 99th of "
            f"{q[0.99]:.1f}% and a maximum of {cv.cv_percent.max():.0f}% ({worst.benchmark} {worst['dtype']}, M={worst.m:.0f}). "
            f"{len(over)} configurations exceed 5%, {int((over.family == 'gemm').sum())} of them GEMM. An earlier version of this table "
            "grouped without the GEMM shape and reported a 99th percentile of 65%; that mixed different GEMMs.",
        ),
        Claim(
            "cold_first_window",
            float(spilled.ratio.median()) < 0.95 and float(resident.ratio.median()) > 0.98 and float(g.median_shift.abs().max()) < 0.03,
            f"In Cache mode the first timed window of a GEMM on the spilled 96 GiB pool is cold: it runs at {_pct(float(spilled.ratio.median()))} "
            f"of the later windows in the median (lowest {_pct(float(spilled.ratio.min()))}; {_pct(float((spilled.ratio < 0.9).mean()))} of the "
            f"configurations are below 90%), while on the 16 GiB pool it matches ({_pct(float(resident.ratio.median()))}). The median of five moves by "
            f"at most {_pct(float(g.median_shift.abs().max()), 1)} when that window is dropped, so the medians are unchanged but the "
            "minimum of those samples is not a steady-state value. Flat windows show no such effect "
            f"(median ratio {_pct(float(flat.ratio.median()), 1)}). The cause (the weight pool still being pulled into the HBM cache) is inferred.",
        ),
    ]


def headline_uncertainty(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    t1 = report.headline_table(ext, thesis, theory)
    worst = t1.loc[t1.total.idxmax()]
    best = t1.loc[t1.total.idxmin()]
    return [
        Claim(
            "headline_uncertainty",
            bool(t1.total.notna().all() and t1.basis.ne("").all()),
            f"Every headline ceiling carries an uncertainty: the sum of the sample spread and the largest repeat-run deviation is "
            f"{best.total:.1f}% for {best.quantity} and up to {worst.total:.1f}% for {worst.quantity}. Where a quantity was not "
            "repeated, the deviation of its family is used and labelled as such.",
        )
    ]


def all_claims(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, root: Path = ROOT) -> dict[str, list[Claim]]:
    return {
        "compute": compute_paths(ext, theory),
        "kernels": kernels(ext, thesis, theory),
        "core_scaling": core_scaling(ext, thesis, root),
        "cache_mode": cache_mode(ext, thesis),
        "hierarchy": hierarchy(ext, theory),
        "latency": latency(ext, theory, root),
        "xcheck": xcheck(ext, thesis),
        "repeatability": repeatability(ext, thesis),
        "headline_uncertainty": headline_uncertainty(ext, thesis, theory),
        "concurrent": concurrent(thesis),
        "placement": placement(ext, thesis),
        "sockets": sockets(ext, thesis),
        "span": span(ext, thesis),
        "ridges": ridges(ext, thesis, theory),
        "fp64_sweep": fp64_sweep(ext, thesis, theory),
        "gemm": gemm(ext, thesis, theory, root),
    }
