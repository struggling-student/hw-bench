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

This notebook carries only the findings. Every number comes from a measured campaign (five steady one-second samples per point) and links back to its campaign id in the supporting notebooks: [platform and methodology](01_platform_and_methodology.ipynb), [memory](02_memory_hierarchy_and_bandwidth.ipynb), [NUMA and sockets](03_numa_and_socket_scaling.ipynb), [compute](04_compute_throughput.ipynb), [roofline atlas](05_roofline_atlas.ipynb).
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
## 4. Flat versus Cache

Compute is identical in both modes (the memory mode does not touch the cores); only the memory system differs. Cache mode matches Flat HBM while the working set fits the 64 GiB memory-side cache and falls below Flat DDR once it does not.
"""),
    code("""
bwa = report.bandwidth_summary(ext, thesis)
bwa = bwa[(bwa.socket_scope == 'single') & (bwa.socket == 0) & (bwa.locality == 'local')]
def best(cfg, ws=None):
    sel = bwa[bwa.config == cfg] if ws is None else bwa[(bwa.config == cfg) & (bwa.working_set_gib == ws)]
    return sel.loc[sel.gbs.idxmax()]
pk = report.isa_peaks(ext, theory)
amx_by_mode = pk[(pk.path == 'amx_bf16') & (pk.scope == '1S') & (pk.cores == 56)].groupby('memory_mode').gops.median() / 1000
rows = [
    dict(memory='Flat · HBM', GBs=best('flat_hbm').gbs, idle_latency_ns=lat[(lat.config == 'flat_hbm') & (lat.level == 'memory')].latency_ns.iloc[0], amx_bf16_TOPs=amx_by_mode['flat']),
    dict(memory='Flat · DDR', GBs=best('flat_ddr').gbs, idle_latency_ns=lat[(lat.config == 'flat_ddr') & (lat.level == 'memory')].latency_ns.iloc[0], amx_bf16_TOPs=amx_by_mode['flat']),
    dict(memory='Cache · 8 GiB (resident)', GBs=best('cache', 8.0).gbs, idle_latency_ns=lat[(lat.config == 'cache') & (lat.level == 'memory')].latency_ns.iloc[0], amx_bf16_TOPs=amx_by_mode['cache']),
    dict(memory='Cache · 96 GiB (spilled)', GBs=best('cache', 96.0).gbs, idle_latency_ns=lat[(lat.config == 'cache') & (lat.level == 'memory')].latency_ns.iloc[0], amx_bf16_TOPs=amx_by_mode['cache']),
]
fc = pd.DataFrame(rows)
table(fc)
say(f"**Result.** Cache mode delivers {fc.GBs[2]/fc.GBs[0]:.0%} of Flat HBM bandwidth while resident and {fc.GBs[3]:.0f} GB/s ({fc.GBs[3]/fc.GBs[1]:.0%} of Flat DDR) when the working set is 96 GiB; "
    f"its idle memory latency ({fc.idle_latency_ns[2]:.0f} ns) is higher than either Flat tier. AMX BF16 throughput differs by {abs(amx_by_mode['cache']/amx_by_mode['flat']-1):.1%} between modes.")
"""),
    md("""
## 5. Placement and sockets

Memory must be local: remote HBM keeps about a tenth of its bandwidth. Two independent sockets deliver the sum of their parts, and a single process spanning both sockets reaches that only if every thread touches its own socket's pages.
"""),
    code("""
loc = report.locality_ratio(ext, thesis)
de = report.dual_efficiency(ext, thesis)
sp = report.span_table(ext)
spm = sp[(sp.memory_mode == 'flat') & (sp.benchmark == 'stream_read') & (sp.config == 'flat_hbm')].set_index('placement').gbs
local_hbm = loc[(loc.config == 'flat_hbm') & (loc.kernel == 'read')].local.mean()
say(f"**Result.** Remote HBM reads reach {loc[(loc.config=='flat_hbm')&(loc.kernel=='read')].remote.mean():.0f} GB/s against {local_hbm:.0f} GB/s local. "
    f"Two timed processes retain {de.efficiency.median():.1%} (median) of the sum of isolated sockets. One 112-thread process reads HBM at {spm['firsttouch']:.0f} GB/s with first-touch placement "
    f"but {spm['interleave']:.0f} GB/s with interleaved pages ({spm['interleave']/spm['firsttouch']:.0%}).")
