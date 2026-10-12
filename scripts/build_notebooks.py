#!/usr/bin/env python3
"""Write the analysis notebooks (sources only; execute_notebooks.py runs them).

The notebooks are the canonical presentation.  They are generated from this file so
that their source can be reviewed as ordinary code; edit here, then run
``python scripts/build_notebooks.py && python scripts/execute_notebooks.py``.
"""

from __future__ import annotations

from pathlib import Path

import nbformat
from nbformat.v4 import new_code_cell, new_markdown_cell, new_notebook

ROOT = Path(__file__).resolve().parents[1]


def setup(name: str) -> str:
    return f"""from pathlib import Path
import sys
import numpy as np
import pandas as pd
ROOT = next(p for p in [Path.cwd(), *Path.cwd().parents] if (p / 'src/hwbench').is_dir())
sys.path.insert(0, str(ROOT / 'src'))
from hwbench import report, roofline, plotting
from hwbench.notebook import setup
ctx = setup({name!r})
thesis, ext, theory = ctx.thesis, ctx.ext, ctx.theory
table, figure, say, say_claims = ctx.table, ctx.figure, ctx.say, ctx.say_claims
from hwbench import claims"""


def md(text: str):
    return new_markdown_cell(text.strip("\n"))


def code(text: str):
    return new_code_cell(text.strip("\n"))


NOTEBOOKS: dict[str, list] = {}

# --------------------------------------------------------------------------- 00
NOTEBOOKS["00_master_analysis"] = [
    md("""
# 00 — Master analysis: CPU Max 9480 hardware characterization

**Question.** What can one CRESCO8 Xeon CPU Max 9480 node sustain, per precision and memory configuration, and where do those limits sit relative to the vendor's peaks?

This notebook carries the findings in six figures and four tables; the supporting notebooks hold the detail: [platform and methodology](01_platform_and_methodology.ipynb), [memory](02_memory_hierarchy_and_bandwidth.ipynb), [NUMA and sockets](03_numa_and_socket_scaling.ipynb), [compute](04_compute_throughput.ipynb), [roofline atlas](05_roofline_atlas.ipynb). Every number is computed from the selected campaigns (five steady one-second samples per point).

**Kinds of number.** *Measured*: time, operation counts, user-mode cycles, load latency, checksums. *Modeled*: every byte count and therefore every GB/s, arithmetic intensity, GEMM traffic and ridge point. *Theoretical*: vendor or derived per-cycle peaks, DDR5 transfer rate, "up to 1 TB/s" for HBM. *Firmware-advertised*: the ACPI HMAT figures, which are neither measured nor derived here. *Inferred* statements say so where they occur.

**Colour.** Blue is Flat DDR, orange is Flat HBM, aqua is Cache mode; the violet ramp is the compute path (darker means more operations per cycle); hatching means a worse placement (remote or interleaved); line style says what a ceiling is (dashed vendor, solid measured, dotted library-achievable).
"""),
    code(setup("00_master_analysis")),
    md("""
## 1. Platform and headline ceilings

Two sockets × 56 cores, SMT off, 64 GiB HBM2e and 8-channel DDR5-4800 per socket. *Flat* mode exposes HBM and DDR as separate NUMA nodes; *Cache* mode makes HBM a memory-side cache in front of DDR. Flat results were taken on one dedicated node outside Slurm (the October runs went through an exclusive Slurm allocation on the same node and are labelled as such); Cache results come from Slurm allocations on other nodes.

**Table 1 — headline ceilings of socket 0** (the reference socket for every number here). *Median* [*min*–*max*] are the five samples of one run; *spread* is half that range relative to the median. *Cross-run* is the largest deviation when the quantity, or where it was not repeated its family, was measured again in a separate run (Cache: on a second node); *basis* says which. *Total* is spread plus cross-run, a conservative sum.
"""),
    code("""
t1 = report.headline_table(ext, thesis, theory)
table(t1[['quantity', 'unit', 'median', 'low', 'high', 'spread', 'cross_run', 'basis', 'total', 'n', 'kind']]
      .rename(columns={'low': 'min', 'high': 'max', 'spread': 'spread %', 'cross_run': 'cross-run %', 'total': 'total %', 'n': 'samples'}), 2)
say_claims(claims.headline_uncertainty(ext, thesis, theory))
"""),
    code("""
prov = (ctx.everything[ctx.everything.campaign_id.isin(
            set(thesis.campaign_id) | set(ext.campaign_id))]
        .groupby(['memory_mode', 'launch_method', 'node'])
        .agg(campaigns=('campaign_id', 'nunique'), samples=('accepted', 'size')).reset_index())
table(prov)
"""),
    md("""
## 2. Compute: what each path delivers per cycle

The only quantity comparable across paths is the fraction of the per-cycle figure, read at the clock the cores actually ran at. A datasheet comparison at base clock can read above 100%.
"""),
    code("""
peaks = report.isa_peaks(ext, theory)
one = peaks[(peaks.scope == '1S') & (peaks.cores == 56) & (peaks.memory_mode == 'flat') & (peaks.socket == 0)].copy()
fig = plotting.compute_efficiency_figure(one, {'avx512_bf16': 'two-port bound is assumed'})
figure(fig, 'compute_efficiency')
flat = one.set_index('path')
amx, i8, vb, f32 = flat.loc['amx_bf16'], flat.loc['amx_int8'], flat.loc['avx512_bf16'], flat.loc['fp32']
say(f"**Result.** One socket sustains {i8.gops/1000:.0f} TOP/s on AMX INT8 and {amx.gops/1000:.0f} TOP/s on AMX BF16 "
    f"({amx.efficiency_at_clock:.1%} of the peak at the {amx.ghz_effective:.2f} GHz the cores ran at). "
    f"The AVX-512 BF16 dot product reaches {vb.ops_per_cycle_per_core:.0f} operations per cycle, {vb.ops_per_cycle_per_core/64:.2f} instruction per cycle at 64 operations each; "
    f"its 128-operation bound is a two-port assumption of this study, not a vendor figure, so its {vb.efficiency_at_clock:.0%} efficiency depends on that assumption. "
    f"It is not a faster path than FP32 FMA ({f32.gops/1000:.1f} versus {vb.gops/1000:.1f} TOP/s).")
say_claims(claims.compute_paths(ext, theory), ['clocks', 'amx_busy'])
"""),
    md("""
## 3. Memory: bandwidth against cores and against working set
"""),
    code("""
rs = report.read_scaling(ext)
rs = rs[rs.socket == 0]
fig = plotting.memory_scaling_figure(rs, report.read_scaling_clock(ext))
figure(fig, 'memory_scaling')
say_claims(claims.core_scaling(ext, thesis, ROOT), ['ddr_saturates', 'hbm_still_scaling', 'hbm_clock_drop', 'hmat_gap'])
"""),
    code("""
bw = report.bandwidth_summary(ext, thesis)
bw0 = bw[(bw.socket_scope == 'single') & (bw.socket == 0) & (bw.locality == 'local')]
fig = plotting.cache_capacity_figure(bw0[bw0.config == 'cache'], bw0[(bw0.config != 'cache') & (bw0.working_set_gib.sub(8).abs() < 0.5)],
                                     {'16 GiB: 8B BF16 model': 16, '64 GiB: HBM capacity': 64})
figure(fig, 'cache_capacity')
say_claims(claims.cache_mode(ext, thesis), ['cache_declines_before_capacity', 'cache_resident_model', 'cache_below_flat_ddr'])
say_claims(claims.latency(ext, theory, ROOT), ['latency_order', 'cache_latency_resident_only'])
"""),
    md("""
## 4. The headline roofline: one socket, Flat mode

Memory slopes are the read-only ceilings, because GEMM weights are only read. The dotted line is the best rate a library GEMM achieved (not a hardware limit). Points are the BF16 14336×4096 projection for batch sizes M = 1 to 4096, on HBM and on DDR; intensity is modeled. The shaded bands are decode (small M) and prefill (large M).

**Table 2 — ridge points** (operations per byte at which each path stops being memory-bound).
"""),
    code("""
gm = report.gemm_points(ext)
mem_read = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', access='read'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', access='read')]
compute = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('fp32', 'amx_bf16', 'amx_int8')] + [report.library_ceiling(gm, 'amx_bf16')]
sel = gm[(gm.memory_mode == 'flat') & (gm.dtype == 'bf16') & (gm['shape'] == '14336x4096')]
pts = report.gemm_workload_points(sel, theory)
at = {(p.memory_target, int(p.provenance['label'][2:])): p.intensity for p in pts}
for p in pts:
    # Label HBM points at every fourth M; DDR points are unlabelled so labels never overprint.
    m = int(p.provenance['label'][2:])
    p.provenance['label'] = p.provenance['label'] if p.memory_target == 'hbm' and m in (1, 4, 16, 64, 256, 1024, 4096) else ''
regions = [(at[('hbm', 1)] / 1.3, at[('hbm', 16)] * 1.3, 'decode'), (at[('hbm', 256)] / 1.3, at[('hbm', 4096)] * 1.3, 'prefill')]
fig = plotting.roofline_figure(compute, mem_read, pts, title='Roofline · Flat · one socket · BF16 14336×4096 by batch M', regions=regions, point_labels=True)
figure(fig, 'headline_roofline')
audit = roofline.audit_points(pts, mem_read, compute)
say(f"**Result.** {int(audit.exceeds.sum())} of {len(audit)} plotted points lie above their roofline by more than their spread "
    f"(largest excess {audit.ratio.max() - 1:.1%}); they are listed in the [atlas](05_roofline_atlas.ipynb). "
    f"The best library rate is {compute[-1].gops/1000:.0f} TOP/s, {compute[-1].gops/compute[1].gops:.0%} of the measured AMX BF16 peak.")
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points'])
table(report.ridge_table(ext, thesis), 1)
"""),
    md("""
## 5. GEMM efficiency against batch size

Two panels share the M axis: the share of the measured tile peak reached, and the share of the read-bandwidth ceiling that the modeled bytes imply.
"""),
    code("""
sweeps = {}
tile = {d: report.compute_ceiling(ext, p, 'flat', 56).gops for d, p in (('bf16', 'amx_bf16'), ('int8', 'amx_int8'))}
for dtype, path in (('bf16', 'amx_bf16'), ('int8', 'amx_int8')):
    part = gm[(gm.memory_mode == 'flat') & (gm.memory_target == 'hbm') & (gm.dtype == dtype) & (gm['shape'] == '14336x4096')].copy()
    part['tile_fraction'] = part.gops / tile[dtype]
    part['bandwidth_fraction'] = part.gbs / mem_read[0].gbs
    sweeps[path] = part
fig = plotting.gemm_efficiency_figure(sweeps, decode_max=16, prefill_min=256)
figure(fig, 'gemm_efficiency')
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_fraction_of_tile_peak', 'gemm_asymmetry', 'gemv_fixed_cost'])
"""),
    md("""
## 6. Placement: remote memory and one process on both sockets
"""),
    code("""
fig = plotting.placement_figure(report.local_remote_table(ext, thesis), report.span_reference(ext, thesis))
figure(fig, 'placement')
say_claims(claims.placement(ext, thesis) + claims.sockets(ext, thesis) + claims.span(ext, thesis), ['remote_hbm', 'dual_efficiency', 'span_flat_hbm', 'span_interleave_cost'])
"""),
    md("""
## 7. Reference tables

**Table 3 — measured against vendor or derived peak and against the firmware figure.** Compute peaks are compared at the clock the cores ran at; the HBM "vendor" figure is a rounded 1 TB/s, and the firmware (HMAT) figures are advertised, not measured.
"""),
    code("""
t3 = report.measured_theory_table(ext, thesis, theory, claims.hmat_gbs(ROOT))
table(t3.rename(columns={'theoretical': 'theoretical (compute at measured clock)'}), 3)
"""),
    md("""
**Table 4 — what is not measured, and why.**
"""),
    code("""
table(report.unmeasured_table())
"""),
]

