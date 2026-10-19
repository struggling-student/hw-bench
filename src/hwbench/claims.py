"""Statements the notebooks make about the data, computed and checked in one place.

A ``Claim`` pairs a sentence whose numbers come from the measurements with a boolean
saying whether the *direction* of the statement is true (``holds``).  Notebooks render
claims with ``say_claims``; building a notebook, or running the test suite, fails when a
claim no longer holds, so prose cannot drift away from the data again.

Claims that describe a mechanism say so explicitly ("inferred", "not measured").  Since
2026-10-19 the Flat node allows a privileged system-wide ``perf stat``; ``uncore_counters``
holds the claims that its controller, UPI, power and clock counters measure (notebook 06).
Cache mode stays without them.
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


def _span(values: pd.Series, digits: int = 2) -> str:
    """``low–high`` at the given precision, or one value when both round the same."""

    low, high = f"{float(values.min()):.{digits}f}", f"{float(values.max()):.{digits}f}"
    return low if low == high else f"{low}–{high}"


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
            "The package counters of notebook 06 show these peaks below the 350 W limit and never clipped for power (claim `energy_per_op`), so the "
            "lower AMX clock is not a power limit; it is the frequency the processor runs AMX code at (inferred).",
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
            f"to {clock.loc[56, 'flat_ddr']:.2f} GHz at 56 cores. The cause is the package power limit: at 56 cores the package draws its 350 W PL1 and the frequency is clipped for power "
            "in nearly every cycle (counters of notebook 06, claim `clock_drop_power`). "
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
    # Every measured working set, the fill-in sizes (24, 40, 56 GiB) included.
    sizes = [8.0, 16.0, 24.0, 32.0, 40.0, 48.0, 56.0, 64.0, 96.0, 128.0]
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
    assert all(not math.isnan(series[g]) for series in (triad, read, nt) for g in sizes), "a Cache working set is missing"
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
            f"Cache-mode Triad declines at every step from 8 GiB onward ({', '.join(f'{triad[g]:.0f}' for g in sizes if g <= 64)} GB/s at "
            f"{', '.join(f'{g:.0f}' for g in sizes if g <= 64)} GiB). Against Flat HBM Triad ({hbm['triad']:.0f} GB/s) "
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
            "ceiling of a GEMM uses it, as the fastest kernel measured there (read-only does not bound a spilled GEMM, claim `cache_spilled_gemm`).",
        ),
    ]


def latency(ext: pd.DataFrame, theory: Theory, root: Path = ROOT) -> list[Claim]:
    h = report.hierarchy(ext)
    lv, lat = report.level_summary(h)
    mem = lat[lat.level.eq("memory")].set_index("config").latency_ns
    far = report.cache_latency_far(ext).set_index("working_set_gib").latency_ns
    hmat = hmat_latency_ns(root)
    chase = h[h.notes.eq("hier_latency")].set_index(["config", "per_thread_bytes"]).latency_ns
    ddr_tail = {g: float(chase.loc[("flat_ddr", g * 2**30)]) for g in (1, 2, 4)}
    hbm_tail = {g: float(chase.loc[("flat_hbm", g * 2**30)]) for g in (1, 2, 4)}
    flat_far = report.flat_latency_far(ext)
    flat_ddr = flat_far[flat_far.config.eq("flat_ddr")].set_index("working_set_gib").latency_ns
    flat_hbm = flat_far[flat_far.config.eq("flat_hbm")].set_index("working_set_gib").latency_ns
    extra = far - flat_ddr.reindex(far.index)
    loaded = report.loaded_latency(ext)
    ld_hbm = loaded[loaded.config.eq("flat_hbm")].sort_values("stream_cores").iloc[-1]
    ld_ddr = loaded[loaded.config.eq("flat_ddr")].sort_values("stream_cores").iloc[-1]
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
            bool(far.is_monotonic_increasing and far.loc[128] > 1.4 * mem["flat_ddr"] and extra.loc[128] > extra.loc[16] > 0),
            "Cache-mode idle latency, measured from inside the HBM cache to far beyond it, rises with the working set: "
            + ", ".join(f"{far.loc[g]:.0f}" for g in (16, 32, 64, 96, 128))
            + f" ns at 16, 32, 64, 96 and 128 GiB, against {mem['cache']:.0f} ns at 4 GiB. There is no step at the 64 GiB capacity: the smooth rise is "
            "what a growing miss fraction gives (conflict misses in a direct-mapped cache, inferred; the tag counters are not readable). The same chase "
            f"on Flat DDR (part `flatfar`) takes {flat_ddr.loc[16]:.0f} to {flat_ddr.loc[128]:.0f} ns over the same sizes, so what Cache mode adds at "
            f"equal size is {extra.loc[16]:.0f} ns at 16 GiB and {extra.loc[128]:.0f} ns at 128 GiB ({far.loc[128] / flat_ddr.loc[128]:.1f}× Flat DDR). "
            "That difference is the cost of the memory-side cache on a one-core chase, translation included on both sides; its split between hits "
            "of the HBM cache and misses is not measured.",
        ),
        Claim(
            "loaded_latency",
            bool(
                loaded.groupby("config").loaded_ns.apply(lambda x: x.is_monotonic_increasing).all()
                and ld_ddr.latency_ratio > ld_hbm.latency_ratio > 1.3
                and loaded.stream_over_control.between(0.95, 1.05).all()
            ),
            f"Latency under load (a one-core chase beside N cores streaming the same tier, one shared window): on HBM a load takes {ld_hbm.idle_ns:.0f} ns idle and "
            f"{ld_hbm.loaded_ns:.0f} ns beside {int(ld_hbm.stream_cores)} streaming cores that together read {ld_hbm.stream_gbs:.0f} GB/s ({ld_hbm.latency_ratio:.1f}×); on DDR "
            f"{ld_ddr.idle_ns:.0f} ns idle and {ld_ddr.loaded_ns:.0f} ns beside {int(ld_ddr.stream_cores)} cores at {ld_ddr.stream_gbs:.0f} GB/s ({ld_ddr.latency_ratio:.1f}×): "
            f"the streams add {ld_hbm.loaded_ns - ld_hbm.idle_ns:.0f} ns to a HBM load and {ld_ddr.loaded_ns - ld_ddr.idle_ns:.0f} ns to a DDR load. The chase takes nothing measurable "
            f"from the streams (their rate stays within {_pct(float((loaded.stream_over_control - 1).abs().max()))} of the same cores alone).",
        ),
        Claim(
            "latency_translation",
            bool(ddr_tail[4] > ddr_tail[2] > ddr_tail[1] and hbm_tail[4] > hbm_tail[1] and flat_ddr.loc[128] - ddr_tail[1] < 0.2 * ddr_tail[1]
                 and (far.loc[128] - far.loc[16]) > 3 * (flat_ddr.loc[128] - flat_ddr.loc[16])),
            f"Address translation does not explain the rise of Cache-mode latency. On Flat DDR the chase costs {ddr_tail[1]:.0f}, {ddr_tail[2]:.0f} and "
            f"{ddr_tail[4]:.0f} ns at 1, 2 and 4 GiB and then {flat_ddr.loc[16]:.0f}, {flat_ddr.loc[32]:.0f}, {flat_ddr.loc[64]:.0f}, {flat_ddr.loc[96]:.0f} and "
            f"{flat_ddr.loc[128]:.0f} ns at 16 to 128 GiB: it keeps creeping up, as second-level TLB misses with 2 MiB pages would give (inferred, no TLB "
            f"counter was read), but by {flat_ddr.loc[128] - flat_ddr.loc[16]:.0f} ns from 16 to 128 GiB, against {far.loc[128] - far.loc[16]:.0f} ns in Cache mode. "
            f"Flat HBM goes from {hbm_tail[1]:.0f} ns at 1 GiB to {flat_hbm.loc[16]:.0f}, {flat_hbm.loc[32]:.0f} and {flat_hbm.loc[48]:.0f} ns at 16, 32 and 48 GiB. "
            "The rise of the far latency in Cache mode is therefore the memory-side cache, not the page tables.",
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
    first_lr = report.locality_ratio(ext, thesis)
    first_lr = first_lr[first_lr.socket.eq(0)].set_index(["config", "kernel"])
    ddr_r, hbm_r = lr.loc[("flat_ddr", "read")], first_lr.loc[("flat_hbm", "read")]
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
            bool(h0.gbs_remote < d0.gbs_remote and h0.remote_over_local < 0.15 and h1.remote_over_local < 0.15
                 and math.isclose(lr.loc[("flat_hbm", "read")].remote, h0.gbs_remote)),
            f"Remote HBM keeps {_pct(float(h0.remote_over_local), 1)} of local read bandwidth for socket 0 ({h0.gbs_remote:.1f} GB/s against "
            f"{h0.gbs_local:.0f} GB/s) and {_pct(float(h1.remote_over_local), 1)} for socket 1 ({h1.gbs_remote:.1f} GB/s) with 56 threads, and "
            f"{_pct(float(n0.remote_over_local))} for non-temporal Triad ({n0.gbs_remote:.0f} GB/s), against {d0.gbs_remote:.0f} GB/s for remote DDR. "
            f"This repeat (separate campaign, 5 s windows, CV {at56[at56.kernel.eq('read') & at56.memory_target.eq('hbm')].cv_remote.min():.1f}–"
            f"{at56[at56.kernel.eq('read') & at56.memory_target.eq('hbm')].cv_remote.max():.1f}%) confirms the first campaign's "
            f"{hbm_r.remote:.0f} GB/s ({_pct(hbm_r.remote_over_local)}, CV {first_cv.min():.0f}–{first_cv.max():.0f}%) and gives the figure to quote. Link bandwidth alone does not explain it; "
            "the uncore counters of notebook 06 show the mechanism: at 56 threads every remote HBM line is read about twice from memory and crosses UPI "
            "about twice (claim `remote_duplicate_reads`).",
        ),
        Claim(
            "remote_hbm_thread_profile",
            bool(prof.max() > 2 * prof.loc[56] and dprof.loc[56] > 0.95 * dprof.loc[28]),
            f"Remote HBM does not hit a flat ceiling: its read bandwidth rises to {prof.max():.0f} GB/s at {peak_t} threads, is still {prof.loc[28]:.0f} GB/s "
            f"at 28 and then falls to {prof.loc[56]:.1f} GB/s at 56, while remote DDR plateaus at {dprof.loc[28]:.0f} GB/s from 28 threads on. "
            "More concurrent requesters make remote HBM slower. The counters of notebook 06 rule out directory traffic and a saturated link and show "
            "duplicated reads instead: at 56 threads the HBM controllers read about twice the delivered bytes (claim `remote_duplicate_reads`).",
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
    pk_converged = bool(pk.pool.eq("16× on-chip").all())
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
            f"slower, so the whole model would be slower still. "
            + (
                f"With the weights prepacked once (converged 16× pool), BF16 streams {pk.loc['Flat HBM'].gbs:.0f} GB/s on HBM "
                f"({_pct(pk.loc['Flat HBM'].of_read_ceiling)} of the read ceiling, {pk.loc['Flat HBM'].tokens_per_s:.0f} tokens/s) and "
                f"{pk.loc['Flat DDR'].gbs:.0f} GB/s on DDR ({_pct(pk.loc['Flat DDR'].of_read_ceiling)})."
                if pk_converged
                else f"Prepacked BF16 was measured only with a 4× pool: {pk.loc['Flat HBM'].gbs:.0f} GB/s modeled and "
                f"{pk.loc['Flat HBM'].counted_gbs:.0f} counted on HBM; for plain BF16 the converged value ({plain64:.0f}) lies between the 4× counted "
                f"({plain4.loc['hbm'].counted_gbs:.0f}) and modeled ({plain4.loc['hbm'].modeled_gbs:.0f}) values, so the converged prepacked value presumably "
                f"lies between {pk.loc['Flat HBM'].counted_gbs:.0f} and {pk.loc['Flat HBM'].gbs:.0f} GB/s (an extrapolation; the prepared part `gemmconv` measures it)."
            ),
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
            "(the package power limit measured for the streams in notebook 06), not a kernel limit.",
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
    has_conv = not report.converged_sweep(ext).empty
    m256 = pool[pool.m.eq(256)].pivot_table(index=["memory_target", "dtype", "shape"], columns="pool_x", values="gops")
    pool_effect_256 = float(((m256[4] - m256[64]).abs() / m256[64]).max())
    m16 = pool[pool.m.eq(16)].pivot_table(index=["memory_target", "dtype", "shape"], columns="pool_x", values="gops")
    pool_effect_16 = float(((m16[4] - m16[64]).abs() / m16[64]).max())
    b1 = {k: float(bias.loc[(*k, 1.0)]) for k in [("hbm", "bf16"), ("hbm", "int8"), ("ddr", "bf16"), ("ddr", "int8")]}
    # How much of the converged GEMV's gap to the read ceiling the fixed call cost explains.
    weight_b = 14336 * 4096 * 2
    gemv = {t: float(conv64.loc[(t, "bf16", 1.0)]) for t in ("hbm", "ddr")}
    call_us = {t: weight_b / (gemv[t] * 1e9) * 1e6 for t in gemv}
    ceil = {"hbm": hbm_read.gbs, "ddr": ddr_read.gbs}
    no_floor = {t: weight_b / ((call_us[t] - float(floor["max"].max())) * 1e-6) / 1e9 for t in gemv}
    frac_gemv = {t: gemv[t] / ceil[t] for t in gemv}
    frac_no_floor = {t: no_floor[t] / ceil[t] for t in gemv}
    int8_4x = float(pool[pool["shape"].eq("14336x4096") & pool.m.eq(1) & pool.pool_x.eq(4) & pool.memory_target.eq("hbm") & pool["dtype"].eq("int8")].modeled_gbs.iloc[0])
    out = [
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
            + (
                f"M ≤ {report.SMALL_POOL_MAX_M} are therefore replaced by the converged sweep (part `gemmconv`, a 16× pool, M = 1 to 256) in the "
                "headline roofline, the GEMM-efficiency figure and the decode table."
                if has_conv
                else f"M ≤ {report.SMALL_POOL_MAX_M} are therefore drawn hollow and left out of the ceiling audit; where the pool sweep measured a "
                "batch size (M = 1, 16, 256) the converged point is drawn instead."
            ),
        ),
        Claim(
            "pool_insensitive_large_m",
            bool(pool_effect_256 < 0.05 and pool_effect_16 > pool_effect_256),
            f"At M=256 the pool size no longer matters: 4× and 64× pools give the same rate within {_pct(pool_effect_256, 1)} for both shapes, precisions "
            f"and tiers, against up to {_pct(pool_effect_16, 1)} at M=16; the first sweep at M=256 is {large_bias.min() - 1:+.1%} to {large_bias.max() - 1:+.1%} "
            "from the 64× pool, which the absent pool trend at M=256 attributes to the campaign, not the pool (inferred). "
            + (
                "Above M = 256 the headline keeps the first sweep's points, which this makes safe to use."
                if has_conv
                else "M = 64 and 128 were not measured with a larger pool; they are kept as first-sweep points (filled), which the prepared part "
                "`gemmconv` would replace."
            ),
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
            bool(float(floor["max"].max()) < 40 and float(floor["min"].min()) > 10 and frac_no_floor["hbm"] < 0.8
                 and frac_no_floor["hbm"] - frac_gemv["hbm"] < 0.5 * (1 - frac_gemv["hbm"])),
            f"A GEMM call has a fixed cost of roughly {floor['min'].min():.0f}–{floor['max'].max():.0f} µs from Python (dispatch, oneDNN primitive lookup, "
            f"56-thread fork/join): a 256×256 and a 1024×1024 matrix whose weights stay in cache take {floor.loc['256x256', 'min']:.0f}–"
            f"{floor.loc['256x256', 'max']:.0f} and {floor.loc['1024x1024', 'min']:.0f}–{floor.loc['1024x1024', 'max']:.0f} µs at M=1, so the floor dominates "
            f"small matrices. For the large projection it does not: a converged plain-BF16 14336×4096 call at M=1 takes {call_us['hbm']:.0f} µs on HBM "
            f"({gemv['hbm']:.0f} GB/s, {_pct(frac_gemv['hbm'])} of the {hbm_read.gbs:.0f} GB/s read ceiling; at the ceiling it would take {pass_us:.0f} µs). "
            f"Without the largest floor it would stream {no_floor['hbm']:.0f} GB/s, {_pct(frac_no_floor['hbm'])} of the ceiling, so the call cost explains "
            f"{100 * (frac_no_floor['hbm'] - frac_gemv['hbm']):.0f} of the {100 * (1 - frac_gemv['hbm']):.0f} percentage points between the GEMV and the read kernel. "
            f"The rest is spent inside the library's GEMV (cause not measured). On DDR the same call reaches {_pct(frac_gemv['ddr'])} of its ceiling "
            f"({_pct(frac_no_floor['ddr'])} without the floor), so the shortfall is specific to HBM.",
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
    return out + converged_sweep(ext, pool, hbm_read, ddr_read, small_bias)


def converged_sweep(ext: pd.DataFrame, pool: pd.DataFrame, hbm_read, ddr_read, first_bias: pd.Series) -> list[Claim]:
    """The converged M-sweep (part ``gemmconv``) against its acceptance criteria (review R1).

    Convergence is judged in counted bytes, the basis of claim ``gemm_pool_convergence``: what the
    cores' DRAM counters saw against the 64x pool.  A 16x pool still serves a few percent of the
    weight bytes on chip; that share is reported, and bounded, rather than required to vanish.
    """

    cs = report.converged_sweep(ext)
    if cs.empty:
        return []
    read = {"hbm": hbm_read.gbs, "ddr": ddr_read.gbs}
    small = cs[cs.m.le(16)]
    onchip = 1 - small.counted_gbs / small.gbs
    p64 = pool[pool["shape"].eq("14336x4096") & pool.pool_x.eq(64) & pool.m.isin([1, 16])].set_index(["memory_target", "dtype", "m"])
    plain = cs[cs.layout.eq("plain") | cs["dtype"].eq("int8")].set_index(["memory_target", "dtype", "m"])
    dev_counted = (plain.counted_gbs.reindex(p64.index) / p64.counted_gbs - 1).dropna()
    dev_modeled = (plain.gbs.reindex(p64.index) / p64.modeled_gbs - 1).dropna()
    onchip64 = 1 - p64.counted_gbs / p64.modeled_gbs
    of_read = cs.gbs / cs.memory_target.map(read)
    excess = of_read > 1 + cs.cv_percent.fillna(0) / 100
    m1 = cs[cs.m.eq(1)].set_index(["memory_target", "dtype", "layout"]).gbs
    bf = cs[cs["dtype"].eq("bf16")].pivot_table(index=["memory_target", "m"], columns="layout", values="gops")
    speed = (bf["prepacked"] / bf["plain"]).dropna()
    return [
        Claim(
            "gemm_converged_sweep",
            bool(dev_counted.abs().max() < 0.03 and onchip.between(0, 0.05).all() and not excess.any()),
            f"The converged sweep (part `gemmconv`: 14336×4096, M = 1 to 256, a pool of 16× the on-chip capacity, {len(cs)} configurations) "
            f"agrees with the 64× pool in counted bytes within {_pct(float(dev_counted.abs().max()), 1)} at M = 1 and 16, and no point streams above "
            f"the read ceiling of its tier (highest {_pct(float(of_read.max()))}). The 16× pool is not fully converged: at M ≤ 16 the cores' DRAM "
            f"counters see {_pct(float(1 - onchip.max()), 1)}–{_pct(float(1 - onchip.min()), 1)} of the modeled bytes, so {_pct(float(onchip.min()), 1)}–"
            f"{_pct(float(onchip.max()), 1)} of the weights are still served on chip (64× pool: {_pct(float(max(onchip64.min(), 0)), 1)}–"
            f"{_pct(float(onchip64.max()), 1)}). Its modeled rates at small M are therefore that much high (against the 64× pool, modeled differs by "
            f"{_pct(float(dev_modeled.min()), 1)} to {_pct(float(dev_modeled.max()), 1)}), as are its modeled intensities; the bias the first sweep "
            f"carried at M = 1 and 16 was {_pct(float(first_bias.min()) - 1)}–{_pct(float(first_bias.max()) - 1)}. At M = 1 on HBM plain BF16 streams {m1[('hbm', 'bf16', 'plain')]:.0f} GB/s, prepacked BF16 "
            f"{m1[('hbm', 'bf16', 'prepacked')]:.0f} and INT8 {m1[('hbm', 'int8', 'prepacked')]:.0f} (DDR {m1[('ddr', 'bf16', 'plain')]:.0f}, "
            f"{m1[('ddr', 'bf16', 'prepacked')]:.0f}, {m1[('ddr', 'int8', 'prepacked')]:.0f}), modeled. Prepacking the BF16 weights is "
            f"{speed.min():.2f}–{speed.max():.2f}× the plain rate over M = 1 to 256.",
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
            f"threads, {_pct(float(hbm_by_threads.loc[28]) - 1, 1)} at 28), the regime in which the clock falls while HBM streams. The counters of notebook 06 measure the cause: after the idle setup the package "
            "may run above its 350 W limit for about a second, and in that window the uncore clock, and HBM bandwidth with it, is higher (claim "
            "`first_window_uncore`). The five-window median moves by at most "
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


def literature(ext: pd.DataFrame, thesis: pd.DataFrame) -> list[Claim]:
    """The study against published Xeon Max 9480 results (M3): where it agrees and where it does not."""

    lt = report.literature_table(ext, thesis).set_index("quantity")
    src = report.literature_sources().set_index("key")
    r = lt.ratio
    hbm_read, hbm_triad = lt.loc["HBM read-only, 1 socket"], lt.loc["HBM STREAM Triad, 1 socket"]
    ddr_read, ddr_triad = lt.loc["DDR read-only, 1 socket"], lt.loc["DDR STREAM Triad, 1 socket"]
    rx_triad, rx_read = lt.loc["HBM over DDR, STREAM Triad"], lt.loc["HBM over DDR, read-only"]
    two = lt.loc["HBM Triad, 2 sockets"]
    return [
        Claim(
            "literature_agreement",
            bool(
                src.loc["mccalpin2023", "same_mode"]
                and abs(r["HBM read-only, 1 socket"] - 1) < 0.05
                and r["DDR read-only, 1 socket"] > 1
                and r["DDR STREAM Triad, 1 socket"] > 1
                and r["HBM STREAM Triad, 1 socket"] < 0.9
            ),
            f"Against the closest published single-socket result for this CPU, in the same setting (Flat mode, one NUMA node per tier and socket as in quadrant clustering; McCalpin 2023): HBM read-only agrees "
            f"({hbm_read.measured:.0f} GB/s here, {hbm_read.published:.0f} published, {_pct(r['HBM read-only, 1 socket'] - 1, 1)}); DDR is higher here "
            f"(read-only {ddr_read.measured:.0f} against {ddr_read.published:.0f} GB/s, Triad {ddr_triad.measured:.0f} against {ddr_triad.published:.0f}); "
            f"HBM Triad is lower ({hbm_triad.measured:.0f} against {hbm_triad.published:.0f} GB/s, {_pct(1 - r['HBM STREAM Triad, 1 socket'])} below, "
            f"and the non-temporal kernel does not close the gap). The tier ratios follow: HBM over DDR is {rx_read.measured:.2f}× read-only against "
            f"{rx_read.published:.1f}× published and {rx_triad.measured:.2f}× Triad against {rx_triad.published:.1f}×. The Triad difference is the kernel and "
            "its measurement, not the node: the unmodified STREAM `stream.c`, run on the same node (Triad-gap investigation, docs/STREAMGAP.md, data/raw/streamgap), "
            "reaches 678 to 711 GB/s, and the thesis kernel loses to its data pattern (constants are 13% faster), its loop (4 cache lines per iteration are 6% faster) "
            "and its median of one-second windows against the best of many short iterations (9%). The same data effect lowers the read-only ceiling: "
            "527 GB/s with the thesis pattern or random data, 576 with constants. The publication does not state compiler flags or clock. Why the data pattern "
            "matters is measured in notebook 06: the package sits at its power limit either way, and random data leaves less power for the uncore clock, "
            "which HBM bandwidth follows (claim `data_pattern_power`).",
        ),
        Claim(
            "literature_loaded",
            bool(abs(r["HBM load latency, all cores streaming"] - 1) < 0.1 and abs(r["HBM outstanding line reads per core, all cores"] - 1) < 0.1),
            f"The loaded latency agrees with the counter-measured one of the same CPU: McCalpin reports {lt.loc['HBM load latency, all cores streaming'].published:.0f} ns "
            f"average queue occupancy and {lt.loc['HBM outstanding line reads per core, all cores'].published:.1f} outstanding line reads per core with all cores streaming HBM; "
            f"the chase beside 55 streaming cores takes {lt.loc['HBM load latency, all cores streaming'].measured:.0f} ns, and Little's law on this study's rate and latency "
            f"gives {lt.loc['HBM outstanding line reads per core, all cores'].measured:.1f} lines per core (the rate in that product is confirmed at the memory controllers to 1% in notebook 06, claim `loaded_concurrency_counted`). With one streaming core the values are "
            f"{lt.loc['HBM load latency, 1 core streaming'].measured:.0f} ns and {lt.loc['HBM outstanding line reads per core, 1 core'].measured:.1f} lines against "
            f"{lt.loc['HBM load latency, 1 core streaming'].published:.0f} ns and {lt.loc['HBM outstanding line reads per core, 1 core'].published:.1f}. "
            "The published reading (McCalpin 2023) is that the concurrency a core sustains falls and the latency rises as cores are added, which is why HBM stays far below its peak; the numbers here are consistent with it, not a test of it.",
        ),
        Claim(
            "literature_two_socket",
            bool(not src.loc["reguly2023", "same_mode"] and two.ratio < 1),
            f"The published two-socket HBM Triad ({two.published:.0f} GB/s with standard flags, {lt.loc['HBM Triad with streaming stores, 2 sockets'].published:.0f} "
            f"with streaming stores; Reguly 2023) is for HBM-only mode with SNC4 clustering and hyperthreading on, which this study did not run, so it shows "
            f"what a different configuration can reach, not a like-for-like comparison: Flat mode here reaches {two.measured:.0f} GB/s ({_pct(two.ratio)} of the first).",
        ),
    ]


def uncore_remote(unc: pd.DataFrame) -> list[Claim]:
    """What crosses UPI and reaches the controllers for remote memory (review item U2)."""

    rc = report.remote_counter_table(unc).set_index(["memory_target", "kernel", "threads", "placement"])
    remote = rc.xs("remote", level="placement")
    hbm56 = remote.loc[("hbm", "read", 56)]
    clean = remote.drop(index=("hbm", "read", 56))
    ddr = remote.xs(("ddr", "read"), level=("memory_target", "kernel"))
    hbm_low = remote.xs(("hbm", "read"), level=("memory_target", "kernel")).drop(index=56)
    ddr_flits = remote.loc[("ddr", "read")].upi_flits_per_line
    peak_flits_ddr = float((ddr.gbs * 1e9 / 64 * ddr.upi_flits_per_line).max())
    hbm56_flits = float(hbm56.gbs * 1e9 / 64 * hbm56.upi_flits_per_line)
    return [
        Claim(
            "upi_flits_per_line",
            bool(clean.upi_flits_per_line.between(8.8, 9.3).all() and rc.xs("local", level="placement").upi_flits_per_line.max() < 0.01),
            f"A remote 64-byte line costs {clean.upi_flits_per_line.min():.2f}–{clean.upi_flits_per_line.max():.2f} UPI data flits wherever reads are not "
            f"duplicated (remote DDR at 14–56 threads, remote HBM at 14 and 28, remote non-temporal Triad), and local runs send none. Remote DDR plateaus at "
            f"{ddr.gbs.min():.0f}–{ddr.gbs.max():.0f} GB/s, that is {peak_flits_ddr / 1e9:.1f} × 10⁹ data flits per second over the links, the most UPI carried in "
            "any of these runs.",
        ),
        Claim(
            "remote_duplicate_reads",
            bool(hbm56.ctrl_over_modeled > 1.5 and hbm56.upi_flits_per_line > 1.5 * ddr_flits.median() and clean.ctrl_over_modeled.between(0.98, 1.03).all()
                 and rc.dir_updates_per_line.max() < 0.01 and rc[rc.index.get_level_values("kernel") == "read"].ctrl_write_per_read.max() < 0.01
                 and hbm56_flits < peak_flits_ddr),
            f"Remote HBM collapses at 56 threads because its lines are fetched about twice: the kernel receives {hbm56.gbs:.0f} GB/s, the HBM controllers "
            f"of socket 1 read {hbm56.ctrl_over_modeled:.2f}× those bytes and UPI carries {hbm56.upi_flits_per_line:.1f} data flits per delivered line "
            f"against {ddr_flits.median():.1f} for a clean remote read. At 14 and 28 threads the same remote HBM read is clean "
            f"({hbm_low.ctrl_over_modeled.min():.2f}–{hbm_low.ctrl_over_modeled.max():.2f}× at the controllers, {hbm_low.gbs.min():.0f}–{hbm_low.gbs.max():.0f} GB/s), "
            "and so is remote DDR at every thread count. The link is not saturated "
            f"({hbm56_flits / 1e9:.1f} × 10⁹ flits/s against {peak_flits_ddr / 1e9:.1f} on remote DDR), there are "
            f"{rc.dir_updates_per_line.max() * 1e3:.2f} directory updates per thousand lines at most, and the read kernels write back at most {_pct(float(rc[rc.index.get_level_values('kernel') == 'read'].ctrl_write_per_read.max()), 1)} "
            "of what they read, so directory traffic is not the mechanism. Which agent issues the second read (a prefetch, a retried request) is not resolved "
            "by these events.",
        ),
    ]


def uncore_gemm(unc: pd.DataFrame) -> list[Claim]:
    """GEMM traffic at the memory controllers (review item U4)."""

    gc = report.gemm_controller_table(unc)
    small = gc[gc.m.le(64)]
    big = gc[gc.m.eq(256)].set_index(["dtype", "memory_target"])
    bf, i8 = big.xs("bf16", level="dtype"), big.xs("int8", level="dtype")
    return [
        Claim(
            "gemm_controller_small_m",
            bool(small.ctrl_over_counted.between(0.98, 1.02).all() and small.ctrl_over_modeled.between(0.93, 1.0).all()),
            f"For decode-sized batches the cores' own counts are the memory traffic: from M = 1 to 64 the controllers see "
            f"{small.ctrl_over_counted.min():.3f}–{small.ctrl_over_counted.max():.3f}× the bytes the offcore counters of the GEMM's threads counted, and "
            f"{small.ctrl_over_modeled.min():.2f}–{small.ctrl_over_modeled.max():.2f}× the modeled bytes (BF16 and INT8, HBM and DDR, converged pool), so "
            f"modeled intensities at M ≤ 64 are at most {_pct(1 / small.ctrl_over_modeled.min() - 1)} low and the M = 1 points are within "
            f"{_pct(float((1 / gc[gc.m.eq(1)].ctrl_over_modeled - 1).max()))}.",
        ),
        Claim(
            "gemm_controller_m256",
            bool((bf.ctrl_read_over_modeled > 1.15).all() and (i8.ctrl_over_modeled < 0.9).all() and (bf.counted_write_over_modeled > 2 * bf.ctrl_write_over_modeled).all()),
            f"At M = 256 the model misses in both directions. Plain-layout BF16 reads {bf.ctrl_read_over_modeled.min():.2f}–{bf.ctrl_read_over_modeled.max():.2f}× the "
            f"modeled bytes at the controllers, about 1.3 passes over the weights per call, so its controller-level intensity is "
            f"{bf.intensity_ctrl.min():.0f}–{bf.intensity_ctrl.max():.0f} FLOP/B against {bf.intensity_modeled.iloc[0]:.0f} modeled. INT8 (weights prepacked) reads "
            f"{_span(i8.ctrl_read_over_modeled)}×, which is the weights and activations once: its int32 output stays on chip, "
            f"and its intensity is {i8.intensity_ctrl.min():.0f}–{i8.intensity_ctrl.max():.0f} FLOP/B against {i8.intensity_modeled.iloc[0]:.0f} modeled. The cores' "
            f"write estimate over-counts at M = 256 ({_span(bf.counted_write_over_modeled)}× modeled for BF16 against "
            f"{bf.ctrl_write_over_modeled.max():.2f}× written at the controllers), so the counted-bytes atlas places that point lower than the controllers would.",
        ),
        Claim(
            "gemm_power_limited",
            bool(gc.power_limited.min() > 0.85 and gc.pkg_w.sub(350).abs().max() < 10),
            f"Every GEMM here, M = 1 to 256 on either tier, runs at the package limit ({gc.pkg_w.min():.0f}–{gc.pkg_w.max():.0f} W, clipped for power in "
            f"{_pct(float(gc.power_limited.min()))} or more of the cycles), with cores at {gc.core_ghz.min():.2f}–{gc.core_ghz.max():.2f} GHz and the uncore at "
            f"{gc.uncore_ghz.min():.2f}–{gc.uncore_ghz.max():.2f} GHz: a 56-core GEMM, decode or prefill, is power-bound on this node.",
        ),
    ]


def uncore_loaded(unc: pd.DataFrame, ext: pd.DataFrame) -> list[Claim]:
    """Loaded latency with the bandwidth the controllers served in the same windows (R3)."""

    lc = report.loaded_concurrency(unc).set_index(["memory_target", "streaming_cores"])
    before = report.loaded_latency(ext).assign(memory_target=lambda f: f.config.str.replace("flat_", "", regex=False))
    before = before.set_index(["memory_target", "stream_cores"]).loaded_ns
    loaded = lc[lc.index.get_level_values("streaming_cores") > 0]
    agree = (loaded.latency_ns / before.reindex(loaded.index)).dropna()
    busy = loaded[loaded.index.get_level_values("streaming_cores") >= 4]
    ctrl_vs_model = busy.tier_gbs / busy.stream_gbs_modeled
    h, d = lc.loc[("hbm", 55)], lc.loc[("ddr", 55)]
    hi, di = lc.loc[("hbm", 0)], lc.loc[("ddr", 0)]
    return [
        Claim(
            "loaded_concurrency_counted",
            bool(len(agree) == 10 and agree.sub(1).abs().max() < 0.02 and ctrl_vs_model.between(0.98, 1.03).all()),
            f"The concurrency behind the loaded latency now rests on counted bytes: in the same synchronized windows the bound tier's controllers served "
            f"{_span(ctrl_vs_model, 3)}× the streaming cores' modeled rate (4 to 55 streaming cores), and the chase, rerun with the session, reproduces the "
            f"earlier loaded latencies to within {_pct(float(agree.sub(1).abs().max()), 1)}. Little's law on the controller rate gives {h.lines_in_flight:.0f} lines in flight on "
            f"HBM with 55 streaming cores ({h.lines_in_flight / 56:.1f} per core, {h.latency_ns:.0f} ns, {h.tier_gbs:.0f} GB/s) and {d.lines_in_flight:.0f} on DDR "
            f"({d.lines_in_flight / 56:.1f} per core, {d.latency_ns:.0f} ns, {d.tier_gbs:.0f} GB/s). The latency in that product is still the chasing core's, assumed to be "
            "what the streams' loads see.",
        ),
        Claim(
            "loaded_uncore_clock",
            bool(h.uncore_ghz < hi.uncore_ghz - 0.5 and h.pkg_w > 345 and d.uncore_ghz > h.uncore_ghz),
            f"Under load the mesh slows with the power limit: the uncore clock falls from {hi.uncore_ghz:.2f} GHz with the chase alone to {h.uncore_ghz:.2f} GHz beside "
            f"55 HBM-streaming cores ({h.pkg_w:.0f} W), and to {d.uncore_ghz:.2f} GHz beside 55 DDR-streaming cores ({di.uncore_ghz:.2f} idle). Part of the HBM latency "
            "rise may be the slower mesh rather than queueing at the memory (not separated here).",
        ),
    ]


def data_pattern_claims(dp: pd.DataFrame) -> list[Claim]:
    """The data-pattern effect on the read ceiling, with power and the uncore clock (STREAMGAP E6)."""

    med = dp.groupby(["memory_target", "init"]).median(numeric_only=True)
    hbm, ddr = med.loc["hbm"], med.loc["ddr"]
    low = hbm.loc[["random", "varied"]]
    high = hbm.loc[["const", "zero"]]
    h = dp[dp.memory_target.eq("hbm")].assign(per_ghz=lambda f: f.gbs / f.uncore_ghz)
    first = dp.loc[(dp.memory_target.eq("hbm")) & dp.gbs.sub(low.gbs.median()).gt(20) & dp.init.isin(["random", "varied"])]
    return [
        Claim(
            "data_pattern_power",
            bool(high.gbs.min() > 1.05 * low.gbs.max() and high.uncore_ghz.min() > 1.04 * low.uncore_ghz.max()
                 and hbm.pkg_w.sub(350).abs().max() < 5 and hbm.power_limited.min() > 0.95
                 and h.per_ghz.std() / h.per_ghz.mean() < 0.02 and ddr.gbs.max() / ddr.gbs.min() < 1.005),
            f"The data pattern moves the HBM read ceiling through the power limit, now measured (STREAMGAP E6): with constant or zero data the 56-core read "
            f"sustains {_span(high.gbs, 0)} GB/s with the uncore at {_span(high.uncore_ghz)} GHz, with random or the thesis data {_span(low.gbs, 0)} GB/s at "
            f"{_span(low.uncore_ghz)} GHz, while the package draws {_span(hbm.pkg_w, 0)} W and has its frequency clipped for power in "
            f"{_span(hbm.power_limited * 100, 0)}% of the PCU cycles in every case. Random-looking data costs more energy per byte (the same power for {_pct(1 - low.gbs.median() / high.gbs.median())} fewer bytes), "
            "so under the limit the mesh runs slower; per uncore GHz every "
            f"one of the {len(h)} HBM launches moves {h.per_ghz.min():.0f}–{h.per_ghz.max():.0f} GB/s whatever its data"
            + (f" (including the campaign's first launch, {first.gbs.iloc[0]:.0f} GB/s at {first.pkg_w.iloc[0]:.0f} W after the idle setup)" if len(first) else "")
            + f". DDR shows no dependence: {_span(ddr.gbs, 1)} GB/s for all four patterns, uncore {_span(ddr.uncore_ghz)} GHz, at the same power limit. "
            "The thesis read ceiling is therefore a random-data figure set by the power limit; model weights are not constants, so it is the relevant one "
            "(real weights were not tested).",
        ),
    ]


def uncore_streams(unc: pd.DataFrame, theory: Theory, ext: pd.DataFrame | None = None) -> list[Claim]:
    """Controller traffic, power and clocks of the streams (review item U1)."""

    ct = report.controller_table(unc)
    pt = report.power_table(unc)
    fw = report.first_window_counters(unc).set_index(["memory_target", "kernel"])
    cost = report.counting_cost(unc)
    many = ct[ct.threads.ge(14)]
    one = ct[ct.threads.eq(1)]
    idle_gbs = float((one.ctrl_gbs - one.gbs).median())
    pl1 = float(theory.power["pl1_w"])
    streams = pt[pt.memory_target.isin(["ddr", "hbm"])].set_index(["memory_target", "kernel", "threads"])
    full = streams.xs(56, level="threads")
    hbm, ddr = full.loc[("hbm", "read")], full.loc[("ddr", "read")]
    h14 = streams.loc[("hbm", "read", 14)]
    hf, df_ = fw.loc[("hbm", "read")], fw.loc[("ddr", "read")]
    hbm_fw = fw.loc["hbm"]
    ddr_fw = fw.loc["ddr"]
    compute = pt[pt.memory_target.eq("registers") & pt.threads.eq(56)].set_index("kernel")
    second = None
    if ext is not None:
        second = report.second_window_ratio(ext)
        second = second[second.memory_target.eq("hbm")]
    return [
        Claim(
            "controller_streams",
            bool(many.ctrl_over_modeled.between(0.98, 1.02).all() and many.ctrl_over_counted.between(0.98, 1.03).all()),
            f"At the memory controllers the traffic model holds: from 14 to 56 cores the CAS bytes of every DDR and HBM channel are "
            f"{many.ctrl_over_modeled.min():.3f}–{many.ctrl_over_modeled.max():.3f} of the modeled bytes for read, Triad and non-temporal copy on both "
            f"tiers, and {many.ctrl_over_counted.min():.3f}–{many.ctrl_over_counted.max():.3f} of what the cores' offcore counters saw, inside the review's "
            f"±2% acceptance (U1). On one core the controllers see {one.ctrl_over_modeled.min():.2f}–{one.ctrl_over_modeled.max():.2f}× the model: the idle "
            f"background of the node (about {idle_gbs:.1f} GB/s) is {_pct(idle_gbs / float(one.gbs.median()))} of a one-core stream.",
        ),
        Claim(
            "controller_tier",
            bool(many.tier_share.ge(0.99).all()),
            f"Flat binding holds at the controllers: {_pct(float(many.tier_share.min()), 1)} or more of the CAS bytes land on the bound tier from "
            "14 cores up (HBM channel controllers for HBM, DDR channels for DDR), and the read kernel writes "
            f"{_pct(float(many[many.kernel.eq('read')].write_share.max()), 1)} or less of its bytes.",
        ),
        Claim(
            "counting_cost",
            bool(len(cost) == 6 and cost.with_over_without.sub(1).abs().max() < 0.01),
            f"Counting costs at most {_pct(float(1 - cost.with_over_without.min()), 1)}: with the system-wide session the 56-core streams sustain "
            f"{cost.with_over_without.min():.3f}–{cost.with_over_without.max():.3f}× the rate of the same point measured without it in the same launch "
            f"(windows 3–5, {len(cost)} pairs; DDR {_span(cost[cost.memory_target.eq('ddr')].with_over_without, 3)}). The largest gap, "
            f"HBM read, is inside that point's window-to-window spread ({cost.cv_with.max():.1f}% with, {cost.cv_without.max():.1f}% without).",
        ),
        Claim(
            "clock_drop_power",
            bool(abs(hbm.pkg_w / pl1 - 1) < 0.03 and hbm.power_limited > 0.9 and hbm.thermal_limited < 0.01 and hbm.core_ghz < h14.core_ghz - 0.5),
            f"The clock drops while HBM streams because the package reaches its power limit: at 56 cores the HBM read runs at {hbm.pkg_w:.0f} W "
            f"(PL1 {pl1:.0f} W), the power-control unit clips the frequency for power in {_pct(hbm.power_limited)} of its cycles and for "
            f"temperature in {_pct(hbm.thermal_limited)}, and the core clock is {hbm.core_ghz:.2f} GHz with the uncore at {hbm.uncore_ghz:.2f} GHz, against "
            f"{h14.core_ghz:.2f} and {h14.uncore_ghz:.2f} GHz at 14 cores ({h14.pkg_w:.0f} W, not limited). DDR read at 56 cores is power-limited as well "
            f"({ddr.pkg_w:.0f} W, {_pct(ddr.power_limited)}) but keeps {ddr.core_ghz:.2f} GHz cores and a {ddr.uncore_ghz:.2f} GHz uncore at its lower bandwidth. "
            "This replaces the earlier inference with a measurement.",
        ),
        Claim(
            "first_window_uncore",
            bool(hf.gbs_ratio > 1.03 and (hbm_fw.ctrl_gbs_ratio - hbm_fw.uncore_ghz_ratio).abs().max() < 0.02 and abs(hf.core_ghz_ratio - 1) < 0.02
                 and hf.pkg_w_first > pl1 and ddr_fw.gbs_ratio.sub(1).abs().max() < 0.01),
            f"The fast first window on HBM is the uncore clock riding the power budget: the first one-second window of the 56-core HBM read moves "
            f"{_pct(hf.gbs_ratio - 1)} more than windows 3–5, its controllers serve {_pct(hf.ctrl_gbs_ratio - 1)} more, and the uncore runs "
            f"{_pct(hf.uncore_ghz_ratio - 1)} faster ({hf.uncore_ghz_first:.2f} against {hf.uncore_ghz_rest:.2f} GHz) while the core clock is unchanged "
            f"({hf.core_ghz_first:.2f} and {hf.core_ghz_rest:.2f} GHz). The package draws {hf.pkg_w_first:.0f} W in that window and {hf.pkg_w_rest:.0f} W in windows 3–5: "
            f"after the idle setup the running average over RAPL's {theory.power['pl1_window_s']:.0f}-second window lets it exceed PL1 ({pl1:.0f} W) "
            f"until the average catches up, which here, after the counting session's longer setup, takes into window 2 ({_span(hbm_fw.pkg_w_second, 0)} W)"
            + (f"; in the campaigns without the session window 2 is already sustained (within {_pct(float(second.second_ratio.sub(1).abs().median()), 1)} of windows 3–5 "
               f"in the median, so Table 1's sustained median, which drops only window 1, moves by at most {_pct(float(second.drop1_over_drop2.sub(1).abs().max()), 1)})"
               if second is not None else "")
            + f". DDR streams get the same power burst ({df_.pkg_w_first:.0f} W) without moving more "
            f"(first/rest {df_.gbs_ratio:.3f} for read; {ddr_fw.gbs_ratio.min():.3f}–{ddr_fw.gbs_ratio.max():.3f} over the DDR streams): DDR bandwidth is set by the "
            f"DIMMs, HBM bandwidth by the mesh clock: over the three HBM streams the first window is {hbm_fw.gbs_ratio.min():.3f}–{hbm_fw.gbs_ratio.max():.3f}× "
            f"the rest, and the controller ratio follows the uncore-clock ratio to within {(hbm_fw.ctrl_gbs_ratio - hbm_fw.uncore_ghz_ratio).abs().max():.3f}.",
        ),
        Claim(
            "energy_per_byte",
            bool(hbm.pj_per_byte < ddr.pj_per_byte),
            f"Per byte at full bandwidth HBM costs less energy than DDR: the computing socket's package plus DRAM power over the bytes the "
            f"controllers moved is {hbm.pj_per_byte:.0f} pJ/B for the 56-core HBM read ({hbm.pkg_w:.0f} + {hbm.ram_w:.0f} W at {hbm.gbs:.0f} GB/s) and "
            f"{ddr.pj_per_byte:.0f} pJ/B on DDR ({ddr.pkg_w:.0f} + {ddr.ram_w:.0f} W at {ddr.gbs:.0f} GB/s), {ddr.pj_per_byte / hbm.pj_per_byte:.1f}× more. "
            "These are whole-socket figures including the idle floor, not the energy of the transfer alone.",
        ),
        Claim(
            "energy_per_op",
            bool(len(compute) == 6 and compute.power_limited.max() < 0.05 and compute.pj_per_op.idxmin() == "AMX INT8"),
            "The compute peaks stay below the power limit (at most "
            f"{compute.pkg_w.max():.0f} W, clipped in {_pct(float(compute.power_limited.max()))} of the cycles), so their clocks are not set by power. "
            "Package energy per operation at 56 cores: "
            + "; ".join(f"{k} {r.pj_per_op:.1f} pJ ({r.pkg_w:.0f} W)" for k, r in compute.sort_values("pj_per_op").iterrows())
            + f". AMX INT8 does an operation for {compute.pj_per_op.max() / compute.pj_per_op.min():.0f}× less energy than AVX-512 FP64.",
        ),
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
        "literature": literature(ext, thesis),
    }


def uncore_claims(unc: pd.DataFrame, ext: pd.DataFrame, theory: Theory, data_pattern: pd.DataFrame | None = None) -> dict[str, list[Claim]]:
    """Every claim of notebook 06 (privileged uncore counters, Flat node)."""

    out = {
        "uncore_streams": uncore_streams(unc, theory, ext),
        "uncore_remote": uncore_remote(unc),
        "uncore_gemm": uncore_gemm(unc),
        "uncore_loaded": uncore_loaded(unc, ext),
    }
    if data_pattern is not None and len(data_pattern):
        out["data_pattern"] = data_pattern_claims(data_pattern)
    return out
