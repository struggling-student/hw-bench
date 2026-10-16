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
    cs = report.chain_sweep(ext)
    by = cs.pivot(index="threads", columns="chains", values="ops_per_cycle_per_core")
    chain_spread = float((by.max(axis=1) / by.min(axis=1)).max())
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
            "FP32 FMA.",
        ),
        Claim(
            "avx512_bf16_chains",
            chain_spread < 1.08 and float(by.max().max()) > 0.95 * float(bf.theory_ops_per_cycle),
            "The accumulator-chain sweep confirms the bound on this node: with 6, 12 and 24 independent chains one core reaches "
            + ", ".join(f"{by.loc[1, c]:.1f}" for c in (6, 12, 24))
            + " operations per cycle and 56 cores "
            + ", ".join(f"{by.loc[56, c]:.1f}" for c in (6, 12, 24))
            + f" per core, within {_pct(chain_spread - 1, 1)} of each other, so the rate does not depend on the chain count and the "
            f"best case reaches {_pct(float(by.max().max()) / float(bf.theory_ops_per_cycle))} of {bf.theory_ops_per_cycle:.0f}. "
            "Two chains per cycle of latency are enough to hide the 8-cycle latency, and the 12-chain peak kernel is a sound measurement.",
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


def probe_events(root: Path = ROOT) -> dict[str, dict[str, dict]]:
    """Counter-probe results (benchmarks/probe_counters.cpp), by workload and tier, then event."""

    out: dict[str, dict[str, dict]] = {}
    for path in sorted((root / "data/probes").glob("counters-*/*.json")):
        workload, tier = path.stem.rsplit("-", 1)
        data = json.loads(path.read_text())
        out.setdefault(f"{workload}/{tier}", {}).update({e["name"]: e for e in data["events"]})
    return out


def counters(root: Path = ROOT) -> list[Claim]:
    probe = probe_events(root)
    if not probe:
        return []
    reads = "OCR.READS_TO_CORE.DRAM"
    writes = "OCR.WRITE_ESTIMATE.MEMORY"

    def per_line(workload: str, event: str) -> float:
        return float(np.mean([probe[f"{workload}/{t}"][event]["per_expected_line"] for t in ("ddr", "hbm")]))

    read_pass, triad, triad_nt = per_line("read", reads), per_line("triad", reads), per_line("triad-nt", reads)
    opened = all(e["opened"] for run in probe.values() for e in run.values() if e["name"] in {"instructions", "ref-cycles", reads, writes})
    return [
        Claim(
            "counters_unprivileged",
            opened and abs(read_pass - 1) < 0.05,
            "At `perf_event_paranoid=2` the per-thread, user-mode events instructions, reference cycles and the offcore-response events "
            f"for DRAM reads and writes open without privileges, and they count what a known pass moves: {read_pass:.3f} read lines per "
            f"line of a 1 GiB read pass, {per_line('store', writes):.2f} write lines per line of a store pass. The same counts come out on DDR and HBM, so "
            "the events measure traffic but do not tell the tiers apart (the NUMA binding does).",
        ),
        Claim(
            "write_allocate_counted",
            abs(triad - triad_nt) < 0.05 and triad < 0.8,
            f"Regular Triad causes {triad:.3f} DRAM read lines per array line, non-temporal Triad {triad_nt:.3f}: both read two of the three "
            f"arrays (2/3 = 0.667) and a read-for-ownership of the destination would have added 0.333. Writes count {per_line('triad', writes):.3f} "
            "lines per array line. So regular Triad does not read the lines it overwrites, as the 313 GB/s bound also implied; this probe ran one "
            "thread on 1 GiB arrays, and the 56-core check is the `counted` campaign part.",
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
    gm = report.gemm_points(ext)
    spill = gm[gm.memory_mode.eq("cache") & gm.m.eq(1) & gm.pool_gib.gt(64)]
    big_spill = spill[spill["shape"].eq("14336x4096")].set_index("dtype").gbs
    per = report.campaign_medians(ext, thesis)
    read96 = per[per.memory_mode.eq("cache") & per.quantity.eq("stream_read/effective_cache") & per.working_set_gib.eq(96)]["median"]
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
            f"{_pct(nt[96.0] / ddr['triad_nt'])} (non-temporal Triad) of Flat DDR. The cache lookup and fill add cost on every miss. "
            "These are kernel rates; a GEMM streaming weights does better than the read-only kernel there (claim `cache_spilled_gemm`).",
        ),
        Claim(
            "cache_spilled_gemm",
            bool(spill.gbs.min() > read96.max() * 1.1 and spill.gbs.max() < triad[96.0] * 1.05),
            f"What a model larger than the HBM cache gets is the rate its GEMMs stream weights, not the read-only kernel's. With a 96 GiB weight pool, "
            f"decode GEMMs (M=1) stream {spill.gbs.min():.0f}–{spill.gbs.max():.0f} GB/s over the four shapes and both precisions (14336×4096: "
            f"{big_spill['bf16']:.0f} BF16, {big_spill['int8']:.0f} INT8), {_pct(spill.gbs.min() / ddr['read'])}–{_pct(spill.gbs.max() / ddr['read'])} of Flat DDR "
            f"read, while the read-only kernel at 96 GiB moves {read96.min():.0f}–{read96.max():.0f} GB/s in two campaigns and Triad {triad[96.0]:.0f}. The ordering "
            "read-only < GEMM ≤ Triad is unexplained: a pure read stream should not be slower than one that also writes. One difference is that each "
            "read thread streams its own private array while the GEMM's threads share one matrix at a time (a hypothesis; the memory-side-cache tag "
            "counters would test it). The read-only kernel is therefore not used as the spilled ceiling of a GEMM.",
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
    far = report.cache_latency_far(ext).set_index("working_set_gib").latency_ns
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
            "cache_latency_far",
            bool(far.is_monotonic_increasing and far.loc[128] > 1.4 * mem["flat_ddr"]),
            "Cache-mode idle latency, measured from inside the HBM cache to far beyond it, rises with the working set: "
            + ", ".join(f"{far.loc[g]:.0f}" for g in (16, 32, 64, 96, 128))
            + f" ns at 16, 32, 64, 96 and 128 GiB, against {mem['flat_ddr']:.0f} ns on Flat DDR and {mem['flat_hbm']:.0f} ns on Flat HBM. "
            "There is no step at the 64 GiB capacity: the smooth rise is what a growing miss fraction would give (conflict misses in a "
            f"direct-mapped cache, inferred), and at 128 GiB a load costs {far.loc[128] - mem['cache']:.0f} ns more than a hit "
            f"({mem['cache']:.0f} ns at 4 GiB), {far.loc[128] / mem['flat_ddr']:.1f}× Flat DDR.",
        ),
    ]


def _earlier_levels(root: Path) -> dict[str, dict[str, float]]:
    """Per-core levels (GB/s and B/cycle, Flat HBM) of the earlier read kernel, from its own campaign."""

    from hwbench.extended import select_earlier

    df, _, _, policy = report.load(root)
    old = select_earlier(df, policy)
    lv, _ = report.level_summary(report.hierarchy(old))
    gbs = lv[lv.config.eq("flat_hbm")].set_index("level").gbs
    one = old[old.notes.eq("hier_read_1") & old.working_set_bytes.eq(32 * 2**10) & old.memory_target.eq("hbm")]
    ghz = float(one.ghz_effective.median())
    return {name: dict(gbs=float(value), per_cycle=float(value) / ghz) for name, value in gbs.items()}


def hierarchy(ext: pd.DataFrame, theory: Theory, root: Path = ROOT) -> list[Claim]:
    before = _earlier_levels(root)
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
            "l1_read_batching",
            bool(
                100 < per_cycle <= 128 * 1.02
                and per_cycle > 1.15 * before["L1 (32 KiB)"]["per_cycle"]
                and all(abs(v[k] / before[k]["gbs"] - 1) < 0.05 for k in ("L2 (1 MiB)", "memory, 1 core (4 GiB)"))
            ),
            f"The read kernel now reads the clock once per about 4 MiB of passes (review A15). One core over 32 KiB reads {v['L1 (32 KiB)']:.0f} GB/s, "
            f"{per_cycle:.0f} B/cycle at {ghz:.2f} GHz, {_pct(per_cycle / 128)} of the 128 B/cycle two-load-port limit; the earlier kernel, which read the clock "
            f"and reduced its accumulators after every pass, gave {before['L1 (32 KiB)']['gbs']:.0f} GB/s ({before['L1 (32 KiB)']['per_cycle']:.0f} B/cycle), so the "
            "L1 bandwidth it reported was a measurement overhead and not an L1 property. L2 "
            f"({v['L2 (1 MiB)']:.0f} against {before['L2 (1 MiB)']['gbs']:.0f} GB/s) and memory ({v['memory, 1 core (4 GiB)']:.1f} against "
            f"{before['memory, 1 core (4 GiB)']['gbs']:.1f} GB/s) are unchanged within 5%, as expected where a pass takes microseconds or longer. "
            "The clock under L1-resident reads is lower than under L2 or memory reads, so per-cycle figures, not GB/s, compare the levels.",
        ),
    ]