# --------------------------------------------------------------------------- 01
NOTEBOOKS["01_platform_and_methodology"] = [
    md("""
# 01 — Platform and methodology

**Question.** Under what conditions were the numbers taken, and how were they validated?

Everything in the analysis derives from raw per-process records kept unmodified in `data/raw/`. This notebook documents the platform, how each campaign was launched, the validity rules, and how repeatable the measurements are.
"""),
    code(setup("01_platform_and_methodology")),
    md("""
## 1. Platform record

Read on the execution node, without root, for one Flat and one Cache campaign. An unreadable source is recorded as such: for example, RAPL and MSR access is restricted, which bounds which counters can be used.
"""),
    code("""
import json
def platform_of(mode):
    camp = sorted(ext[ext.memory_mode == mode].campaign_id.unique())[0]
    return camp, json.loads((ROOT / 'data/raw' / mode / camp / 'system/platform.json').read_text()), json.loads((ROOT / 'data/raw' / mode / camp / 'system/topology.json').read_text())
rows = []
for mode in ['flat', 'cache']:
    camp, plat, topo = platform_of(mode)
    proc, pol = plat['processor'], plat['kernel_policy']
    rows.append({
        'mode': mode, 'campaign': camp, 'node': topo['hostname'].split('.')[0], 'cpu': topo['cpu_model'],
        'sockets': topo['socket_count'], 'cores': topo['physical_cores'], 'threads/core': topo['threads_per_core'],
        'NUMA nodes': len(topo['numa_nodes']), 'kernel': plat['os']['kernel'], 'OS': plat['os']['pretty_name'],
        'cpufreq max (MHz)': proc['cpuinfo_max_khz'] / 1000, 'THP': pol.get('transparent_hugepage'),
        'perf_event_paranoid': pol.get('perf_event_paranoid'), 'NUMA balancing': pol.get('numa_balancing'),
    })
table(pd.DataFrame(rows).set_index('mode').T.reset_index().rename(columns={'index': 'property'}))
"""),
    code("""
camp, plat, topo = platform_of('flat')
hm = plat['hmat_access']
nodes = {n['node']: n for n in topo['numa_nodes']}
table(pd.DataFrame([dict(node=int(k), tier=nodes[int(k)]['memory_tier'], socket=nodes[int(k)]['socket'], gib=round(nodes[int(k)]['memory_gib'], 1),
        hmat_read_GBs=v['read_bandwidth'] / 1000, hmat_write_GBs=v['write_bandwidth'] / 1000,
        hmat_read_ns=v['read_latency']) for k, v in hm.items()]))
"""),
    code("""
say_claims(claims.core_scaling(ext, thesis, ROOT) + claims.latency(ext, theory, ROOT), ['hmat_gap', 'hmat_latency'])
"""),
    md("""
## 2. Execution rules and provenance

* **Flat** campaigns run on the single dedicated Flat node, outside Slurm, in a tmux session started over SSH. Before measuring, the runner checks the node is idle (no Slurm job placed on it, 1-minute load below 1), and every record is bracketed by load and job snapshots. A foreign job observed at any point marks the record `interference_suspected` and processing rejects it.
* **Cache** campaigns run only under Slurm, exclusively (`--exclusive --mem=0`), with the Flat node excluded in the versioned submission template; the runner aborts if the node is the Flat node or its topology is not Cache.
* The October-11 Flat campaigns were run through an exclusive Slurm allocation on the same node (`launch_method = slurm_exclusive`); they are reused unchanged, and the cross-check below compares them with SSH runs.
"""),
    code("""
sel = pd.concat([thesis, ext])
prov = (sel.groupby(['memory_mode', 'campaign_id', 'launch_method', 'node', 'memory_mode_verified'], dropna=False)
        .agg(samples=('accepted', 'size'), source_sha256=('source_sha256', lambda s: ';'.join(sorted({x[:8] for x in s.dropna()})))).reset_index())
table(prov)
"""),
    md("""
## 3. Validity rules and repeatability

A sample is used only if the benchmark's own checksum validated, the process ran on the expected host with the expected topology, its clock window lies inside the process window, the disassembly of the compiled benchmark contains the intended instruction (a whole-binary check, not a check of the measured loop), GEMMs show an AMX execution in oneDNN's verbose log, and no foreign Slurm job was seen. Each configuration needs five steady samples; variation above 5% is flagged, not hidden.
"""),
    code("""
v = ctx.validation
say(f"**Validation.** status `{v['status']}`; {v['selected_samples']} thesis samples, {v['extended_samples']} extended samples; "
    f"{len(v['errors'])} errors, {len(v['warnings'])} warnings.")
table(pd.DataFrame({'warning': v['warnings']}))
"""),
    code("""
cvt = report.sample_cv(ext)
summary = cvt.groupby('family').cv_percent.describe(percentiles=[.5, .9, .99])[['count', '50%', '90%', '99%', 'max']]
summary.loc['all'] = cvt.cv_percent.describe(percentiles=[.5, .9, .99])[['count', '50%', '90%', '99%', 'max']]
table(summary.rename(columns={'count': 'configurations', '50%': 'median CV %', '90%': '90th %', '99%': '99th %', 'max': 'max %'}).reset_index(), 1)
"""),
    md("""
The table groups samples by *configuration*: benchmark, tier, thread count, working set and, for GEMM, shape and batch. The ten largest spreads are listed rather than hidden:
"""),
    code("""
worst = cvt.sort_values('cv_percent', ascending=False).head(10)
table(worst[['memory_mode', 'benchmark', 'dtype', 'memory_target', 'm', 'n', 'k', 'cv_percent', 'n_samples']], 1)
say_claims(claims.repeatability(ext, thesis), ['per_configuration_cv'])
"""),
    md("""
The first of the five windows of a configuration can differ from the rest. The table compares it with the median of the other four:
"""),
    code("""
fw = report.first_window_effect(ext)
fw['pool'] = np.where(fw.working_set_bytes > 64 * 2**30, 'spilled (>64 GiB)', 'other')
view = fw.groupby(['memory_mode', 'family', 'pool']).agg(configurations=('ratio', 'size'), median_ratio=('ratio', 'median'),
        lowest_ratio=('ratio', 'min'), below_90_percent=('ratio', lambda r: (r < 0.9).mean()), median_shift=('median_shift', lambda r: r.abs().max())).reset_index()
table(view[(view.configurations > 0)], 3)
say_claims(claims.repeatability(ext, thesis), ['cold_first_window'])
"""),
    md("""
## 4. Repeat run against the October values

Flat repeats run over SSH on the same node; Cache repeats run on a second node, so their deviation measures node-to-node variance. The acceptance threshold is 2%.
"""),
    code("""
x = report.xcheck_table(ext, thesis)
table(x[['memory_mode', 'benchmark', 'dtype', 'memory_target', 'socket', 'node', 'new', 'october', 'october_launch', 'deviation_percent', 'within_tolerance', 'cv_percent']])
"""),
    code("""
flat_x, cache_x = x[x.memory_mode == 'flat'], x[x.memory_mode == 'cache']
say(f"**Result.** Flat, SSH versus the October Slurm-exclusive runs: {flat_x.within_tolerance.mean():.0%} of {len(flat_x)} points within 2% "
    f"(largest {flat_x.deviation_percent.abs().max():.1f}%). Cache, second node versus the first: {cache_x.within_tolerance.mean():.0%} of {len(cache_x)} within 2% "
    f"(largest {cache_x.deviation_percent.abs().max():.1f}%).")
"""),
    code("""
say_claims(claims.xcheck(ext, thesis))
"""),
    md("""
## 5. Traffic and operation conventions

* Triad counts 24 B per element (two reads, one write); read-only counts 8 B per element; operations are counted as multiply + add = 2.
* GEMM traffic is weights + input activations + output per call, with weights drawn round-robin from a pool larger than four times the last-level cache so they stream from memory.
* Effective clock is user-mode core cycles ÷ (threads × wall time), self-monitored per thread through `perf_event_open`; AMX-busy is the `EXE.AMX_BUSY` event over the same cycles.
"""),
]