"""),
    md("""
## 6. Achieved GEMM against the peaks
"""),
    code("""
gm = report.gemm_points(ext)
fl = gm[gm.memory_mode == 'flat']
rows = []
for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
    peak = flat.loc[path, 'gops']
    sel = fl[(fl.dtype == dtype) & (fl.memory_target == 'hbm')]
    rows.append(dict(precision=dtype, measured_tile_peak_TOPs=peak / 1000, best_gemm_TOPs=sel.gops.max() / 1000, fraction=sel.gops.max() / peak,
                     M1_TOPs=sel[sel.m == 1].gops.max() / 1000, M1_traffic_GBs=sel[sel.m == 1].gbs.max()))
table(pd.DataFrame(rows))
"""),
    md("""
A library GEMM reaches about a third of the tile peak even at large batches, and at batch 1 it moves weights at well under the HBM bandwidth. The [atlas](05_roofline_atlas.ipynb) compares these achieved rates with the instruction peak.

## 7. Where the ceilings meet: ridge points

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
**Implication.** On HBM the ridge for AMX BF16 sits near 200 operations per byte, for AVX-512 FP64 near 8. The [roofline atlas](05_roofline_atlas.ipynb) draws these ceilings with measured GEMM points.

## 8. Limits of these results

* Bytes are *modeled* (kernel traffic convention), not memory-controller counts: uncore counters are not readable without privileges. Write-allocate behaviour is therefore inferred, not observed.
* No power or energy was measured (RAPL needs root).
* SMT is off on these nodes; its effect is documented, not measured.
* Cache-mode HBM hit rates are inferred from bandwidth versus working-set size only.
* Peaks come from synthetic kernels; GEMM points show what a library achieves at representative shapes.
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
plotting.mark_x(fig, {'L1d 48 KiB': 48 * 2**10, 'L2 2 MiB': 2 * 2**20, 'L3 112.5 MiB': 112.5 * 2**20})
plotting.bytes_axis(fig)
figure(fig, 'hierarchy_read_1core')
"""),
    code("""
full = h[h.notes == 'hier_read_56']
fig = plotting.line_by_config(full, 'per_thread_bytes', 'gbs', 'config', 'Read bandwidth · 56 cores, one socket',
                              'Working set per core (bytes)', 'GB/s', log_y=True)