def xcheck(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    x = report.xcheck_table(ext, thesis)
    f, c = x[x.memory_mode.eq("flat")], x[x.memory_mode.eq("cache")]
    rr = report.repeat_ranges(ext)
    cs = report.campaign_spread(ext, thesis)
    streams = cs[cs.quantity.str.startswith("stream_")]
    flat_s, cache_s = streams[streams.memory_mode.eq("flat")], streams[streams.memory_mode.eq("cache")]
    widest_flat = flat_s.loc[flat_s.same_node_percent.idxmax()]
    widest = cache_s.loc[cache_s.same_node_percent.idxmax()]
    node_dev = float(c.deviation_percent.abs().max())
    kernel_name = {"stream_read": "read-only", "stream_triad": "Triad", "stream_triad_nt": "non-temporal Triad"}
    label = lambda r: f"{kernel_name[r.quantity.split('/')[0]]} at {r.working_set_gib:.0f} GiB"  # noqa: E731
    return [
        Claim(
            "repeat_runs",
            float(f.deviation_percent.abs().max()) < 3 and float(c.deviation_percent.abs().max()) < 10,
            f"Repeat runs on the same Flat node differ by at most {f.deviation_percent.abs().max():.1f}% "
            f"({_pct(f.within_tolerance.mean())} of {len(f)} points within 2%), including the October Slurm-exclusive runs against "
            f"the SSH runs, so the launch method is not a visible source of error. Cache repeats on a second node differ by up to "
            f"{c.deviation_percent.abs().max():.1f}% ({_pct(c.within_tolerance.mean())} of {len(c)} within 2%). "
            "These cross-run differences are a systematic uncertainty on top of the sample-to-sample spread.",
        ),
        Claim(
            "repeat_launches",
            bool(rr[rr.quantity.str.contains("_peak")].repeat_range_percent.max() < 0.5 and rr.repeat_range_percent.max() < 2.5),
            f"Three independent launches of the headline numbers on one node agree to {rr[rr.quantity.str.contains('_peak')].repeat_range_percent.max():.2f}% "
            f"for every compute path, {rr[rr.quantity.eq('stream_triad/ddr') | rr.quantity.eq('stream_read/ddr')].repeat_range_percent.max():.2f}% for DDR, "
            f"{rr[rr.quantity.eq('stream_triad/hbm')].repeat_range_percent.iloc[0]:.2f}% for HBM Triad and "
            f"{rr[rr.quantity.eq('stream_read/hbm')].repeat_range_percent.iloc[0]:.1f}% for HBM read-only; in Cache mode "
            f"{rr[(rr.memory_mode == 'cache') & rr.quantity.eq('stream_triad/effective_cache')].repeat_range_percent.iloc[0]:.1f}% (Triad) and "
            f"{rr[(rr.memory_mode == 'cache') & rr.quantity.eq('stream_read/effective_cache')].repeat_range_percent.iloc[0]:.1f}% (read-only). "
            "Those launches ran back to back, minutes apart.",
        ),
        Claim(
            "campaign_spread",
            bool(widest_flat.same_node_percent < 3.5 and widest.same_node_percent > 0.8 * node_dev),
            f"Campaigns on different days measured the same configurations again. On the Flat node they agree to "
            f"{widest_flat.same_node_percent:.1f}% at most ({label(widest_flat)} on {widest_flat.quantity.split('/')[1].upper()}); on the reference Cache "
            f"node ({report.REFERENCE_NODE['cache'].split('-')[-1]}) they differ by up to {widest.same_node_percent:.0f}% ({label(widest)}: "
            f"{widest.same_node_low:.0f} to {widest.same_node_high:.0f} GB/s over {int(widest.same_node_campaigns)} campaigns), "
            f"{'more than' if widest.same_node_percent > node_dev else 'as much as'} the {node_dev:.1f}% between the two Cache nodes. The difference "
            "between Cache nodes therefore cannot be attributed to the node: Cache-mode bandwidth varies as much between launches on one node, "
            "plausibly because the pages land differently in the direct-mapped memory-side cache each time (inferred; no hit-rate counter). "
            "Cache-mode rates are quoted with that between-campaign range.",
        ),
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
    ddr_r, hbm_r = lr.loc[("flat_ddr", "read")], lr.loc[("flat_hbm", "read")]
    rt = report.remote_repeat_table(ext)
    at56 = rt[rt.threads.eq(56)]

    def pick(kernel: str, tier: str, socket: int) -> pd.Series:
        return at56[at56.kernel.eq(kernel) & at56.memory_target.eq(tier) & at56.socket.eq(socket)].iloc[0]

    h0, h1, d0 = pick("read", "hbm", 0), pick("read", "hbm", 1), pick("read", "ddr", 0)
    first = report.bandwidth_summary(ext, thesis)
    first_cv = first[first.locality.eq("remote") & first.config.eq("flat_hbm") & first.kernel.eq("read")].cv_percent
    n0 = pick("triad_nt", "hbm", 0)
    prof = rt[rt.kernel.eq("read") & rt.memory_target.eq("hbm") & rt.socket.eq(0)].set_index("threads").gbs_remote
    dprof = rt[rt.kernel.eq("read") & rt.memory_target.eq("ddr") & rt.socket.eq(0)].set_index("threads").gbs_remote
    peak_t = int(prof.idxmax())
    return [
        Claim(
            "remote_ddr",
            ddr_r.remote_over_local < 0.6,
            f"Socket 0 reaches {_pct(ddr_r.remote_over_local)} (read) to {_pct(lr.loc[('flat_ddr', 'triad_nt')].remote_over_local)} "
            f"(non-temporal Triad) of its local DDR bandwidth when the memory is on the other socket.",
        ),
        Claim(
            "remote_hbm",
            h0.gbs_remote < d0.gbs_remote and h0.remote_over_local < 0.15 and h1.remote_over_local < 0.15,
            f"Remote HBM keeps {_pct(float(h0.remote_over_local), 1)} of local read bandwidth for socket 0 ({h0.gbs_remote:.1f} GB/s against "
            f"{h0.gbs_local:.0f} GB/s) and {_pct(float(h1.remote_over_local), 1)} for socket 1 ({h1.gbs_remote:.1f} GB/s) with 56 threads, and "
            f"{_pct(float(n0.remote_over_local))} for non-temporal Triad ({n0.gbs_remote:.0f} GB/s), against {d0.gbs_remote:.0f} GB/s for remote DDR. "
            f"This repeat (separate campaign, 5 s windows, CV {at56[at56.kernel.eq('read') & at56.memory_target.eq('hbm')].cv_remote.min():.1f}–"
            f"{at56[at56.kernel.eq('read') & at56.memory_target.eq('hbm')].cv_remote.max():.1f}%) confirms the first campaign's "
            f"{hbm_r.remote:.0f} GB/s ({_pct(hbm_r.remote_over_local)}, CV {first_cv.min():.0f}–{first_cv.max():.0f}%) and gives the figure to quote. Link bandwidth alone does not explain it; "
            "the mechanism is not identified, because the UPI and CHA counters are not readable.",
        ),
        Claim(
            "remote_hbm_thread_profile",
            bool(prof.max() > 2 * prof.loc[56] and dprof.loc[56] > 0.95 * dprof.loc[28]),
            f"Remote HBM does not hit a flat ceiling: its read bandwidth rises to {prof.max():.0f} GB/s at {peak_t} threads, is still {prof.loc[28]:.0f} GB/s "
            f"at 28 and then falls to {prof.loc[56]:.1f} GB/s at 56, while remote DDR plateaus at {dprof.loc[28]:.0f} GB/s from 28 threads on. "
            "More concurrent requesters make remote HBM slower, which is what contention on a shared resource (directory or snoop traffic, link credits) would "
            "do; which resource is not measured.",
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

    hbm = report.memory_ceiling(ext, thesis, "flat", "hbm", access="read")
    ddr = report.memory_ceiling(ext, thesis, "flat", "ddr", access="read")
    ert = report.memory_ceiling(ext, thesis, "flat", "hbm", access="best")
    c = {p: report.compute_ceiling(ext, p, "flat", 56) for p in ("fp64", "amx_bf16", "amx_int8")}
    two = {
        p: report.compute_ceiling(ext, p, "flat", 56, "2S").gops / c[p].gops for p in ("fp64", "amx_bf16")
    }
    hbm2 = report.memory_ceiling(ext, thesis, "flat", "hbm", "2S", access="read")
    ddr2 = report.memory_ceiling(ext, thesis, "flat", "ddr", "2S", access="read")
    r = {(p, n): ridge(c[p].gops, m.gbs) for p in c for n, m in (("hbm", hbm), ("ddr", ddr))}
    ridge_shift = {
        "fp64": (two["fp64"] / (hbm2.gbs / hbm.gbs)),
        "amx_bf16": (two["amx_bf16"] / (hbm2.gbs / hbm.gbs)),
    }
    return [
        Claim(
            "ridge_points",
            r[("amx_bf16", "hbm")] > 100 and 5 < r[("fp64", "hbm")] < 12 and hbm.kernel == ddr.kernel == "read" and ert.gbs >= hbm.gbs,
            f"On HBM ({hbm.gbs:.0f} GB/s, {hbm.kernel}) the ridge is {r[('fp64', 'hbm')]:.1f} FLOP/B for FP64, "
            f"{r[('amx_bf16', 'hbm')]:.0f} op/B for AMX BF16 and {r[('amx_int8', 'hbm')]:.0f} op/B for AMX INT8; on DDR "
            f"({ddr.gbs:.0f} GB/s, {ddr.kernel}) {r[('fp64', 'ddr')]:.1f}, {r[('amx_bf16', 'ddr')]:.0f} and {r[('amx_int8', 'ddr')]:.0f}. "
            "These are the read-only ceilings, the ones the headline roofline, Table 2 and the decode bound use. Ridge points are "
            "order-of-magnitude statements: bytes are modeled and the HBM ceiling is a 56-core figure. The ERT reference envelope of the atlas "
            f"takes the fastest kernel instead ({ert.kernel}, {ert.gbs:.0f} GB/s on HBM), which moves the HBM ridges "
            f"{1 - hbm.gbs / ert.gbs:.0%} to the left.",
        ),
        Claim(
            "two_sockets_ridge",
            all(abs(v - 1) < 0.05 for v in ridge_shift.values()),
            f"Two sockets multiply the compute ceilings by {two['fp64']:.2f} (FP64) and {two['amx_bf16']:.2f} (AMX BF16) and the "
            f"HBM read ceiling by {hbm2.gbs / hbm.gbs:.2f} (DDR {ddr2.gbs / ddr.gbs:.2f}), so HBM ridge points move by "
            f"{ridge_shift['fp64'] - 1:+.1%} (FP64) and {ridge_shift['amx_bf16'] - 1:+.1%} (AMX BF16): essentially unchanged.",
        ),
    ]


def decode_bound(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    """The modeled decode bound: weights streamed once per token, read at the measured ceiling."""

    from hwbench.roofline import ridge

    spec = theory.data["model"]["llama31_8b"]
    gigabytes = theory.model_bytes() / 1e9
    hbm = report.memory_ceiling(ext, thesis, "flat", "hbm", access="read")
    ddr = report.memory_ceiling(ext, thesis, "flat", "ddr", access="read")
    tokens = {"hbm": hbm.gbs / gigabytes, "ddr": ddr.gbs / gigabytes}
    embedding = int(spec["vocab_size"]) * int(spec["hidden_size"]) / theory.model_parameters()
    gm = report.gemm_points(ext)
    one = gm[gm.memory_mode.eq("flat") & gm.dtype.eq("bf16") & gm["shape"].eq("14336x4096") & gm.m.eq(1)]
    intensity = float(one.intensity.median())
    amx = report.compute_ceiling(ext, "amx_bf16", "flat", 56)
    gap = {"hbm": ridge(amx.gops, hbm.gbs) / intensity, "ddr": ridge(amx.gops, ddr.gbs) / intensity}
    dt = report.decode_table(ext, thesis, theory)
    conv = dt[dt.pool.eq("64× on-chip")].set_index(["tier", "precision"])
    pk = dt[dt.layout.eq("prepacked") & dt.precision.eq("bf16")].set_index("tier")
    pool = report.gemm_pool_table(ext)
    plain4 = pool[pool["shape"].eq("14336x4096") & pool.m.eq(1) & pool.pool_x.eq(4) & pool.dtype.eq("bf16")].set_index("memory_target")
    plain64 = conv.loc[("Flat HBM", "bf16")].gbs
    ratio = {d: conv.loc[("Flat HBM", d)].gbs / conv.loc[("Flat DDR", d)].gbs for d in ("bf16", "int8")}
    frac = {(t, d): conv.loc[(t, d)].of_read_ceiling for t in ("Flat HBM", "Flat DDR") for d in ("bf16", "int8")}
    return [
        Claim(
            "decode_bound",
            bool(
                abs(gigabytes - 16.06) < 0.05
                and 1.9 < tokens["hbm"] / tokens["ddr"] < 2.2
                and 30 < tokens["hbm"] < 38
                and 14 < tokens["ddr"] < 18
            ),
            f"Modeled decode bound: {spec['label']} has {theory.model_parameters() / 1e9:.2f} billion weights, {gigabytes:.1f} GB in BF16, "
            f"streamed once per generated token. At the measured read ceiling that is {hbm.gbs:.0f} GB/s ÷ {gigabytes:.1f} GB ≈ "
            f"{tokens['hbm']:.0f} tokens/s per socket on HBM against {ddr.gbs:.0f} GB/s ÷ {gigabytes:.1f} GB ≈ {tokens['ddr']:.0f} tokens/s on DDR "
            f"({tokens['hbm'] / tokens['ddr']:.2f}×). This is an upper bound for one sequence: it counts the embedding table, "
            f"which a step reads one row of ({_pct(embedding)} of the weights, so the bound is that much conservative), and ignores the KV cache, activations and the library's per-call cost.",
        ),
        Claim(
            "decode_far_below_ridge",
            bool(150 < gap["hbm"] < 260 and gap["ddr"] > gap["hbm"]),
            f"A decode step (M = 1) has a modeled intensity of {intensity:.2f} operations per byte, about {gap['hbm']:.0f}× below the AMX BF16 ridge on HBM "
            f"({ridge(amx.gops, hbm.gbs):.0f} op/B) and {gap['ddr']:.0f}× below it on DDR ({ridge(amx.gops, ddr.gbs):.0f} op/B). "
            "Decode is memory-bound by two orders of magnitude, so the AMX peak does not limit it; batching raises intensity in proportion to M.",
        ),
        Claim(
            "decode_achieved",
            bool(ratio["bf16"] < tokens["hbm"] / tokens["ddr"] and ratio["int8"] < tokens["hbm"] / tokens["ddr"]
                 and frac[("Flat HBM", "bf16")] < frac[("Flat DDR", "bf16")]
                 and plain4.loc["hbm"].counted_gbs <= plain64 <= plain4.loc["hbm"].modeled_gbs * 1.01),
            f"What a decode step achieves (14336×4096, M=1, converged pool): {conv.loc[('Flat HBM', 'bf16')].gbs:.0f} GB/s for plain BF16 and "
            f"{conv.loc[('Flat HBM', 'int8')].gbs:.0f} GB/s for INT8 on HBM ({_pct(frac[('Flat HBM', 'bf16')])} and {_pct(frac[('Flat HBM', 'int8')])} of the read "
            f"ceiling), against {conv.loc[('Flat DDR', 'bf16')].gbs:.0f} and {conv.loc[('Flat DDR', 'int8')].gbs:.0f} GB/s on DDR ({_pct(frac[('Flat DDR', 'bf16')])} and "
            f"{_pct(frac[('Flat DDR', 'int8')])}). The library streams DDR almost at the read ceiling but leaves a third of HBM unused, so HBM beats DDR by "
            f"{ratio['bf16']:.2f}× (BF16) and {ratio['int8']:.2f}× (INT8) for this GEMM, not the {tokens['hbm'] / tokens['ddr']:.2f}× of the read kernel. If every "
            f"weight streamed at this rate, Llama-3.1-8B would decode at most {conv.loc[('Flat HBM', 'bf16')].tokens_per_s:.0f} tokens/s per socket in BF16 and "
            f"{conv.loc[('Flat HBM', 'int8')].tokens_per_s:.0f} in INT8 on HBM ({conv.loc[('Flat DDR', 'bf16')].tokens_per_s:.0f} and "
            f"{conv.loc[('Flat DDR', 'int8')].tokens_per_s:.0f} on DDR), against {tokens['hbm']:.0f} from the read ceiling; the 4096×4096 projections stream "
            f"slower, so the whole model would be slower still. Prepacked BF16 was measured only with a 4× pool: {pk.loc['Flat HBM'].gbs:.0f} GB/s modeled and "
            f"{pk.loc['Flat HBM'].counted_gbs:.0f} counted on HBM; for plain BF16 the converged value ({plain64:.0f}) lies between the 4× counted "
            f"({plain4.loc['hbm'].counted_gbs:.0f}) and modeled ({plain4.loc['hbm'].modeled_gbs:.0f}) values, so the converged prepacked value presumably lies between "
            f"{pk.loc['Flat HBM'].counted_gbs:.0f} and {pk.loc['Flat HBM'].gbs:.0f} GB/s (an extrapolation; the prepared part `gemmconv` measures it).",
        ),
    ]


def platform_caveats(ext: pd.DataFrame, root: Path = ROOT) -> list[Claim]:
    """Settings of the execution nodes that bound how the clocks and pages behaved (review L2)."""

    seen = {"cmdline": set(), "driver": set(), "governor": set(), "reclaim": set(), "thp": set()}
    for path in sorted((root / "data/raw").glob("*/*/system/platform.json")):
        plat = json.loads(path.read_text())
        policy, proc = plat["kernel_policy"], plat["processor"]
        cmd = policy["kernel_cmdline"].split()
        seen["cmdline"].add(("intel_pstate=disable" in cmd, "mitigations=off" in cmd))
        seen["driver"].add(proc["scaling_driver"])
        seen["governor"].add(proc["scaling_governor"])
        seen["reclaim"].add(policy["zone_reclaim_mode"])
        seen["thp"].add(policy["transparent_hugepage"])
    ghz_max = float(ext.ghz_effective.max())
    turbo = Theory.load().max_turbo_ghz
    uniform = all(len(v) == 1 for v in seen.values())
    return [
        Claim(
            "platform_caveats",
            bool(
                uniform
                and seen["cmdline"] == {(True, True)}
                and seen["driver"] == {"acpi-cpufreq"}
                and seen["governor"] == {"schedutil"}
                and seen["reclaim"] == {1}
                and seen["thp"] == {"always"}
                and ghz_max < 0.8 * turbo
            ),
            "Settings of every execution node, identical in all campaigns: the kernel boots with `intel_pstate=disable` and `mitigations=off`, so "
            f"frequency is set by `{next(iter(seen['driver']))}` under the `{next(iter(seen['governor']))}` governor, not by the hardware "
            f"P-state driver; the highest effective clock any kernel reached is {ghz_max:.2f} GHz against the {turbo:.1f} GHz maximum turbo of the "
            f"data sheet ({_pct(ghz_max / turbo)}), so efficiency is reported at the measured clock and no turbo claim is made; "
            f"`zone_reclaim_mode` is {next(iter(seen['reclaim']))}, which makes the kernel reclaim local pages before allocating on another node (placement is bound explicitly in any case); and "
            f"transparent huge pages are `{next(iter(seen['thp']))}`, so large buffers are mapped with huge pages without being asked, which reduces "
            "translation cost relative to a node with the default `madvise`. Latency and bandwidth are measured under these settings.",
        )
    ]


def fp64_sweep(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    t = report.fp64_sweep12_table(ext, thesis, theory)
    h12 = t[t.memory_target.eq("hbm") & t.chains.eq(12)].set_index("k")
    h8 = t[t.memory_target.eq("hbm") & t.chains.eq(8)].set_index("k")
    d12 = t[t.memory_target.eq("ddr") & t.chains.eq(12)].set_index("k")
    return [
        Claim(
            "sweep_reaches_plateau",
            bool(h12.loc[1024].fraction_of_peak > 0.98 and d12.loc[1024].fraction_of_peak > 0.98 and h8.loc[1024].fraction_of_peak < 0.92),
            f"With 12 independent FMA chains the FP64 sweep reaches {_pct(float(h12.loc[512].fraction_of_peak), 1)} of the measured FP64 peak at "
            f"{h12.loc[512].intensity:.0f} FLOP/B and {_pct(float(h12.loc[1024].fraction_of_peak), 1)} at {h12.loc[1024].intensity:.0f} FLOP/B "
            f"(DDR: {_pct(float(d12.loc[1024].fraction_of_peak), 1)}); the 8-chain kernel of the earlier campaign stops at "
            f"{_pct(float(h8.loc[1024].fraction_of_peak), 1)} (control at K = 1024). The earlier shortfall was the kernel's chain count, not the hardware.",
        ),
        Claim(
            "sweep_clock_near_ridge",
            bool(h12.loc[64].ghz < 0.8 * h12.loc[1024].ghz and h12.loc[64].fraction_at_clock > 0.85),
            f"Near the ridge the cores run slower: at {h12.loc[64].intensity:.0f} FLOP/B on HBM the effective clock is {h12.loc[64].ghz:.2f} GHz "
            f"against {h12.loc[1024].ghz:.2f} GHz at high intensity, so the sweep sits at {_pct(float(h12.loc[64].fraction_of_peak))} of the peak but "
            f"{_pct(float(h12.loc[64].fraction_at_clock))} of the peak at that clock. The dip around the ridge is mostly the clock drop under HBM streaming "
            "(cause not measured), not a kernel limit.",
        ),
    ]


def gemm(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, root: Path = ROOT) -> list[Claim]:
    gm = report.gemm_points(ext)
    fl = gm[gm.memory_mode.eq("flat")]
    tile = {d: report.compute_ceiling(ext, p, "flat", 56).gops for d, p in (("bf16", "amx_bf16"), ("int8", "amx_int8"))}
    hbm_read = report.memory_ceiling(ext, thesis, "flat", "hbm", access="read")
    ddr_read = report.memory_ceiling(ext, thesis, "flat", "ddr", access="read")
    big = fl[fl.memory_target.eq("hbm") & fl.m.eq(4096)].groupby("dtype").gops.max()
    ver = gemm_verbose(root)
    prepacked = ver[ver.dtype.eq("int8")].weights.unique()
    plain = ver[ver.dtype.eq("bf16")].weights.unique()
    samples = ext[ext.benchmark.eq("onednn_gemm_sweep") & ext.memory_mode.eq("flat") & ext.notes.eq("gemm_sweep")]
    grp = samples.groupby(["memory_target", "dtype", "n", "k", "m"]).performance_gops
    spread = (grp.max() / grp.min()).rename("ratio").reset_index()
    bimodal = spread[spread.ratio > 1.5]
    names = ", ".join(f"{r.dtype} {int(r.n)}×{int(r.k)} M={int(r.m)} ({r.memory_target})" for r in bimodal.itertuples())
    i4 = ver[ver.dtype.eq("int8") & ver.n.eq(4096) & ver.k.eq(4096) & ver.m.isin([32, 64, 128])]
    same_impl = i4.implementation.nunique() == 1 and len(i4) > 0

    pool = report.gemm_pool_table(ext)
    big_shape = pool[pool["shape"].eq("14336x4096") & pool.m.eq(1)]
    conv = big_shape.pivot_table(index=["memory_target", "dtype"], columns="pool_x", values="counted_gbs")
    conv_gap = float(((conv[16] - conv[64]).abs() / conv[64]).max())
    mod = big_shape.pivot_table(index=["memory_target", "dtype"], columns="pool_x", values="modeled_gbs")
    ddr_bf, hbm_bf = mod.loc[("ddr", "bf16")], mod.loc[("hbm", "bf16")]
    pk = report.gemm_prepacked_table(ext)
    pk_big = pk[pk["shape"].eq("14336x4096")]
    pk_small = pk[pk["shape"].eq("4096x4096") & pk.m.eq(1)].set_index("memory_target")
    ov = report.gemm_overhead_table(ext)
    hot = ov[ov.pool.eq("hot") & ov.m.eq(1)]
    floor = hot.groupby("shape").us_per_call.agg(["min", "max"])
    int8_m1 = pool[pool["shape"].eq("14336x4096") & pool.m.eq(1) & pool.pool_x.eq(64) & pool.memory_target.eq("hbm")].set_index("dtype")
    pk_hbm_m1 = pk_big[pk_big.memory_target.eq("hbm") & pk_big.m.eq(1)].iloc[0]
    pass_us = 14336 * 4096 * 2 / (hbm_read.gbs * 1e9) * 1e6  # one pass over BF16 weights at the read ceiling
    # First sweep (pool about 2x on-chip) against the converged 64x pool, 14336x4096.
    first = fl[fl["shape"].eq("14336x4096")].set_index(["memory_target", "dtype", "m"]).gbs
    conv64 = pool[pool["shape"].eq("14336x4096") & pool.pool_x.eq(64)].set_index(["memory_target", "dtype", "m"]).modeled_gbs
    bias = (first.reindex(conv64.index) / conv64).dropna()
    small_bias, large_bias = bias[bias.index.get_level_values("m") <= 16], bias[bias.index.get_level_values("m") >= 256]
    m256 = pool[pool.m.eq(256)].pivot_table(index=["memory_target", "dtype", "shape"], columns="pool_x", values="gops")
    pool_effect_256 = float(((m256[4] - m256[64]).abs() / m256[64]).max())
    m16 = pool[pool.m.eq(16)].pivot_table(index=["memory_target", "dtype", "shape"], columns="pool_x", values="gops")
    pool_effect_16 = float(((m16[4] - m16[64]).abs() / m16[64]).max())
    b1 = {k: float(bias.loc[(*k, 1.0)]) for k in [("hbm", "bf16"), ("hbm", "int8"), ("ddr", "bf16"), ("ddr", "int8")]}
    int8_4x = float(pool[pool["shape"].eq("14336x4096") & pool.m.eq(1) & pool.pool_x.eq(4) & pool.memory_target.eq("hbm") & pool["dtype"].eq("int8")].modeled_gbs.iloc[0])
    return [
        Claim(
            "gemm_fraction_of_tile_peak",
            0.15 < big["bf16"] / tile["bf16"] < 0.6 and 0.15 < big["int8"] / tile["int8"] < 0.6,
            f"At M=4096 oneDNN reaches {big['bf16'] / 1000:.0f} TOP/s BF16 ({_pct(big['bf16'] / tile['bf16'])} of the measured tile peak) "
            f"and {big['int8'] / 1000:.0f} TOP/s INT8 ({_pct(big['int8'] / tile['int8'])}). The cause of the gap (tile loads, epilogue, "
            "data layout, call overhead) is not measured here.",
        ),
        Claim(
            "gemm_pool_convergence",
            conv_gap < 0.03 and float(ddr_bf[64]) < ddr_read.gbs,
            f"The weight pool of the first GEMM campaign (about 2× the on-chip capacity) was too small: even a 4× pool leaves the counted DRAM traffic "
            f"below the modeled one at M=1, and the modeled bandwidth falls as the pool grows "
            f"(DDR BF16 14336×4096: {ddr_bf[4]:.0f}, {ddr_bf[16]:.0f}, {ddr_bf[64]:.0f} GB/s at 4×, 16×, 64× the on-chip capacity; HBM {hbm_bf[4]:.0f}, "
            f"{hbm_bf[16]:.0f}, {hbm_bf[64]:.0f}). Counted bandwidth agrees between 16× and 64× to {_pct(conv_gap, 1)} for both precisions and tiers, "
            f"so a pool of at least 16× is converged. At 64× DDR GEMM sits at {ddr_bf[64]:.0f} GB/s, below the {ddr_read.gbs:.0f} GB/s read ceiling: the "
            "DDR points that lay above their ceiling came from cache reuse in a small pool, not from a ceiling that was too low.",
        ),
        Claim(
            "first_sweep_small_m_bias",
            bool(small_bias.min() > 1.03),
            f"The first sweep overstates the weight traffic at small M: against the converged 64× pool its 14336×4096 rate at M=1 is "
            f"{b1[('hbm', 'bf16')] - 1:+.0%} (HBM BF16), {b1[('hbm', 'int8')] - 1:+.0%} (HBM INT8), {b1[('ddr', 'bf16')] - 1:+.0%} (DDR BF16) and "
            f"{b1[('ddr', 'int8')] - 1:+.0%} (DDR INT8), and {small_bias.min() - 1:+.0%} to {small_bias.max() - 1:+.0%} over M = 1 and 16. Its points at "
            f"M ≤ {report.SMALL_POOL_MAX_M} are therefore drawn hollow and left out of the ceiling audit; where the pool sweep measured a batch size "
            "(M = 1, 16, 256) the converged point is drawn instead.",
        ),
        Claim(
            "pool_insensitive_large_m",
            bool(pool_effect_256 < 0.05 and pool_effect_16 > pool_effect_256),
            f"At M=256 the pool size no longer matters: 4× and 64× pools give the same rate within {_pct(pool_effect_256, 1)} for both shapes, precisions "
            f"and tiers, against up to {_pct(pool_effect_16, 1)} at M=16; the first sweep at M=256 is {large_bias.min() - 1:+.1%} to {large_bias.max() - 1:+.1%} "
            "from the 64× pool, which the absent pool trend at M=256 attributes to the campaign, not the pool (inferred). M = 64 and 128 were not measured with a larger pool; "
            "they are kept as first-sweep points (filled), which the prepared part `gemmconv` would replace.",
        ),
        Claim(
            "gemm_asymmetry",
            len(prepacked) == 1 and len(plain) == 1 and prepacked[0] != plain[0] and float(pk_big.speedup.max()) > 1.05,
            f"BF16 and INT8 GEMM are **not like-for-like** as called from PyTorch: oneDNN's verbose log shows INT8 with prepacked weights "
            f"(`{prepacked[0] if len(prepacked) else '?'}`) and BF16 with plain weights (`{plain[0] if len(plain) else '?'}`), so the BF16 call "
            f"repacks the weights on every invocation. Prepacking them once makes BF16 {_pct(float(pk_big[pk_big.m <= 16].speedup.min()) - 1)}–"
            f"{_pct(float(pk_big[pk_big.m <= 16].speedup.max()) - 1)} faster at M ≤ 16 on 14336×4096 and {float(pk_small.loc['ddr'].speedup):.1f}× (DDR) to "
            f"{float(pk_small.loc['hbm'].speedup):.1f}× (HBM) faster at M=1 on 4096×4096 ({pk_small.loc['hbm'].plain_gbs:.0f} → "
            f"{pk_small.loc['hbm'].prepacked_gbs:.0f} GB/s on HBM).",
        ),
        Claim(
            "gemv_prepacked_bandwidth",
            bool(pk_hbm_m1.prepacked_gbs > pk_hbm_m1.plain_gbs),
            f"At M=1 on HBM with a 4× pool, prepacked BF16 reaches {pk_hbm_m1.prepacked_gbs:.0f} GB/s of modeled traffic on 14336×4096 against "
            f"{pk_hbm_m1.plain_gbs:.0f} for plain weights and {int8_4x:.0f} for INT8; with a pool of 64× INT8 reaches {int8_m1.loc['int8'].counted_gbs:.0f} GB/s counted "
            f"({_pct(float(int8_m1.loc['int8'].counted_gbs) / hbm_read.gbs)} of the {hbm_read.gbs:.0f} GB/s read ceiling) and plain BF16 "
            f"{int8_m1.loc['bf16'].counted_gbs:.0f} GB/s ({_pct(float(int8_m1.loc['bf16'].counted_gbs) / hbm_read.gbs)}). Once the weights are prepacked, "
            "BF16 and INT8 move bytes at similar rates and INT8 wins by moving half of them.",
        ),
        Claim(
            "gemm_call_floor",
            bool(float(floor["max"].max()) < 40 and float(floor["min"].min()) > 10),
            f"A GEMM call has a fixed cost of roughly {floor['min'].min():.0f}–{floor['max'].max():.0f} µs from Python (dispatch, oneDNN primitive lookup, "
            f"56-thread fork/join): a 256×256 and a 1024×1024 matrix whose weights stay in cache take {floor.loc['256x256', 'min']:.0f}–"
            f"{floor.loc['256x256', 'max']:.0f} and {floor.loc['1024x1024', 'min']:.0f}–{floor.loc['1024x1024', 'max']:.0f} µs at M=1. For a 14336×4096 BF16 "
            f"matrix at {hbm_read.gbs:.0f} GB/s a pass takes about {pass_us:.0f} µs, so the floor is {_pct(float(floor['min'].min()) / pass_us)}–"
            f"{_pct(float(floor['max'].max()) / pass_us)} of it there but dominates small matrices; decode-sized GEMM measures the library call as much "
            "as memory.",
        ),
        Claim(
            "gemm_bimodal_points",
            len(bimodal) <= 4,
            f"Within one process {len(bimodal)} of {len(spread)} Flat GEMM configurations of the first sweep have samples that differ by more than "
            f"1.5× ({names}). "
            + (
                "oneDNN's verbose log names the same implementation for INT8 4096×4096 at M=32, 64 and 128 "
                f"(`{i4.implementation.iloc[0]}`), so the variation is not a visible switch of implementation; its cause is unknown."
                if same_impl
                else "The verbose log shows different implementations for neighbouring M."
            ),
        ),
    ]


def counted(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    """Counted (DRAM line counts) against modeled traffic."""

    sub = ext[ext.notes.isin(["counted", "counted_sweep", "counted_gemm"])]
    t = report.counted_table(sub)
    streams = t[t.benchmark.isin(["stream_read", "stream_triad", "stream_triad_nt", "roofline_sweep"])]
    triad = t[t.benchmark.eq("stream_triad")]
    sweep = t[t.benchmark.eq("roofline_sweep")]
    g = t[t.benchmark.eq("onednn_gemm_sweep")].copy()
    g["pool_gib"] = g.working_set_bytes / 2**30
    flat_small = g[g.memory_mode.eq("flat") & g.m.le(16)]
    cache_small = g[g.memory_mode.eq("cache") & g.m.le(16)]
    m256 = g[g.m.eq(256)]
    bf256 = m256[m256["dtype"].eq("bf16")]
    i256 = m256[m256["dtype"].eq("int8")]
    rw = {t: report.memory_ceiling(ext, thesis, "flat", t, access="readwrite").gbs for t in ("hbm", "ddr")}
    sw = sub[sub.benchmark.eq("roofline_sweep") & sub.memory_mode.eq("flat") & sub.k.eq(1)].copy()
    sw["counted_gbs"] = sw.counted_bytes / sw.elapsed_seconds / 1e9
    swg = sw.groupby("memory_target").agg(counted=("counted_gbs", "median"), modeled=("bandwidth_gbs", "median"))
    try:
        cp = {t: report.memory_ceiling(ext, thesis, "flat", t, access="copy") for t in ("hbm", "ddr")}
        within = all(float(swg.loc[t].counted) <= cp[t].gbs * 1.02 for t in ("hbm", "ddr"))
        copy_note = (
            f"The copy kernel, which has the sweep's one-load-one-store pattern, sustains {cp['hbm'].gbs:.0f} GB/s on HBM ({cp['hbm'].kernel}) and "
            f"{cp['ddr'].gbs:.0f} GB/s on DDR ({cp['ddr'].kernel}); the sweep's counted {swg.loc['hbm'].counted:.0f} and {swg.loc['ddr'].counted:.0f} GB/s are "
            f"{_pct(float(swg.loc['hbm'].counted) / cp['hbm'].gbs)} and {_pct(float(swg.loc['ddr'].counted) / cp['ddr'].gbs)} of it, so measured against its own "
            "pattern the sweep no longer exceeds its ceiling, and the sweep is audited against the copy ceiling."
        )
    except LookupError:
        within = True
        copy_note = "The ceiling kernels do not cover that pattern; a copy kernel (campaign part `copy`) would, and has not been run yet."
    return [
        Claim(
            "counted_streams",
            bool(streams.counted_over_modeled.between(0.97, 1.02).all() and triad.read_share.between(0.64, 0.69).all() and sweep.read_share.between(0.47, 0.52).all()),
            f"The traffic model of the streams and of the intensity sweep describes what the cores moved: counted over modeled bytes is "
            f"{streams.counted_over_modeled.min():.3f}–{streams.counted_over_modeled.max():.3f} on every tier (Flat DDR, Flat HBM and Cache at 8 and 96 GiB). "
            f"Triad's counted read share is {triad.read_share.min():.3f}–{triad.read_share.max():.3f} (two of three arrays) and the sweep's "
            f"{sweep.read_share.min():.3f}–{sweep.read_share.max():.3f} (one of two), so neither pays a read-for-ownership at 56 cores, as the single-thread "
            "probe and the 313 GB/s bound already indicated.",
        ),
        Claim(
            "counted_gemm_weights",
            bool(flat_small.counted_over_modeled.between(0.85, 0.95).all() and cache_small.counted_over_modeled.between(0.97, 1.02).all()),
            f"The weights of the first GEMM sweep were partly served on chip: with a pool of about 1 GB (Flat) the cores read "
            f"{_pct(float(flat_small.counted_over_modeled.min()))}–{_pct(float(flat_small.counted_over_modeled.max()))} of the modeled bytes at M ≤ 16, "
            f"against {_pct(float(cache_small.counted_over_modeled.min()))}–{_pct(float(cache_small.counted_over_modeled.max()))} with a 16 GiB pool in Cache mode. "
            "Modeled bandwidth therefore overstated the Flat GEMM traffic by about 10% at small M.",
        ),
        Claim(
            "sweep_exceeds_triad_ceiling",
            bool(swg.loc["hbm"].counted > rw["hbm"] * 1.02 and swg.loc["ddr"].counted < rw["ddr"] * 1.02 and within),
            f"The one point where a measured stream stays above its ceiling is not a modeling error: the FP64 sweep at K=1 (one load and one store per element) "
            f"moves {swg.loc['hbm'].counted:.0f} GB/s counted on HBM ({swg.loc['hbm'].modeled:.0f} modeled) against {rw['hbm']:.0f} GB/s for Triad, the best "
            f"read/write kernel, so a one-load-one-store pattern sustains {_pct(float(swg.loc['hbm'].counted) / rw['hbm'] - 1, 1)} more than Triad on HBM. "
            f"On DDR the sweep ({swg.loc['ddr'].counted:.0f} GB/s counted) stays below its {rw['ddr']:.0f} GB/s ceiling. {copy_note}",
        ),
        Claim(
            "counted_gemm_prefill",
            bool(bf256.counted_over_modeled.min() > 1.2 and i256.counted_over_modeled.max() < 0.9),
            f"At M=256 the weights-only model misses traffic that BF16 moves and INT8 does not: BF16 counts "
            f"{bf256.counted_over_modeled.min():.2f}–{bf256.counted_over_modeled.max():.2f}× the modeled bytes (counted read share "
            f"{bf256.read_share.min():.2f}–{bf256.read_share.max():.2f}: activations, outputs and repacking), INT8 {i256.counted_over_modeled.min():.2f}–"
            f"{i256.counted_over_modeled.max():.2f}×. On a roofline the BF16 prefill points move left, from {bf256.intensity_modeled.min():.0f} to "
            f"{bf256.intensity_counted.min():.0f} operations per byte, when counted bytes are used.",
        ),
    ]


def repeatability(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    cv = report.sample_cv(ext)
    q = cv.cv_percent.quantile([0.5, 0.9, 0.99])
    over = cv[cv.cv_percent > 5]
    worst = cv.loc[cv.cv_percent.idxmax()]
    fw = report.first_window_effect(ext)
    g = fw[fw.family.eq("gemm") & fw.memory_mode.eq("cache") & fw.notes.eq("gemm_sweep")].assign(pool=lambda f: (f.working_set_bytes / 2**30).round())
    spilled, resident = g[g.pool.gt(64)], g[g.pool.le(64)]
    flat = fw[fw.memory_mode.eq("flat") & fw.notes.eq("gemm_sweep")]
    bwf = fw[fw.family.eq("bandwidth") & fw.memory_mode.eq("flat") & fw.locality.eq("local") & fw.working_set_bytes.ge(2**30)]
    at56 = bwf[bwf.threads.eq(56)].groupby("memory_target").ratio
    hbm_by_threads = bwf[bwf.memory_target.eq("hbm")].groupby("threads").ratio.median()
    hbm56 = bwf[bwf.threads.eq(56) & bwf.memory_target.eq("hbm")]
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
        Claim(
            "hbm_first_window",
            bool(at56.median()["hbm"] > 1.03 and abs(at56.median()["ddr"] - 1) < 0.01 and hbm_by_threads.loc[14] < 1.01),
            f"On Flat HBM the first one-second window of a 56-core stream is faster than the rest: {_pct(float(at56.median()['hbm']) - 1, 1)} in the "
            f"median over {int(at56.size()['hbm'])} configurations (up to {_pct(float(at56.max()['hbm']) - 1)}), against "
            f"{_pct(float(at56.median()['ddr']) - 1, 1)} on DDR. It appears only with many cores ({_pct(float(hbm_by_threads.loc[14]) - 1, 1)} at 14 "
            f"threads, {_pct(float(hbm_by_threads.loc[28]) - 1, 1)} at 28), the regime in which the clock falls while HBM streams, so a power or "
            "frequency transient after an idle gap is the plausible cause (inferred; neither is counted). The five-window median moves by at most "
            f"{_pct(float(hbm56.median_shift.abs().max()), 1)}; Table 1 also lists the sustained median without the first window, and the "
            "min–max range of HBM rows is mostly this transient.",
        ),
    ]


def headline_uncertainty(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> list[Claim]:
    t1 = report.headline_table(ext, thesis, theory)
    worst = t1.loc[t1.total.idxmax()]
    best = t1.loc[t1.total.idxmin()]
    return [
        Claim(
            "headline_uncertainty",
            bool(t1.total.notna().all() and t1.basis.ne("").all() and (t1.total >= t1.spread + t1.between.fillna(0) - 1e-9).all()),
            f"Every headline ceiling carries an uncertainty: the sample spread plus the largest of the three-launch range, the between-campaign range "
            f"and the cross-check deviation is {best.total:.1f}% for {best.quantity} and up to {worst.total:.1f}% for {worst.quantity}. Where a quantity was "
            "not repeated in the cross-check, the deviation of its family is used and labelled as such.",
        )
    ]


def all_claims(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, root: Path = ROOT) -> dict[str, list[Claim]]:
    return {
        "compute": compute_paths(ext, theory),
        "kernels": kernels(ext, thesis, theory),
        "counters": counters(root),
        "core_scaling": core_scaling(ext, thesis, root),
        "cache_mode": cache_mode(ext, thesis),
        "hierarchy": hierarchy(ext, theory, root),
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
        "decode": decode_bound(ext, thesis, theory),
        "platform": platform_caveats(ext, root),
        "gemm": gemm(ext, thesis, theory, root),
        "counted": counted(ext, thesis),
    }