# --------------------------------------------------------------------------- 02
NOTEBOOKS["02_memory_hierarchy_and_bandwidth"] = [
    md("""
# 02 — Memory hierarchy and bandwidth

**Question.** How much traffic can each level of the memory system sustain, what does a dependent access cost, and how do the Triad, read-only and non-temporal-store kernels differ?

GB/s is kernel traffic (bytes the kernel reads and writes), not controller traffic. Working-set sizes are per thread for the hierarchy sweep (private arrays, first-touched by their owner) and total for the full-socket kernels.
"""),
    code(setup("02_memory_hierarchy_and_bandwidth")),
    md("""
## 1. Read bandwidth against working-set size

**Conditions.** One core and all 56 cores of socket 0, AVX-512 loads from private per-thread arrays, local memory. Hierarchy transitions appear as steps: L1 (48 KiB/core), L2 (2 MiB/core) and the shared L3 (112.5 MiB/socket). The one-core curve is the per-core capability at each level; the 56-core curve is the socket aggregate.
"""),
    code("""
h = report.hierarchy(ext)
one = h[h.notes == 'hier_read_1']
fig = plotting.line_by_config(one, 'per_thread_bytes', 'gbs', 'config', 'Read bandwidth · one core',
                              'Working set per core (bytes)', 'GB/s', log_y=True)
plotting.mark_x(fig, {'L1d 48 KiB': 48 * 2**10, 'L2 2 MiB': 2 * 2**20, 'L3 112.5 MiB': 112.5 * 2**20})
plotting.bytes_axis(fig)
figure(fig, 'hierarchy_read_1core')
"""),
    code("""
full = h[h.notes == 'hier_read_56']
fig = plotting.line_by_config(full, 'per_thread_bytes', 'gbs', 'config', 'Read bandwidth · 56 cores, one socket',
                              'Working set per core (bytes)', 'GB/s', log_y=True)
plotting.mark_x(fig, {'L1d 48 KiB': 48 * 2**10, 'L2 / L3 share 2 MiB': 2 * 2**20})
plotting.bytes_axis(fig, 2**14, 2**28)
figure(fig, 'hierarchy_read_56cores')
"""),
    code("""
levels, latency = report.level_summary(h)
table(levels.pivot(index='level', columns='config', values='gbs').reset_index())
"""),
    code("""
lv = levels.pivot(index='level', columns='config', values='gbs')
say(f"**Result.** Per core, L1 sustains {lv.loc['L1 (32 KiB)','flat_hbm']:.0f} GB/s, L2 {lv.loc['L2 (1 MiB)','flat_hbm']:.0f} GB/s and the L3 "
    f"{lv.loc['LLC (16 MiB)','flat_hbm']:.0f} GB/s; a single core reaches only {lv.loc['memory, 1 core (4 GiB)','flat_hbm']:.0f} GB/s from memory. "
    f"All 56 cores aggregate to {lv.loc['L1, 56 cores (32 KiB/core)','flat_hbm']/1000:.1f} TB/s in L1 and {lv.loc['L2, 56 cores (1 MiB/core)','flat_hbm']/1000:.1f} TB/s in L2, "
    f"against {lv.loc['memory, 56 cores (256 MiB/core)','flat_hbm']:.0f} GB/s (HBM) and {lv.loc['memory, 56 cores (256 MiB/core)','flat_ddr']:.0f} GB/s (DDR) from memory.")
"""),
    code("""
say_claims(claims.hierarchy(ext, theory))
"""),
    md("""
## 2. Idle dependent-load latency

**Conditions.** One core chasing a random cycle of 64-byte nodes (seed 7); transparent huge pages are enabled system-wide, so translation cost is small. Results describe idle latency, not loaded latency.
"""),
    code("""
lat = h[h.notes == 'hier_latency']
fig = plotting.line_by_config(lat, 'per_thread_bytes', 'latency_ns', 'config', 'Dependent-load latency · one core',
                              'Working set (bytes)', 'ns per load', log_y=True)
plotting.mark_x(fig, {'L1d': 48 * 2**10, 'L2': 2 * 2**20, 'L3': 112.5 * 2**20})
plotting.bytes_axis(fig)
figure(fig, 'hierarchy_latency')
"""),
    code("""
table(latency.pivot(index='level', columns='config', values='latency_ns').reset_index())
"""),
    code("""
say_claims(claims.latency(ext, theory, ROOT), ['latency_order', 'cache_latency_resident_only'])
"""),
    md("""
Cache levels are identical across configurations; only beyond the L3 do tiers differ. HBM's benefit is bandwidth under many outstanding requests, not latency.

## 3. Triad, read-only and non-temporal Triad

**Conditions.** Socket 0, 56 cores, 8 GiB total, local memory (Flat), Cache mode at 8 GiB (HBM-resident). Triad moves 24 B per element as counted; if the hardware also read the destination line (write-allocate) the bus carries 32 B, so a Triad that is not write-allocate-free would read lower than the non-temporal variant, which never reads the destination.
"""),
    code("""
bw = report.bandwidth_summary(ext, thesis)
local = bw[(bw.locality == 'local') & (bw.socket_scope == 'single') & (bw.socket == 0) & (bw.working_set_gib == 8)]
fig = plotting.go.Figure()
for cfg in ['flat_ddr', 'flat_hbm', 'cache']:
    part = local[local.config == cfg].groupby('kernel').gbs.mean()
    fig.add_bar(x=list(part.index), y=list(part.values), name=plotting.CONFIG_LABELS[cfg], marker_color=plotting.CONFIG_COLORS[cfg])
plotting.style(fig, 'Sustained bandwidth by kernel · one socket, 56 cores, 8 GiB', 'Kernel', 'GB/s', 480)
fig.update_layout(barmode='group')
figure(fig, 'kernel_comparison')
table(local.pivot_table(index='config', columns='kernel', values='gbs').reset_index())
"""),
    code("""
p = local.pivot_table(index='config', columns='kernel', values='gbs')
say(f"**Result.** Triad and non-temporal Triad agree to {100*abs(p.loc['flat_ddr','triad']/p.loc['flat_ddr','triad_nt']-1):.1f}% on DDR ({p.loc['flat_ddr','triad']:.0f} and {p.loc['flat_ddr','triad_nt']:.0f} GB/s) "
    f"and {100*abs(p.loc['flat_hbm','triad']/p.loc['flat_hbm','triad_nt']-1):.1f}% on HBM ({p.loc['flat_hbm','triad']:.0f} and {p.loc['flat_hbm','triad_nt']:.0f} GB/s), "
    f"so the destination line is not being read before it is written. Read-only is {p.loc['flat_ddr','read']/p.loc['flat_ddr','triad']-1:+.0%} on DDR ({p.loc['flat_ddr','read']:.0f} GB/s, the firmware-advertised 262) "
    f"and {p.loc['flat_hbm','read']/p.loc['flat_hbm','triad']-1:+.0%} on HBM ({p.loc['flat_hbm','read']:.0f} GB/s): reading is not faster than a mixed read/write stream on HBM.")
"""),
    code("""
say_claims(claims.kernels(ext, thesis, theory), ['no_write_allocate_bound', 'triad_store_width', 'read_vs_triad', 'hbm_over_ddr'])
"""),
    md("""
Counted Triad bandwidth is therefore used as a proxy for bus traffic, with the caveat that this is inferred, not observed. For a roofline the primary ceiling is the best sustained of the three kernels (ERT convention); workload-matched ceilings (read-only for GEMM weights) are used where the access pattern is known.

## 4. Core count needed to saturate memory
"""),
    code("""
rs = report.read_scaling(ext)
rs0 = rs[rs.socket == 0]
fig = plotting.line_by_config(rs0, 'threads', 'gbs', 'config', 'Read bandwidth against core count · socket 0, 8 GiB',
                              'Cores', 'GB/s', error='std')
figure(fig, 'read_core_scaling')
sat = (rs0.groupby('config').apply(lambda g: g[g.gbs >= 0.9 * g.gbs.max()].threads.min(), include_groups=False)).rename('cores for 90% of peak').reset_index()
table(sat)
"""),
    code("""
say_claims(claims.core_scaling(ext, thesis, ROOT), ['ddr_saturates', 'hbm_still_scaling', 'hbm_clock_drop', 'hmat_gap'])
"""),
    md("""
A workload that uses fewer cores than the saturation point (for example a server pinned to 55 cores competing with other work) leaves HBM bandwidth unused.

## 5. Cache mode against working-set size

**Conditions.** One socket, 56 cores, read-only, Triad (regular stores) and non-temporal Triad, local DDR-backed allocation of 8–128 GiB. The 64 GiB HBM capacity is a reference line, not a fitted transition.
"""),
    code("""
cap = bw[(bw.config == 'cache') & (bw.socket_scope == 'single') & (bw.socket == 0)]
flat_ref = bw[(bw.config != 'cache') & (bw.socket_scope == 'single') & (bw.socket == 0) & (bw.locality == 'local') & ((bw.working_set_gib - 8).abs() < 0.5)]
fig = plotting.cache_capacity_figure(cap, flat_ref, {'16 GiB: 8B BF16 model': 16, '64 GiB: HBM capacity': 64})
figure(fig, 'cache_capacity')
table(cap.pivot_table(index='working_set_gib', columns='kernel', values='gbs').reset_index())
"""),
    code("""
say_claims(claims.cache_mode(ext, thesis))
"""),
    md("""
Cache-mode bandwidth must be quoted with its working-set size. A model whose weights are larger than a few tens of GiB should not expect HBM-class bandwidth in Cache mode.

## 6. Can DDR and HBM bandwidth be combined? (October measurement)
"""),
    code("""
from hwbench.analysis import concurrent_table
table(concurrent_table(thesis).drop(columns=['cpu_bind']))
"""),
    code("""
say_claims(claims.concurrent(thesis))
"""),
]