plotting.mark_x(fig, {'L1d 48 KiB': 48 * 2**10, 'L2 2 MiB': 2 * 2**20, 'L3 share 2 MiB': 112.5 * 2**20 / 56 * 1.02})
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
    md("""
**Implication.** Memory bandwidth grows with core count, not with a single core's capability: a thread needs data to fit in L2 to run at 100+ GB/s, while a thread streaming from memory is capped near 17–25 GB/s regardless of tier. The 16 KiB point reads lower than 32 KiB because a pass over 16 KiB takes only tens of nanoseconds, comparable to the clock read that ends each pass; it is a measurement overhead, not an L1 property.

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
say(f"**Result.** Triad and non-temporal Triad agree to {100*abs(p.loc['flat_ddr','triad']/p.loc['flat_ddr','triad_nt']-1):.1f}% on DDR ({p.loc['flat_ddr','triad']:.0f} and {p.loc['flat_ddr','triad_nt']:.0f} GB/s) "
    f"and {100*abs(p.loc['flat_hbm','triad']/p.loc['flat_hbm','triad_nt']-1):.1f}% on HBM ({p.loc['flat_hbm','triad']:.0f} and {p.loc['flat_hbm','triad_nt']:.0f} GB/s), "
    f"so the destination line is not being read before it is written. Read-only is {p.loc['flat_ddr','read']/p.loc['flat_ddr','triad']-1:+.0%} on DDR ({p.loc['flat_ddr','read']:.0f} GB/s, the firmware-advertised 262) "
    f"and {p.loc['flat_hbm','read']/p.loc['flat_hbm','triad']-1:+.0%} on HBM ({p.loc['flat_hbm','read']:.0f} GB/s): reading is not faster than a mixed read/write stream on HBM.")
"""),
    md("""
**Implication.** Full-line vector stores do not appear to cost an extra read here (consistent with the core skipping the read for whole-line writes), so counted Triad bandwidth is a fair proxy for bus traffic; this is inferred from equal rates, not observed with controller counters. For a roofline, the primary ceiling is the best sustained of the three kernels (ERT convention), with read-only shown alongside the Triad ceilings.

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

# --------------------------------------------------------------------------- 03
NOTEBOOKS["03_numa_and_socket_scaling"] = [
    md("""
# 03 — NUMA placement and socket scaling

**Question.** What does it cost to use memory on the other socket, how well do two sockets scale when run independently, and what happens when a single process spans both?

Remote and local refer to the memory socket relative to the CPU socket. Two-socket results use two processes timed over one shared clock window (at least 99% overlap required) unless stated as a single spanning process.
"""),
    code(setup("03_numa_and_socket_scaling")),
    md("""
## 1. Local against remote memory

**Conditions.** Flat mode, 56 cores of one socket, 8 GiB, memory bound to the local or the other socket's tier. Read-only and non-temporal Triad show how the penalty depends on traffic direction.
"""),
    code("""
loc = report.locality_ratio(ext, thesis)
fig = plotting.go.Figure()
for cfg in ['flat_ddr', 'flat_hbm']:
    part = loc[loc.config == cfg].groupby('kernel')[['local', 'remote']].mean()
    for placement, dash in [('local', None), ('remote', 'dot')]:
        fig.add_bar(x=[f'{k}' for k in part.index], y=part[placement], name=f"{plotting.CONFIG_LABELS[cfg]} · {placement}",
                    marker_color=plotting.CONFIG_COLORS[cfg], opacity=1.0 if placement == 'local' else 0.45)
plotting.style(fig, 'Local and remote bandwidth · socket 0 and 1 averaged', 'Kernel', 'GB/s', 480)
fig.update_layout(barmode='group')
figure(fig, 'local_remote_bandwidth')
table(loc.groupby(['config', 'kernel'], as_index=False)[['local', 'remote', 'remote_over_local']].mean())
"""),
    code("""
g = loc.groupby(['config', 'kernel'])[['remote_over_local']].mean().remote_over_local
say(f"**Result.** Remote DDR retains {g[('flat_ddr','read')]:.0%} (read) to {g[('flat_ddr','triad_nt')]:.0%} (non-temporal Triad) of local DDR bandwidth. "
    f"Remote HBM retains only {g[('flat_hbm','read')]:.0%} to {g[('flat_hbm','triad_nt')]:.0%} of local HBM, which is {loc[(loc.config=='flat_hbm')&(loc.kernel=='read')].remote.mean():.0f} GB/s: below remote DDR.")
"""),
    md("""
**Implication.** HBM is only an advantage when accessed from its own socket: remote HBM reads are slower than remote DDR reads through the same inter-socket links, so raw link bandwidth alone does not explain the loss; the cause was not identified, because the link and coherence-agent counters (UPI, CHA) are not readable without privileges. Any placement that lets threads fault HBM pages on the wrong socket loses an order of magnitude. Always bind memory and CPUs to the same socket for bandwidth-bound work.

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
view = view.groupby(['memory_mode', 'label'], as_index=False).efficiency.median()
fig = plotting.go.Figure()
for mode, part in view.groupby('memory_mode'):
    fig.add_bar(x=part.label, y=part.efficiency, name='Cache' if mode == 'cache' else 'Flat',
                marker_color='#268270' if mode == 'cache' else '#C24A40')
fig.add_hline(y=1.0, line_dash='dot', line_color='#6B7480')
plotting.style(fig, 'Two-socket scaling efficiency · dual rate ÷ sum of isolated sockets', 'Kernel', 'Efficiency', 520)
fig.update_layout(barmode='group')
fig.update_yaxes(range=[0.95, 1.03])
figure(fig, 'dual_socket_efficiency')
table(de.drop(columns=['label', 'metric']))
"""),
    code("""
say(f"**Result.** Across {len(de)} paired measurements the two-process rate is {de.efficiency.min():.3f}–{de.efficiency.max():.3f}× the sum of isolated sockets "
    f"(median {de.efficiency.median():.3f}); the shared window overlapped by at least {de.overlap_min.min():.1%}. Compute paths cluster at 0.985–0.992 and bandwidth paths at 0.99–1.02.")
"""),
    md("""
**Implication.** Independent sockets do not interfere: a node delivers the sum of its sockets for compute (about 1% below, consistent with a slightly lower clock when all cores run) and bandwidth. This describes independent workers; it does not measure tensor-parallel scaling or cross-socket communication.

## 3. One process spanning both sockets

Unpinned workloads run one process with threads on all 112 cores. Two placements are compared for 16 GiB of data: *interleaved* pages across both sockets' memory, and *first-touch* (each thread allocates local to its socket).
"""),
    code("""
sp = report.span_table(ext)
table(sp[['memory_mode', 'config', 'benchmark', 'placement', 'k', 'gbs', 'gops', 'cv_percent', 'n_samples']])
"""),
    code("""
mem = sp[sp.benchmark.isin(['stream_read', 'stream_triad']) & sp.placement.isin(['interleave', 'firsttouch'])]
fig = plotting.go.Figure()
for placement, color in [('interleave', '#3476A6'), ('firsttouch', '#C24A40')]:
    part = mem[mem.placement == placement]
    fig.add_bar(x=part.config + ' · ' + part.benchmark.str.replace('stream_', ''), y=part.gbs, name=placement, marker_color=color)
dual_ref = report.bandwidth_summary(ext, thesis)
plotting.style(fig, 'Single process, 112 threads · bandwidth by page placement', 'Memory · kernel', 'GB/s', 500)
fig.update_layout(barmode='group')
figure(fig, 'span_bandwidth')
"""),
    md("""
**Implication.** See the table: first-touch placement is what lets a single spanning process approach the two-process result, while interleaving halves the locality benefit by making half of every thread's traffic remote.

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
    md("""
**Implication.** Every path scales linearly in core count up to 56 within a few percent (compute is not shared). Per-core rates are what multiply into the socket peaks used by the roofline.

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
fig = plotting.go.Figure()
fig.add_bar(x=one.path, y=one.ops_per_cycle_per_core, name='Measured', marker_color=[plotting.PATH_COLORS[p] for p in one.path])
fig.add_scatter(x=one.path, y=one.theory_ops_per_cycle, mode='markers', name='Vendor / derived peak',
                marker=dict(symbol='line-ew', size=26, line=dict(width=3, color='#6B7480')))
plotting.style(fig, 'Operations per cycle per core · Flat, 56 cores', 'Execution path', 'Operations per cycle', 480)
fig.update_yaxes(type='log')
figure(fig, 'ops_per_cycle')
"""),
    code("""
i = one.set_index('path')
say(f"**Result.** AMX BF16 reaches {i.loc['amx_bf16','ops_per_cycle_per_core']:.0f} of 1024 operations per cycle ({i.loc['amx_bf16','efficiency_at_clock']:.1%}), "
    f"AMX INT8 {i.loc['amx_int8','ops_per_cycle_per_core']:.0f} of 2048, VNNI {i.loc['vnni_int8','ops_per_cycle_per_core']:.0f} of 256, FP32/FP64 {i.loc['fp32','ops_per_cycle_per_core']:.0f}/{i.loc['fp64','ops_per_cycle_per_core']:.0f} of 64/32. "
    f"The AVX-512 BF16 dot product reaches only {i.loc['avx512_bf16','ops_per_cycle_per_core']:.0f} of the 128 two-port upper bound — one instruction every two cycles — "
    f"so it is not a faster path than FP32 FMA ({i.loc['fp32','gops']/1000:.1f} versus {i.loc['avx512_bf16','gops']/1000:.1f} TOP/s).")
"""),
    md("""
**Implication.** The vendor per-cycle figures are met almost exactly; apparent efficiencies above 100% at base clock are clock effects (AVX-512 ran near 2.5 GHz, AMX near 2.0 GHz — AMX ran at the lowest clock, plausibly because of a power-related frequency limit for AMX, which was not measured: no power or throttling counters are readable). Software that expects BF16 to speed up without AMX will not see it: the only fast low-precision paths are AMX and, for INT8, VNNI.

## 3. Effective clock and AMX activity
"""),
    code("""
table(one[['path', 'ghz_effective', 'amx_busy_frac']])
"""),
    md("""
The `EXE.AMX_BUSY` counter confirms the AMX kernels keep the unit busy nearly all cycles (about 98–99%) and reads zero for every other path, so AMX activity can be told apart from vector activity in server runs.

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
fig = plotting.go.Figure()
for shape, part in sel.groupby('shape'):
    part = part.sort_values('m')
    fig.add_scatter(x=part.m, y=part.gops / 1000, mode='lines+markers', name=f'{shape}')
plotting.mark_y(fig, tile['bf16'] / 1000, 'AMX BF16 tile peak')
plotting.style(fig, 'BF16 GEMM against batch M · Flat HBM, 56 cores', 'M (tokens per batch)', 'TOP/s', 520)
fig.update_xaxes(type='log'); fig.update_yaxes(type='log')
figure(fig, 'gemm_bf16_m_sweep')
"""),
    code("""
sel = gm[(gm.memory_target == 'hbm') & (gm.dtype == 'int8')]
fig = plotting.go.Figure()
for shape, part in sel.groupby('shape'):
    part = part.sort_values('m')
    fig.add_scatter(x=part.m, y=part.gops / 1000, mode='lines+markers', name=f'{shape}')
plotting.mark_y(fig, tile['int8'] / 1000, 'AMX INT8 tile peak')
plotting.style(fig, 'INT8 GEMM against batch M · Flat HBM, 56 cores', 'M (tokens per batch)', 'TOP/s', 520)
fig.update_xaxes(type='log'); fig.update_yaxes(type='log')
figure(fig, 'gemm_int8_m_sweep')
"""),
    code("""
big = gm[(gm.memory_target == 'hbm') & (gm.m == 4096)].groupby('dtype').gops.max()
small = gm[(gm.memory_target == 'hbm') & (gm.m == 1)].groupby('dtype').gops.max()
mem_bound = gm[(gm.memory_target == 'hbm') & (gm.m <= 16)].groupby('dtype').gbs.max()
say(f"**Result.** At M=4096 oneDNN reaches {big['bf16']/1000:.1f} TOP/s BF16 ({big['bf16']/tile['bf16']:.0%} of the tile peak) and {big['int8']/1000:.1f} TOP/s INT8 ({big['int8']/tile['int8']:.0%}). "
    f"At M=1 it delivers {small['bf16']/1000:.2f} and {small['int8']/1000:.2f} TOP/s: weight streaming, at up to {mem_bound['bf16']:.0f} (BF16) and {mem_bound['int8']:.0f} GB/s (INT8) of modeled traffic.")
"""),
    md("""
**Implication.** GEMM approaches only a third of the AMX tile peak even at large M because tile loads, the epilogue and data layout cost more than the tile instruction itself; and below M≈16 it is bandwidth-bound, where INT8 halves the weight traffic. INT8 curves are not monotonic: for several shapes oneDNN's throughput dips between M=64 and M=256 (variation between samples is flagged in the validation report) before recovering, which looks like a switch between kernel implementations rather than noise. The "fraction of tile peak" is the realistic compute ceiling for matrix multiplication; the raw tile peak is an upper bound no library reaches.
"""),
]

