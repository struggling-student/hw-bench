#!/usr/bin/env python3
"""Write the analysis notebooks (sources only; execute_notebooks.py runs them).

The notebooks are the canonical presentation.  They are generated from this file so
that their source can be reviewed as ordinary code; edit here, then run
``python scripts/build_notebooks.py && python scripts/execute_notebooks.py``.
"""

from __future__ import annotations

from pathlib import Path

from nbformat.v4 import new_code_cell, new_markdown_cell

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
table, figure, say = ctx.table, ctx.figure, ctx.say"""


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

This notebook carries only the findings. Every number comes from a measured campaign (five steady one-second samples per point) and links back to its campaign id in the supporting notebooks: [platform and methodology](01_platform_and_methodology.ipynb), [memory](02_memory_hierarchy_and_bandwidth.ipynb), [NUMA and sockets](03_numa_and_socket_scaling.ipynb), [compute](04_compute_throughput.ipynb), [roofline atlas](05_roofline_atlas.ipynb), [LLM interface](06_llm_roofline_interface.ipynb).
"""),
    code(setup("00_master_analysis")),
    md("""
## 1. Platform and what was measured

Two sockets × 56 cores, SMT off, 64 GiB HBM2e and 8-channel DDR5-4800 per socket. *Flat* mode exposes HBM and DDR as separate NUMA nodes; *Cache* mode makes HBM a memory-side cache in front of DDR. Flat results were taken on one dedicated node outside Slurm (the October runs went through an exclusive Slurm allocation on the same node and are labelled as such); Cache results come from Slurm allocations on other nodes.
"""),
    code("""
prov = (ctx.everything[ctx.everything.campaign_id.isin(
            set(thesis.campaign_id) | set(ext.campaign_id))]
        .groupby(['memory_mode', 'launch_method', 'node'])
        .agg(campaigns=('campaign_id', 'nunique'), samples=('accepted', 'size')).reset_index())
table(prov)
"""),
    md("""
## 2. Compute: peak per execution path

The *efficiency at clock* column is the honest one: the cores do not run at the 1.9 GHz base clock. AVX-512 code ran near 2.5 GHz and AMX code near 2.0 GHz, so a datasheet comparison at base clock reads above 100% for FP64 and FP32.
"""),
    code("""
peaks = report.isa_peaks(ext, theory)
one = peaks[(peaks.scope == '1S') & (peaks.cores == 56)].groupby(['memory_mode', 'path'], as_index=False).first()
shown = one.pivot(index='path', columns='memory_mode', values='gops') / 1000
shown['ops/cycle/core (flat)'] = one[one.memory_mode == 'flat'].set_index('path').ops_per_cycle_per_core
shown['theory ops/cycle'] = one[one.memory_mode == 'flat'].set_index('path').theory_ops_per_cycle
shown['efficiency at clock (flat)'] = one[one.memory_mode == 'flat'].set_index('path').efficiency_at_clock
shown = shown.rename(columns={'cache': 'Cache TOP/s', 'flat': 'Flat TOP/s'}).reset_index()
table(shown)
"""),
    code("""
fig = plotting.go.Figure()
flat = one[one.memory_mode == 'flat'].set_index('path')
order = ['fp64', 'fp32', 'avx512_bf16', 'vnni_int8', 'amx_bf16', 'amx_int8']
fig.add_bar(x=order, y=[flat.loc[p, 'gops'] / 1000 for p in order], name='Measured (1 socket, 56 cores)',
            marker_color=[plotting.PATH_COLORS[p] for p in order])
fig.add_scatter(x=order, y=[theory.peak_gops(p, 56) / 1000 for p in order], mode='markers', name='Theoretical at 1.9 GHz base',
                marker=dict(symbol='line-ew', size=26, line=dict(width=3, color='#6B7480')))
plotting.style(fig, 'Peak throughput by execution path · one socket', 'Execution path', 'TOP/s (operations = multiply + add)', 520)
fig.update_yaxes(type='log')
figure(fig, 'compute_peaks')
"""),
    code("""
amx = flat.loc['amx_bf16']; i8 = flat.loc['amx_int8']; vb = flat.loc['avx512_bf16']; f32 = flat.loc['fp32']
say(f"**Result.** One socket sustains {i8.gops/1000:.0f} TOP/s on AMX INT8 and {amx.gops/1000:.0f} TOP/s on AMX BF16 "
    f"({amx.efficiency_at_clock:.1%} of the peak at the {amx.ghz_effective:.2f} GHz the cores actually ran). "
    f"The AVX-512 BF16 dot-product path reaches only {vb.gops/1000:.1f} TOP/s ({vb.ops_per_cycle_per_core:.0f} ops/cycle/core, about 0.5 instruction per cycle), "
    f"less than half of FP32 FMA ({f32.gops/1000:.1f} TOP/s): software that cannot use AMX gains little from BF16 weights in compute-bound regimes.")
"""),
    md("""
## 3. Memory: sustained bandwidth by tier and kernel
"""),
    code("""
bw = report.bandwidth_summary(ext, thesis)
local = bw[(bw.locality == 'local') & (bw.socket_scope == 'single') & (bw.socket == 0) & (bw.working_set_gib == 8)]
table(local.pivot_table(index='config', columns='kernel', values='gbs').reset_index())
"""),
    code("""
l1 = report.hierarchy(ext)
lv, lat = report.level_summary(l1)
table(lat.pivot(index='level', columns='config', values='latency_ns').reset_index())
"""),
    code("""
p = local.pivot_table(index='config', columns='kernel', values='gbs')
say(f"**Result.** One socket's HBM sustains {p.loc['flat_hbm'].max():.0f} GB/s against {p.loc['flat_ddr'].max():.0f} GB/s for DDR "
    f"({p.loc['flat_hbm'].max()/p.loc['flat_ddr'].max():.1f}×). HBM trades latency for bandwidth: an idle dependent load costs "
    f"{lat[(lat.config=='flat_hbm')&(lat.level=='memory')].latency_ns.iloc[0]:.0f} ns on HBM against "
    f"{lat[(lat.config=='flat_ddr')&(lat.level=='memory')].latency_ns.iloc[0]:.0f} ns on DDR.")
"""),
    md("""
## 4. Where the ceilings meet: ridge points

The ridge is the operational intensity at which a kernel stops being limited by memory and starts being limited by compute. It sets how much reuse a workload needs before extra compute helps.
"""),
    code("""
mem = report.bandwidth_summary(ext, thesis)
best = {}
for cfg in ['flat_hbm', 'flat_ddr', 'cache']:
    sel = mem[(mem.config == cfg) & (mem.locality == 'local') & (mem.socket_scope == 'single') & (mem.socket == 0)]
    if cfg == 'cache':
        sel = sel[sel.working_set_gib <= 16]
    best[cfg] = sel.gbs.max()
rows = []
for p in order:
    for cfg, gbs in best.items():
        rows.append(dict(path=p, memory=plotting.CONFIG_LABELS[cfg],
                         compute_TOPs=flat.loc[p, 'gops'] / 1000, bandwidth_GBs=gbs,
                         ridge_op_per_byte=roofline.ridge(flat.loc[p, 'gops'], gbs)))
table(pd.DataFrame(rows).pivot(index='path', columns='memory', values='ridge_op_per_byte').reindex(order).reset_index())
"""),
    md("""
**Implication.** On HBM the ridge for AMX BF16 sits near 200 operations per byte, for AVX-512 FP64 near 8. LLM decode at small batch has an intensity of a few operations per byte and is therefore bandwidth-bound on every path; the compute ceiling only matters for prefill and large batches. The [roofline atlas](05_roofline_atlas.ipynb) draws these ceilings with measured GEMM points; [notebook 06](06_llm_roofline_interface.ipynb) shows where decode and prefill will fall.

## 5. Limits of these results

* Bytes are *modeled* (kernel traffic convention), not memory-controller counts: uncore counters are not readable without privileges. Write-allocate behaviour is therefore inferred, not observed.
* No power or energy was measured (RAPL needs root).
* SMT is off on these nodes; its effect is documented, not measured.
* Cache-mode HBM hit rates are inferred from bandwidth versus working-set size only.
* Peaks come from synthetic kernels; GEMM points show what a library achieves at LLM shapes.
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
    md("""
The firmware (ACPI HMAT) advertises 262 GB/s DDR read bandwidth per socket — the measured read-only bandwidth ([notebook 02](02_memory_hierarchy_and_bandwidth.ipynb)) matches it — and 869 GB/s for HBM, which no kernel here reached (about 540–560 GB/s). HMAT latencies are unloaded datasheet-like values and are lower than measured dependent-load latency, which includes translation and the cache path.

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

A sample is used only if the benchmark's own checksum validated, the process ran on the expected host with the expected topology, its clock window lies inside the process window, disassembly proves the kernel used the intended instruction, GEMMs show an AMX execution in oneDNN's verbose log, and no foreign Slurm job was seen. Each configuration needs five steady samples; variation above 5% is flagged, not hidden.
"""),
    code("""
v = ctx.validation
say(f"**Validation.** status `{v['status']}`; {v['selected_samples']} thesis samples, {v['extended_samples']} extended samples; "
    f"{len(v['errors'])} errors, {len(v['warnings'])} warnings.")
table(pd.DataFrame({'warning': v['warnings']}))
"""),
    code("""
def cv(frame, metric):
    keys = ['memory_mode', 'benchmark', 'dtype', 'socket_scope', 'socket', 'memory_target', 'threads', 'working_set_bytes', 'notes', 'campaign_id']
    g = frame.groupby(keys, dropna=False)[metric]
    return (100 * g.std() / g.mean()).dropna()
c = pd.concat([cv(ext[ext.bandwidth_gbs.notna()], 'bandwidth_gbs'), cv(ext[ext.performance_gops.notna() & ext.bandwidth_gbs.isna()], 'performance_gops')])
table(c.describe(percentiles=[.5, .9, .99]).to_frame('CV % across configurations').reset_index())
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
    md("""
**Implication.** Launch method (exclusive Slurm versus an idle node over SSH) does not change the Flat results beyond measurement noise, so the October Flat data and the new SSH data can share a roofline. Where Cache deviations exceed 2% they are reported as node-to-node variance and not averaged away.

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
for edge, name in [(48 * 2**10, 'L1d 48 KiB'), (2 * 2**20, 'L2 2 MiB'), (112.5 * 2**20, 'L3 112.5 MiB')]:
    fig.add_vline(x=edge, line_dash='dot', line_color='#9AA3AF', annotation_text=name, annotation_position='top')
figure(fig, 'hierarchy_read_1core')
"""),
    code("""
full = h[h.notes == 'hier_read_56']
fig = plotting.line_by_config(full, 'per_thread_bytes', 'gbs', 'config', 'Read bandwidth · 56 cores, one socket',
                              'Working set per core (bytes)', 'GB/s', log_y=True)
fig.add_vline(x=112.5 * 2**20 / 56, line_dash='dot', line_color='#9AA3AF', annotation_text='L3 share per core', annotation_position='top')
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
    md("""
**Implication.** Memory bandwidth grows with core count, not with a single core's capability: a thread needs data to fit in L2 to run at 100+ GB/s, while a thread streaming from memory is capped near 17–25 GB/s regardless of tier. The 16 KiB point reads lower than 32 KiB because a pass over 16 KiB takes only tens of nanoseconds, comparable to the clock read that ends each pass; it is a measurement overhead, not an L1 property.

## 2. Idle dependent-load latency

**Conditions.** One core chasing a random cycle of 64-byte nodes (seed 7); transparent huge pages are enabled system-wide, so translation cost is small. Results describe idle latency, not loaded latency.
"""),
    code("""
lat = h[h.notes == 'hier_latency']
fig = plotting.line_by_config(lat, 'per_thread_bytes', 'latency_ns', 'config', 'Dependent-load latency · one core',
                              'Working set (bytes)', 'ns per load', log_y=True)
for edge, name in [(48 * 2**10, 'L1d'), (2 * 2**20, 'L2'), (112.5 * 2**20, 'L3')]:
    fig.add_vline(x=edge, line_dash='dot', line_color='#9AA3AF', annotation_text=name, annotation_position='top')
figure(fig, 'hierarchy_latency')
"""),
    code("""
table(latency.pivot(index='level', columns='config', values='latency_ns').reset_index())
"""),
    md("""
**Implication.** Cache levels are identical across configurations; only beyond the L3 do tiers differ. HBM's idle latency is higher than DDR's, so latency-bound code does not benefit from HBM; its benefit is bandwidth under many outstanding requests. In Cache mode the memory-side cache is a further HBM-latency step in front of DDR.

## 3. Triad, read-only and non-temporal Triad

**Conditions.** Socket 0, 56 cores, 8 GiB total, local memory (Flat), Cache mode at 8 GiB (HBM-resident). Triad moves 24 B per element as counted; if the hardware also read the destination line (write-allocate) the bus carries 32 B, so a Triad that is not write-allocate-free would read lower than the non-temporal variant, which never reads the destination.
"""),
    code("""
bw = report.bandwidth_summary(ext, thesis)
local = bw[(bw.locality == 'local') & (bw.socket_scope == 'single') & (bw.working_set_gib == 8)]
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
say(f"**Result.** On DDR the three kernels agree within {100*(p.loc['flat_ddr'].max()/p.loc['flat_ddr'].min()-1):.0f}% "
    f"(Triad {p.loc['flat_ddr','triad']:.0f}, non-temporal {p.loc['flat_ddr','triad_nt']:.0f}, read {p.loc['flat_ddr','read']:.0f} GB/s), "
    f"so the Triad figure is not depressed by write-allocate traffic on this part; on HBM they agree within {100*(p.loc['flat_hbm'].max()/p.loc['flat_hbm'].min()-1):.0f}%. "
    f"The firmware-advertised DDR read bandwidth is 262 GB/s, which the read-only kernel reproduces.")
"""),
    md("""
**Implication.** Full-line vector stores do not appear to cost an extra read here (consistent with the core skipping the read for whole-line writes), so counted Triad bandwidth is a fair proxy for bus traffic; this is inferred from equal rates, not observed with controller counters. For a roofline, the primary ceiling is the best sustained of the three kernels (ERT convention), with read-only shown as the decode-relevant slope.

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
    md("""
**Implication.** DDR saturates with roughly 28 cores while HBM keeps scaling to all 56: a workload that uses fewer cores than that (for example a server pinned to 55 cores competing with other work) leaves HBM bandwidth unused.

## 5. Cache mode against working-set size

**Conditions.** One socket, 56 cores, read-only and non-temporal Triad, local DDR-backed allocation of 8–128 GiB. The 64 GiB HBM capacity is a reference line, not a fitted transition.
"""),
    code("""
cap = bw[(bw.config == 'cache') & (bw.socket_scope == 'single') & (bw.socket == 0)]
fig = plotting.go.Figure()
for kernel, part in cap.groupby('kernel'):
    part = part.sort_values('working_set_gib')
    fig.add_scatter(x=part.working_set_gib, y=part.gbs, mode='lines+markers', name=kernel)
t = thesis[(thesis.memory_mode == 'cache') & (thesis.benchmark == 'stream_triad') & (thesis.notes == 'capacity') & (thesis.socket == 0)]
tt = t.groupby('working_set_gib').bandwidth_gbs.median()
fig.add_scatter(x=tt.index, y=tt.values, mode='lines+markers', name='triad (October)', line=dict(dash='dot'))
fig.add_vline(x=64, line_dash='dot', line_color='#9AA3AF', annotation_text='HBM 64 GiB', annotation_position='top')
plotting.style(fig, 'Cache-mode bandwidth against working set · socket 0', 'Working set (GiB)', 'GB/s', 500)
figure(fig, 'cache_capacity')
table(cap.pivot_table(index='working_set_gib', columns='kernel', values='gbs').reset_index())
"""),
    code("""
pv = cap.pivot_table(index='working_set_gib', columns='kernel', values='gbs')
say(f"**Result.** Read-only bandwidth falls from {pv.loc[8,'read']:.0f} GB/s at 8 GiB to {pv.loc[96,'read']:.0f} GB/s at 96 GiB and {pv.loc[128,'read']:.0f} GB/s at 128 GiB, "
    f"{pv.loc[128,'read']/pv.loc[8,'read']:.0%} of the HBM-resident rate; at 96 GiB it is {pv.loc[96,'read']/ctx.thesis[(ctx.thesis.memory_mode=='flat')&(ctx.thesis.memory_target=='ddr')&(ctx.thesis.benchmark=='stream_triad')&(ctx.thesis.notes=='core_scaling')&(ctx.thesis.threads==56)&(ctx.thesis.socket==0)].bandwidth_gbs.median():.0%} of Flat DDR's Triad.")
"""),
    md("""
**Implication.** Cache-mode bandwidth must be quoted with its working-set size. Once the active data exceeds the 64 GiB memory-side cache, bandwidth drops *below* what Flat-mode DDR delivers for the same kernel, because every miss pays for the cache lookup and fill. A model whose weights do not fit in 64 GiB should not expect HBM-class bandwidth in Cache mode.

## 6. Can DDR and HBM bandwidth be combined? (October measurement)
"""),
    code("""
from hwbench.analysis import concurrent_table
table(concurrent_table(thesis).drop(columns=['cpu_bind']))
"""),
    md("""
Combined DDR+HBM streams from disjoint core sets do not exceed the all-HBM rate for the same cores; component rates show interference relative to isolated controls. This measures two independent streams, not an application that mixes tiers.
"""),
]