# --------------------------------------------------------------------------- 03
NOTEBOOKS["03_numa_and_socket_scaling"] = [
    md("""
# 03 — NUMA placement and socket scaling

**Question.** What does it cost to use memory on the other socket, how well do two sockets scale when run independently, and what happens when a single process spans both?

Remote and local refer to the memory socket relative to the CPU socket. Two-socket results use two processes timed over one shared clock window (at least 95% overlap required, below 99% is flagged) unless stated as a single spanning process.
"""),
    code(setup("03_numa_and_socket_scaling")),
    md("""
## 1. Local against remote memory

**Conditions.** Flat mode, 56 cores of one socket, 8 GiB, memory bound to the local or the other socket's tier. Read-only and non-temporal Triad show how the penalty depends on traffic direction.
"""),
    code("""
loc = report.locality_ratio(ext, thesis)
lr = report.local_remote_table(ext, thesis)
fig = plotting.go.Figure()
for placement, hatch in (('local', ''), ('remote', '/')):
    fig.add_bar(x=lr.label, y=lr[placement], showlegend=False,
                marker=dict(color=[plotting.CONFIG_COLORS[c] for c in lr.config], pattern=dict(shape=hatch, fgcolor=plotting.SURFACE, size=6, solidity=0.5), line=dict(width=0)),
                error_y=dict(type='data', array=lr[f'{placement}_spread'], color=plotting.INK_2, thickness=1.2))
plotting.style(fig, 'Local (solid) and remote (hatched) bandwidth · socket 0, bars show the difference to socket 1', 'Tier and kernel', 'GB/s', 480)
fig.update_layout(barmode='group', bargap=0.3, margin=dict(l=85, r=40, t=85, b=80))
figure(fig, 'local_remote_bandwidth')
table(lr[['label', 'local', 'remote', 'remote_over_local', 'local_spread', 'remote_spread']].rename(columns={'local_spread': 'local, |socket 1 − 0|', 'remote_spread': 'remote, |socket 1 − 0|'}), 2)
"""),
    code("""
say_claims(claims.placement(ext, thesis))
"""),
    md("""
Bind memory and CPUs to the same socket for bandwidth-bound work.

## 2. Two sockets, two processes

Each pair completes initialization and warm-up, then synchronizes readiness before a shared clock window. Efficiency is the pair's aggregate throughput divided by the sum of the isolated socket rates.
"""),
    code("""
de = report.dual_efficiency(ext, thesis)
bandwidth = de.benchmark.str.startswith('stream')
de['label'] = np.where(bandwidth,
    de.benchmark.str.replace('stream_', '', regex=False) + ' ' + de.config.str.replace('flat_', '', regex=False) + ' ' + de.working_set_gib.round(0).fillna(0).astype(int).astype(str) + 'G',
    de.benchmark.str.replace('_peak', '', regex=False) + ' ' + de.dtype.fillna(''))
view = de[de.working_set_gib.isna() | (de.working_set_gib <= 16)].copy()
view['colour'] = [plotting.CONFIG_COLORS[c] if b.startswith('stream') else plotting.PATH_COLORS[theory.isa_for(b, d).key]
                  for b, d, c in zip(view.benchmark, view.dtype, view.config)]
fig = plotting.dual_efficiency_figure(view)
figure(fig, 'dual_socket_efficiency')
table(de.drop(columns=['label', 'metric']))
"""),
    code("""
say(f"**Result.** Across {len(de)} paired measurements the two-process rate is {de.efficiency.min():.3f}–{de.efficiency.max():.3f}× the sum of isolated sockets "
    f"(median {de.efficiency.median():.3f}); the shared window overlapped by at least {de.overlap_min.min():.1%}.")
say_claims(claims.sockets(ext, thesis))
"""),
    md("""
## 3. One process spanning both sockets

Unpinned workloads run one process with threads on all 112 cores. Two placements are compared for 16 GiB of data: *interleaved* pages across both sockets' memory, and *first-touch* (each thread allocates local to its socket).
"""),
    code("""
sp = report.span_table(ext)
table(sp[['memory_mode', 'config', 'benchmark', 'placement', 'k', 'gbs', 'gops', 'cv_percent', 'n_samples']])
"""),
    code("""
ref = pd.concat([report.span_reference(ext, thesis, 'read'), report.span_reference(ext, thesis, 'triad')], ignore_index=True)
fig = plotting.go.Figure()
for placement, hatch in (('firsttouch', ''), ('interleave', '/')):
    part = ref[ref.placement == placement]
    fig.add_bar(x=part.label, y=part.gbs, showlegend=False,
                marker=dict(color=[plotting.CONFIG_COLORS[c] for c in part.config], pattern=dict(shape=hatch, fgcolor=plotting.SURFACE, size=6, solidity=0.5), line=dict(width=0)))
once = ref.drop_duplicates('label')
fig.add_scatter(x=once.label, y=once.isolated_sum, mode='markers', name='two isolated sockets, summed',
                marker=dict(symbol='diamond', size=12, color=plotting.INK, line=dict(color=plotting.SURFACE, width=1.5)))
plotting.style(fig, 'One 112-thread process · first-touch (solid) and interleaved (hatched)', 'Tier and kernel', 'GB/s', 500)
fig.update_layout(barmode='group', bargap=0.3, margin=dict(l=85, r=40, t=85, b=110))
figure(fig, 'span_bandwidth')
"""),
    code("""
say_claims(claims.span(ext, thesis))
"""),
    md("""
## 4. Cores needed to saturate one socket (October Triad)
"""),
    code("""
from hwbench.analysis import scaling_table, knees_table
core = thesis[(thesis.benchmark == 'stream_triad') & (thesis.notes == 'core_scaling') & (thesis.socket_scope == 'single') & (thesis.socket == 0) & (thesis.locality == 'local')]
c = core.groupby(['memory_mode', 'memory_target', 'threads']).bandwidth_gbs.median().reset_index()
c['config'] = [plotting.config_key(m, t) for m, t in zip(c.memory_mode, c.memory_target)]
fig = plotting.line_by_config(c, 'threads', 'bandwidth_gbs', 'config', 'Triad bandwidth against core count · socket 0, 8 GiB', 'Cores', 'GB/s')
figure(fig, 'triad_core_scaling')
"""),
]