# --------------------------------------------------------------------------- 05
NOTEBOOKS["05_roofline_atlas"] = [
    md("""
# 05 — Roofline atlas

**Question.** Where do the measured compute and bandwidth ceilings meet for each precision and memory configuration, and where do achieved kernels sit relative to them?

Line style tells the origin of a ceiling: **dashed** = theoretical (vendor or derived), **solid** = best measured by a dedicated kernel, **dotted** = what a library kernel (oneDNN GEMM) achieved. Memory slopes use the best sustained of Triad, non-temporal Triad and read-only (ERT convention). Bytes are modeled, so these are empirical envelopes, not counter-based bounds.
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
The table gives the **ridge** (operations per byte) at which each path stops being memory-bound. Higher-throughput paths need proportionally more reuse: AMX INT8 needs about 400 operations per byte on HBM.

## 2. Cache mode, one socket
"""),
    code("""
resident = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', resident_gib=16)
spilled_rows = report.bandwidth_summary(ext, thesis)
spilled_rows = spilled_rows[(spilled_rows.memory_mode == 'cache') & (spilled_rows.socket_scope == 'single') & (spilled_rows.socket == 0) & (spilled_rows.working_set_gib == 96)]
best96 = spilled_rows.loc[spilled_rows.gbs.idxmax()]
spilled = roofline.MemoryCeiling('measured_peak', 'effective_cache (96 GiB)', best96.kernel, float(best96.gbs), '1S', 'cache', 96.0, best96.campaign_id)
fig = plotting.roofline_figure(theory_set(['amx_bf16', 'amx_int8'], '1S', 56) + compute_set('cache', '1S', 56), [resident, spilled],
                               title='Cache · one socket · data resident in HBM (16 GiB) and spilled to DDR (96 GiB)')
figure(fig, 'atlas_cache_1s')
table(pd.DataFrame([dict(case=c.tier, kernel=c.kernel, GBs=c.gbs, working_set_gib=c.working_set_gib) for c in (resident, spilled)]))
"""),
    md("""
**Implication.** Cache mode behaves like Flat HBM only while the working set stays inside the 64 GiB memory-side cache. Past it the slope falls to the 96 GiB line — lower than Flat DDR — and every ridge moves right by the same factor.

## 3. Flat mode, both sockets
"""),
    code("""
mem2 = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', '2S'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', '2S')]
fig = plotting.roofline_figure(theory_set(['fp64', 'amx_bf16', 'amx_int8'], '2S', 56) + compute_set('flat', '2S', 56), mem2,
                               title='Flat · both sockets (two timed processes) · measured and vendor ceilings')
figure(fig, 'atlas_flat_2s')
"""),
    md("""
Both ceilings double, so ridge points are unchanged: adding the second socket raises the roof without changing the intensity needed to reach it.

## 4. Achieved points: FP64 sweep
"""),
    code("""
flat_hbm, flat_ddr = mem
fp64 = [report.compute_ceiling(ext, 'fp64', 'flat', 56)]
pts = report.fp64_sweep_points(thesis, 'flat', 'hbm') + report.fp64_sweep_points(thesis, 'flat', 'ddr')
fig = plotting.roofline_figure(fp64 + theory_set(['fp64'], '1S', 56), mem, pts, title='FP64 intensity sweep · Flat · one socket', x_range=(0.05, 256))
figure(fig, 'atlas_fp64_sweep')
hb = [p for p in pts if p.memory_target == 'hbm']
say(f"**Result.** The sweep follows the HBM slope up to its knee and reaches {max(p.gops for p in hb)/1000:.2f} TOP/s at {max(p.intensity for p in hb):.0f} FLOP/byte, "
    f"{max(p.gops for p in hb)/fp64[0].gops:.0%} of the measured FP64 peak.")
"""),
    md("""
## 5. Achieved points: BF16 and INT8 GEMM

Each point is one (shape, M) pair. Intensity rises with M because the same weights are reused for more tokens; the point leaves the memory slope when the GEMM becomes compute-limited.
"""),
    code("""
gm = report.gemm_points(ext)
for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
    sel = gm[(gm.memory_mode == 'flat') & (gm.dtype == dtype)]
    pts = report.gemm_workload_points(sel, theory)
    cs = [report.compute_ceiling(ext, path, 'flat', 56), report.theoretical_ceiling(theory, path, 56)]
    if dtype == 'bf16':
        cs.append(report.compute_ceiling(ext, 'avx512_bf16', 'flat', 56))
    else:
        cs.append(report.compute_ceiling(ext, 'vnni_int8', 'flat', 56))
    fig = plotting.roofline_figure(cs, mem, pts, title=f'{dtype.upper()} GEMM M-sweep at Llama-3.1-8B shapes · Flat · one socket')
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
**Gap analysis.** Two layers separate the vendor number from library performance: (1) the vendor peak versus what a hand-written tile kernel sustains (clock and power, a few percent); (2) the tile-kernel peak versus an optimized library GEMM (the achieved-over-measured column).
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