# --------------------------------------------------------------------------- 04
NOTEBOOKS["04_compute_throughput"] = [
    md("""
# 04 — Compute throughput

**Question.** What does each execution path sustain, at what clock, how close is that to the vendor figure, and how much of the AMX peak does a matrix multiplication reach?

Operations count a multiply and an add as two. *Execution path* means the instruction family the kernel is proven (by disassembly) to use.
"""),
    code(setup("04_compute_throughput")),
    md("""
## 1. Scaling with core count
"""),
    code("""
sc = report.isa_scaling(ext)
sc = sc[(sc.memory_mode == 'flat') & (sc.socket == 0)].copy()
sc['path'] = [theory_path for theory_path in (theory.isa_for(b, d).key for b, d in zip(sc.benchmark, sc.dtype))]
fig = plotting.go.Figure()
for path, part in sc.groupby('path'):
    part = part.sort_values('threads')
    fig.add_scatter(x=part.threads, y=part.gops / 1000, mode='lines+markers', name=theory.isa(path).label,
                    line=dict(color=plotting.PATH_COLORS[path]))
plotting.style(fig, 'Throughput against core count · Flat, socket 0', 'Cores', 'TOP/s', 520)
fig.update_xaxes(type='log'); fig.update_yaxes(type='log')
figure(fig, 'isa_scaling')
per_core = sc[sc.threads == 1].set_index('path').gops
say('Per core: ' + ', '.join(f"{theory.isa(p).label.split(' (')[0]} {per_core[p]:.0f} GOP/s" for p in per_core.index) + '.')
"""),
    code("""
say_claims(claims.compute_paths(ext, theory), ['linear_scaling'])
"""),
    md("""
Per-core rates are what multiply into the socket peaks used by the roofline.

## 2. Efficiency: against base clock and against the clock the cores ran at

The vendor figure is stated per cycle. Measured throughput divided by (cores × effective clock) gives the achieved operations per cycle, directly comparable to the vendor figure with no clock assumption.
"""),
    code("""
pk = report.isa_peaks(ext, theory)
one = pk[(pk.scope == '1S') & (pk.cores == 56) & (pk.memory_mode == 'flat')].groupby('path', as_index=False).first()
order = ['fp64', 'fp32', 'avx512_bf16', 'vnni_int8', 'amx_bf16', 'amx_int8']
one = one.set_index('path').loc[order].reset_index()
table(one[['path', 'label', 'gops', 'cv_percent', 'ghz_effective', 'amx_busy_frac', 'ops_per_cycle_per_core', 'theory_ops_per_cycle', 'efficiency_base', 'efficiency_at_clock', 'theory_status']])
"""),
    code("""
fig = plotting.compute_efficiency_figure(one, {'avx512_bf16': 'two-port bound is assumed'})
figure(fig, 'ops_per_cycle')
"""),
    code("""
i = one.set_index('path')
say(f"**Result.** AMX BF16 reaches {i.loc['amx_bf16','ops_per_cycle_per_core']:.0f} of 1024 operations per cycle ({i.loc['amx_bf16','efficiency_at_clock']:.1%}), "
    f"AMX INT8 {i.loc['amx_int8','ops_per_cycle_per_core']:.0f} of 2048, VNNI {i.loc['vnni_int8','ops_per_cycle_per_core']:.0f} of 256, FP32/FP64 {i.loc['fp32','ops_per_cycle_per_core']:.0f}/{i.loc['fp64','ops_per_cycle_per_core']:.0f} of 64/32. "
    f"The AVX-512 BF16 dot product reaches only {i.loc['avx512_bf16','ops_per_cycle_per_core']:.0f} of the 128 two-port upper bound — roughly one instruction every two cycles — "
    f"so it is not a faster path than FP32 FMA ({i.loc['fp32','gops']/1000:.1f} versus {i.loc['avx512_bf16','gops']/1000:.1f} TOP/s).")
"""),
    code("""
say_claims(claims.compute_paths(ext, theory), ['clocks'], lead='Apparent efficiencies above 100% at base clock are clock effects.')
"""),
    md("""
Software that expects BF16 to speed up without AMX will not see it: the only fast low-precision paths are AMX and, for INT8, VNNI.

## 3. Effective clock and AMX activity
"""),
    code("""
table(one[['path', 'ghz_effective', 'amx_busy_frac']])
"""),
    code("""
say_claims(claims.compute_paths(ext, theory), ['amx_busy'])
"""),
    md("""
AMX activity can therefore be told apart from vector activity in server runs.

## 4. oneDNN GEMM at representative projection shapes

**Conditions.** Socket 0, 56 cores, weights `N×K` drawn round-robin from a pool larger than four times the L3 so they stream from memory (HBM or DDR in Flat; 16 GiB resident or 96 GiB spilled in Cache). `M` is the number of tokens in the batch. Shapes are Llama-3.1-8B's `q/o` (4096×4096), `gate/up` (14336×4096) and `down` (4096×14336) projections plus a 6144² reference.
"""),
    code("""
gm = report.gemm_points(ext)
tile = {d: report.compute_ceiling(ext, p, 'flat', 56).gops for d, p in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]}
gm['fraction_of_tile_peak'] = gm.gops / gm.dtype.map(tile)
table(gm.groupby(['config', 'dtype', 'memory_target']).agg(best_TOPs=('gops', lambda s: s.max() / 1000), best_fraction=('fraction_of_tile_peak', 'max')).reset_index())
"""),
    code("""
sel = gm[(gm.memory_target == 'hbm') & (gm.dtype == 'bf16')]
raw = ext[(ext.benchmark == 'onednn_gemm_sweep') & (ext.memory_mode == 'flat') & (ext.memory_target == 'hbm') & (ext.dtype == 'bf16')].copy()
raw['shape'] = raw.n.astype(int).astype(str) + 'x' + raw.k.astype(int).astype(str)
fig = plotting.go.Figure()
for shape, part in sel.groupby('shape'):
    part = part.sort_values('m')
    color = plotting.SHAPE_COLORS[shape]
    samples = raw[raw['shape'] == shape]
    fig.add_scatter(x=samples.m, y=samples.performance_gops / 1000, mode='markers', showlegend=False, hoverinfo='skip',
                    marker=dict(size=5, color=color, opacity=0.35))
    fig.add_scatter(x=part.m, y=part.gops / 1000, mode='lines+markers', name=f'{shape}', line=dict(color=color, width=2.2),
                    marker=dict(size=7, line=dict(color=plotting.SURFACE, width=1.5)))
plotting.mark_y(fig, tile['bf16'] / 1000, 'AMX BF16 tile peak (measured)')
plotting.style(fig, 'BF16 GEMM against batch M · Flat HBM, 56 cores · line: median, dots: every sample', 'M (tokens per batch)', 'TOP/s', 520)
fig.update_xaxes(type='log', dtick=1, tickformat='~g'); fig.update_yaxes(type='log', dtick=1, tickformat='~g')
figure(fig, 'gemm_bf16_m_sweep')
"""),
    code("""
sel = gm[(gm.memory_target == 'hbm') & (gm.dtype == 'int8')]
raw = ext[(ext.benchmark == 'onednn_gemm_sweep') & (ext.memory_mode == 'flat') & (ext.memory_target == 'hbm') & (ext.dtype == 'int8')].copy()
raw['shape'] = raw.n.astype(int).astype(str) + 'x' + raw.k.astype(int).astype(str)
fig = plotting.go.Figure()
for shape, part in sel.groupby('shape'):
    part = part.sort_values('m')
    color = plotting.SHAPE_COLORS[shape]
    samples = raw[raw['shape'] == shape]
    fig.add_scatter(x=samples.m, y=samples.performance_gops / 1000, mode='markers', showlegend=False, hoverinfo='skip',
                    marker=dict(size=5, color=color, opacity=0.35))
    fig.add_scatter(x=part.m, y=part.gops / 1000, mode='lines+markers', name=f'{shape}', line=dict(color=color, width=2.2),
                    marker=dict(size=7, line=dict(color=plotting.SURFACE, width=1.5)))
plotting.mark_y(fig, tile['int8'] / 1000, 'AMX INT8 tile peak (measured)')
plotting.style(fig, 'INT8 GEMM against batch M · Flat HBM, 56 cores · line: median, dots: every sample', 'M (tokens per batch)', 'TOP/s', 520)
fig.update_xaxes(type='log', dtick=1, tickformat='~g'); fig.update_yaxes(type='log', dtick=1, tickformat='~g')
figure(fig, 'gemm_int8_m_sweep')
"""),
    code("""
big = gm[(gm.memory_target == 'hbm') & (gm.m == 4096)].groupby('dtype').gops.max()
small = gm[(gm.memory_target == 'hbm') & (gm.m == 1)].groupby('dtype').gops.max()
mem_bound = gm[(gm.memory_target == 'hbm') & (gm.m <= 16)].groupby('dtype').gbs.max()
say(f"**Result.** At M=4096 oneDNN reaches {big['bf16']/1000:.1f} TOP/s BF16 ({big['bf16']/tile['bf16']:.0%} of the tile peak) and {big['int8']/1000:.1f} TOP/s INT8 ({big['int8']/tile['int8']:.0%}). "
    f"At M=1 it delivers {small['bf16']/1000:.2f} and {small['int8']/1000:.2f} TOP/s: weight streaming, at up to {mem_bound['bf16']:.0f} (BF16) and {mem_bound['int8']:.0f} GB/s (INT8) of modeled traffic.")
"""),
    code("""
say_claims(claims.gemm(ext, thesis, theory, ROOT))
"""),
    md("""
The "fraction of tile peak" is the library-achievable compute ceiling for these calls (framework and library overhead included); the raw tile peak is an upper bound no library call reaches. Whether the small-M points are limited by memory, by per-call overhead or by weight repacking is not separable with the present runs.
"""),
]

# --------------------------------------------------------------------------- 05
NOTEBOOKS["05_roofline_atlas"] = [
    md("""
# 05 — Roofline atlas

**Question.** Where do the measured compute and bandwidth ceilings meet for each precision and memory configuration, and where do achieved kernels sit relative to them?

Line style tells the origin of a ceiling: **dashed** = theoretical (vendor or derived), **solid** = best measured by a dedicated kernel, **dotted** = what a library kernel (oneDNN GEMM) achieved. Memory slopes use the best sustained of Triad, non-temporal Triad and read-only (ERT convention) unless a figure says otherwise: the GEMM figures use the read-only ceiling (weights are only read) and the FP64 sweep uses the best read/write kernel (it loads one array and stores another). Bytes are modeled, so these are empirical envelopes, not counter-based bounds. Section 6 lists every point that lies above its own roofline.
"""),
    code(setup("05_roofline_atlas")),
    code("""
PATHS = ['fp64', 'fp32', 'avx512_bf16', 'vnni_int8', 'amx_bf16', 'amx_int8']
def compute_set(mode, scope, cores):
    out = [report.compute_ceiling(ext, p, mode, cores, scope) for p in PATHS]
    return out
def theory_set(paths, scope, cores):
    return [report.theoretical_ceiling(theory, p, cores, scope) for p in paths]
"""),
    md("""
## 1. Flat mode, one socket (56 cores)
"""),
    code("""
mem = [report.memory_ceiling(ext, thesis, 'flat', 'hbm'), report.memory_ceiling(ext, thesis, 'flat', 'ddr')]
fig = plotting.roofline_figure(theory_set(['fp64', 'amx_bf16', 'amx_int8'], '1S', 56) + compute_set('flat', '1S', 56), mem,
                               title='Flat · one socket · measured ceilings (solid) and vendor peaks (dashed)')
figure(fig, 'atlas_flat_1s')
table(pd.DataFrame([dict(memory=f'{m.tier} ({m.kernel})', GBs=m.gbs, **{p: roofline.ridge(c.gops, m.gbs) for p, c in zip(PATHS, compute_set('flat', '1S', 56))}) for m in mem]))
"""),
    md("""
The table gives the **ridge** (operations per byte) at which each path stops being memory-bound. Higher-throughput paths need proportionally more reuse; the ridge values for HBM and DDR are stated below.
"""),
    code("""
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points'])
"""),
    md("""
## 2. Cache mode, one socket
"""),
    code("""
resident = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', resident_gib=16)
spilled = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', at_gib=96)
fig = plotting.roofline_figure(theory_set(['amx_bf16', 'amx_int8'], '1S', 56) + compute_set('cache', '1S', 56), [resident, spilled],
                               title='Cache · one socket · data resident in HBM (16 GiB) and spilled to DDR (96 GiB)')
figure(fig, 'atlas_cache_1s')
table(pd.DataFrame([dict(case=c.tier, kernel=c.kernel, GBs=c.gbs, working_set_gib=c.working_set_gib) for c in (resident, spilled)]))
"""),
    code("""
say_claims(claims.cache_mode(ext, thesis), ['cache_declines_before_capacity', 'cache_triad_spilled_ceiling'])
"""),
    md("""
Every ridge moves right by the ratio of the two slopes. The 16 GiB line is the best case for a model of that size; the 96 GiB line is the Triad-based ceiling of the spilled case.

## 3. Flat mode, both sockets
"""),
    code("""
mem2 = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', '2S'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', '2S')]
fig = plotting.roofline_figure(theory_set(['fp64', 'amx_bf16', 'amx_int8'], '2S', 56) + compute_set('flat', '2S', 56), mem2,
                               title='Flat · both sockets (two timed processes) · measured and vendor ceilings')
figure(fig, 'atlas_flat_2s')
"""),
    code("""
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points', 'two_sockets_ridge'])
"""),
    md("""
## 4. Achieved points: FP64 sweep
"""),
    code("""
flat_hbm, flat_ddr = mem
fp64 = [report.compute_ceiling(ext, 'fp64', 'flat', 56)]
mem_rw = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', access='readwrite'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', access='readwrite')]
pts = report.fp64_sweep_points(thesis, 'flat', 'hbm') + report.fp64_sweep_points(thesis, 'flat', 'ddr')
audits = [roofline.audit_points(pts, mem_rw, fp64).assign(group='FP64 sweep · Flat · read/write ceiling')]
fig = plotting.roofline_figure(fp64 + theory_set(['fp64'], '1S', 56), mem_rw, pts, title='FP64 intensity sweep · Flat · one socket', x_range=(0.05, 256))
figure(fig, 'atlas_fp64_sweep')
hb = [p for p in pts if p.memory_target == 'hbm']
say_claims(claims.fp64_sweep(ext, thesis, theory))
"""),
    md("""
## 5. Achieved points: BF16 and INT8 GEMM

Each point is one (shape, M) pair. Intensity rises with M because the same weights are reused for more tokens; the point leaves the memory slope when the GEMM becomes compute-limited.
"""),
    code("""
gm = report.gemm_points(ext)
mem_read = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', access='read'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', access='read')]
for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
    sel = gm[(gm.memory_mode == 'flat') & (gm.dtype == dtype)]
    pts = report.gemm_workload_points(sel, theory)
    cs = [report.compute_ceiling(ext, path, 'flat', 56), report.theoretical_ceiling(theory, path, 56)]
    if dtype == 'bf16':
        cs.append(report.compute_ceiling(ext, 'avx512_bf16', 'flat', 56))
    else:
        cs.append(report.compute_ceiling(ext, 'vnni_int8', 'flat', 56))
    audits.append(roofline.audit_points(pts, mem_read, cs).assign(group=f'{dtype.upper()} GEMM · Flat · read-only ceiling'))
    fig = plotting.roofline_figure(cs, mem_read, pts, title=f'{dtype.upper()} GEMM M-sweep at Llama-3.1-8B shapes · Flat · one socket')
    figure(fig, f'atlas_gemm_{dtype}')
"""),
    code("""
rows = []
for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
    peak = report.compute_ceiling(ext, path, 'flat', 56).gops
    theo = theory.peak_gops(path, 56)
    for tgt, bw in [('hbm', flat_hbm.gbs), ('ddr', flat_ddr.gbs)]:
        sel = gm[(gm.memory_mode == 'flat') & (gm.dtype == dtype) & (gm.memory_target == tgt)]
        best = sel.loc[sel.gops.idxmax()]
        rows.append(dict(dtype=dtype, memory=tgt, best_shape=best['shape'], best_M=int(best.m), achieved_TOPs=best.gops / 1000,
                         measured_tile_peak_TOPs=peak / 1000, theory_TOPs=theo / 1000,
                         achieved_over_measured=best.gops / peak, measured_over_theory=peak / theo, achieved_over_theory=best.gops / theo))
gap = pd.DataFrame(rows)
table(gap)
"""),
    md("""
**Gap analysis.** Two layers separate the vendor number from library performance: (1) the vendor peak versus what a hand-written tile kernel sustains (the clock the cores actually ran at; compare `measured_over_theory` below); (2) the tile-kernel peak versus an optimized library GEMM (the achieved-over-measured column).

## 6. Ceiling audit: points above their own roofline

A ceiling is only an upper bound if no accepted point lies above it. Each point below is compared with `min(compute ceiling, bandwidth ceiling × intensity)` for its own tier and ISA path; it counts as *exceeding* when it is above that bound by more than the larger of its own and the ceiling's run-to-run spread (CV). Cache-mode GEMM uses the best-kernel ceiling at the pool size of the run (16 GiB resident, 96 GiB spilled).
"""),
    code("""
for pool, ceiling in [(16, resident), (96, spilled)]:
    for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
        sel = gm[(gm.memory_mode == 'cache') & (gm.dtype == dtype) & ((gm.pool_gib - pool).abs() < 0.5)]
        audits.append(roofline.audit_points(report.gemm_workload_points(sel, theory), [ceiling], compute_set('cache', '1S', 56)).assign(group=f'{dtype.upper()} GEMM · Cache · {pool} GiB pool · best-kernel ceiling'))
audit = pd.concat(audits, ignore_index=True)
summary = audit.groupby('group').agg(points=('exceeds', 'size'), exceeding=('exceeds', 'sum'), max_ratio=('ratio', 'max')).reset_index()
table(summary)
say(f"**Result.** {int(audit.exceeds.sum())} of {len(audit)} points lie above their roofline by more than their spread; the largest excess is {audit.ratio.max() - 1:.1%}.")
table(audit[audit.exceeds].sort_values('ratio', ascending=False)[['group', 'series', 'intensity', 'bandwidth_gbs', 'ceiling_gbs', 'ceiling_kernel', 'ratio', 'tolerance_percent']])
"""),
    md("""
**Reading the exceptions.** They are listed, not hidden. Two mechanisms can raise a point above a kernel-based ceiling, and the present data cannot separate them: (1) the access pattern of the point differs from every ceiling kernel (a one-load-one-store sweep, or a GEMM whose weight pool is small enough to be partly cache-resident, review item A5); (2) the modeled bytes overcount real memory traffic. The GEMM pool-size sweep and a counter-based traffic measurement are the planned tests; until then, points above the ceiling are evidence about the *ceiling's* definition, not a violation of the hardware.
"""),
]



def main() -> None:
    directory = ROOT / "notebooks"
    for name, cells in NOTEBOOKS.items():
        notebook = new_notebook(cells=cells)
        notebook.metadata["kernelspec"] = {
            "display_name": "Python 3",
            "language": "python",
            "name": "python3",
        }
        nbformat.write(notebook, directory / f"{name}.ipynb")
        print("Wrote", name)


if __name__ == "__main__":
    main()
