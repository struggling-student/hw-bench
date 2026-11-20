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
# 00 — Xeon Max 9480 hardware characterization

This is the chapter's evidence summary. The [research summary](../docs/FINAL_RESEARCH_SUMMARY.md) links the claims, figure captions, and open questions. Notebooks 01–07 give the methods, full sweeps, controls, and archival context.

The measured CRESCO8 hosts expose two sockets of 56 physical cores with SMT disabled. Each socket has 64 GiB of HBM2e, eight DDR5 channels, 48 KiB L1D and 2 MiB L2 per core, and 112.5 MiB shared L3. Flat mode exposes local DDR and HBM as distinct NUMA targets. Cache mode exposes DDR-backed memory with HBM as a direct-mapped, write-back memory-side cache. HBM-only and SNC4 were not measured here. See [platform and methods](01_platform_and_methodology.ipynb).

Use decimal GB/s and binary GiB. The routine samples are timed windows within a launch. Campaign repeats assess between-launch variability separately. Flat scaling uses useful kernel bytes. Counter-based results estimate traffic from complete perf intervals inside each timed window. The modes use different hosts and Cache performance can vary substantially across launches.
"""),
    code(setup("00_master_analysis") + """
unc = report.load_uncore()
exports = ROOT / 'data/processed/thesis'
exports.mkdir(parents=True, exist_ok=True)
"""),
    md("""
## Local bandwidth and latency

The 8 GiB read sweep shows how many physical cores serve a local stream. Figure 1 reports useful bandwidth and effective core frequency. Table 1 gives the controller references for the Flat Rooflines, the useful read and Triad baselines, and the one-core dependent-load latency with and without 55 streaming peers. Cache rows are controller-derived lookup rates at specified working sets. The Cache hit rates apply to read-only at those sizes.
"""),
    code("""
read = report.read_scaling(ext)
read = read[read.socket.eq(0) & read.config.str.startswith('flat')]
clock = report.read_scaling_clock(ext)
clock = clock[clock.config.str.startswith('flat')]
figure(plotting.memory_scaling_figure(read, clock), 'memory_scaling')

mem = {tier: report.measured_memory_ceiling(unc, 'flat', tier, bytes_source='uncore_cas') for tier in ('hbm', 'ddr')}
cache_ref, _ = report.cache_roofline_evidence(unc)
cache_curve = report.cache_capacity_table(unc)
loaded = report.loaded_latency(ext).query('stream_cores == 55').set_index('config')
rows = []
for tier, reference in mem.items():
    streams = {access: report.memory_ceiling(ext, thesis, 'flat', tier, access=access)
               for access in ('read', 'readwrite')}
    lat = loaded.loc[f'flat_{tier}']
    rows.append(dict(configuration=f'Flat {tier.upper()}', pool_gib=8, reference_kernel=reference.kernel,
                     counted_gbs=reference.gbs, useful_read_gbs=streams['read'].gbs, useful_triad_gbs=streams['readwrite'].gbs,
                     idle_ns=lat.idle_ns, loaded_ns=lat.loaded_ns, hit_percent=np.nan,
                     counted_campaign=reference.source_campaign, useful_read_campaign=streams['read'].source_campaign,
                     useful_triad_campaign=streams['readwrite'].source_campaign, latency_campaign=lat.campaign_id))
for ref in cache_ref:
    hit = cache_curve.loc[cache_curve.working_set_gib.eq(ref.working_set_gib) & cache_curve.kernel.eq('read'), 'hit_rate'].iloc[0]
    rows.append(dict(configuration='Cache', pool_gib=ref.working_set_gib, reference_kernel=ref.kernel,
                     counted_gbs=ref.gbs, hit_percent=100 * hit, counted_campaign=ref.source_campaign))
memory = pd.DataFrame(rows)
memory.to_csv(exports / 'principal_memory.csv', index=False)
table(memory.drop(columns=[c for c in memory if c.endswith('_campaign')]), 1)
say_claims(claims.core_scaling(ext, thesis, ROOT), ['ddr_saturates', 'hbm_still_scaling'])
say_claims(claims.latency(ext, theory, ROOT), ['loaded_latency'])
"""),
    md("""
## Package power and data pattern

Figure 2 reports power and clocks for the counted Flat streams. Around 350 W, the power-control unit reports frequency clipping. The 56-core HBM read operates around 1.54 GHz uncore, down from 2.50 GHz at 14 cores. The faster initial HBM window and pattern controls track uncore frequency, while the same DDR controls show little bandwidth response. E7c adds a complementary result at fewer cores, where a faster uncore accompanies lower HBM throughput.

Intel's series specification says “Up to 1TB/s BW.” The published STREAM benchmark, the sustained kernel medians, and controller throughput describe separate quantities. [STREAMGAP](../docs/STREAMGAP.md) records the experiments and their limitations.
"""),
    code("""
figure(plotting.power_clock_figure(report.power_table(unc[unc.memory_mode.eq('flat')])), 'power_and_clocks')
dp = report.data_pattern_counters(ctx.policy['data_pattern_campaign'])
say_claims(claims.data_pattern_claims(dp))
say_claims(claims.uncore_streams(unc[unc.memory_mode.eq('flat')], theory, ext), ['energy_per_byte'])
"""),
    md("""
## Cache capacity and NUMA placement

Figure 3 uses the base controller events from the same Cache-mode launch. Effective lookup traffic and DDR fills share the left axis. The hit fraction uses one minus DDR fill bytes divided by upstream lookup bytes. The dashed line marks the nominal 64 GiB per socket. The older 56 GiB launch is retained in notebook 06, where its substantially higher rate qualifies any prediction based on capacity alone.
"""),
    code("""
figure(plotting.cache_capacity_counters_figure(cache_curve, diagnostics=False), 'cache_capacity')
"""),
    md("""
Figure 4 compares local with remote placement and first-touch with interleaving. The diamond is the sum of isolated sockets. Notebook 03 gives the simultaneous two-process test. Notebook 07 independently confirms the read-only placement result under exclusive Slurm.
"""),
    code("""
figure(plotting.placement_figure(report.local_remote_table(ext, thesis), report.span_reference(ext, thesis)), 'placement')
say_claims(claims.sockets(ext, thesis), ['dual_efficiency'])
"""),
    md("""
## Compute throughput

Table 2 gives the native register/tile microbenchmarks at 56 cores on Flat socket 0. The base-clock rates are derived at 1.9 GHz. The effective-clock efficiencies use the clock measured for each kernel. One multiply and one add count as two operations, with floating-point and integer throughput stated separately.
"""),
    code("""
peaks = report.isa_peaks(ext, theory)
native = peaks[peaks.memory_mode.eq('flat') & peaks.scope.eq('1S') & peaks.cores.eq(56) & peaks.socket.eq(0)]
compute = native[['path', 'dtype', 'theory_ops_per_cycle', 'ghz_effective', 'gops',
                  'efficiency_at_clock', 'campaign_id']].copy()
compute['tops'] = compute.pop('gops') / 1000
compute['base_tops'] = [theory.peak_gops(path, 56) / 1000 for path in compute.path]
compute.to_csv(exports / 'principal_compute.csv', index=False)
table(compute.drop(columns='campaign_id'), 3)
say_claims(claims.compute_paths(ext, theory), ['avx512_bf16_bound', 'clocks', 'amx_busy'])
"""),
    md("""
## BF16 and INT8 Rooflines

Figures 5 and 6 plot the socket-0 14336×4096 projection at M = 1–4096 from the counted converged sweep, with plain BF16 and prepacked INT8 weights. The measured AMX tile rates and counted read rates define empirical references, `P(I) = min(P_tile, B × I)`, with ridges at `P_tile / B`. A ridge identifies which term is smaller in the model. Kernel dispatch, packing, activation traffic, and effective clock can affect the achieved rate. The [atlas](05_roofline_atlas.ipynb) preserves alternative shapes, prepacked BF16 evidence, modeled twins, Cache working sets, and reference exceedances.
"""),
    code("""
gemm = report.counted_gemm_frame(unc, labels=('u_gemm_conv',), shape='14336x4096')
gemm = gemm[gemm.memory_mode.eq('flat') & gemm.bytes_source.eq('uncore_cas')]
cases = [('bf16', 'plain', 'amx_bf16', 'TFLOP/s'), ('int8', 'prepacked', 'amx_int8', 'T integer op/s')]
selected, audits = [], []
for dtype, layout, path, unit in cases:
    part = gemm[gemm.dtype.eq(dtype) & gemm.layout.eq(layout)].copy()
    ceiling = report.compute_ceiling(ext, path, 'flat', 56)
    points = report.measured_workload_points(part, twins=False, series=lambda r: 'oneDNN projection')
    for p in points:
        p.provenance['label'] = p.provenance['label'] if p.memory_target == 'hbm' and p.provenance['label'] in (
            'M=1', 'M=16', 'M=256', 'M=4096') else ''
    fig = plotting.roofline_figure([ceiling], list(mem.values()), points,
                                   title=f'{dtype.upper()} projection · {layout} weights · Flat, one socket',
                                   x_range=(0.5, 1600), point_labels=True, height=540,
                                   x_title='Operations per byte at the memory controllers', y_title=unit)
    fig.update_yaxes(range=[-1, 2.55])
    figure(fig, f'roofline_{dtype}')
    audit = roofline.audit_points(points, list(mem.values()), [ceiling])
    assert audit.ceiling_campaign.notna().all()
    audits.append(audit.assign(precision=dtype))
    part['read_reference_gbs'] = part.memory_target.map({tier: ref.gbs for tier, ref in mem.items()})
    part['ridge_op_per_byte'] = ceiling.gops / part.read_reference_gbs
    part['tile_fraction'] = part.gops / ceiling.gops
    part['tops'] = part.gops / 1000
    part['pj_per_op_node'] = part.j_per_op_node * 1e12
    selected.append(part)
audit = pd.concat(audits)
say('Reference audit: ' + ', '.join(f'{dtype.upper()} {part.above_reference.sum()} of {len(part)} above the reference'
                                    for dtype, part in audit.groupby('precision')) + '.')
"""),
    md("""
**Table 3.** Projection results for M = 1, 256 and 4096. Throughput is useful matrix operations per second. Intensity uses matched-window controller bytes. RAPL energy per operation covers both sockets and includes the idle floor. The CSV includes every measured batch and its source campaign.
"""),
    code("""
cols = ['dtype', 'layout', 'memory_target', 'm', 'tops', 'measured_gbs', 'intensity', 'intensity_modeled',
        'read_reference_gbs', 'ridge_op_per_byte', 'tile_fraction', 'pj_per_op_node', 'bytes_source', 'campaign_id']
result = pd.concat(selected)[cols]
result.to_csv(exports / 'principal_gemm.csv', index=False)
table(result[result.m.isin([1, 256, 4096])].drop(columns=['campaign_id', 'bytes_source']), 2)
rates = result.pivot(index=['dtype', 'm'], columns='memory_target', values='tops')
ratios = (rates.hbm / rates.ddr).unstack('dtype')
say(f"HBM/DDR projection throughput at M=1 is {ratios.loc[1, 'bf16']:.2f}× in BF16 and {ratios.loc[1, 'int8']:.2f}× in INT8. "
    f"At M=4096 it is {ratios.loc[4096, 'bf16']:.2f}× and {ratios.loc[4096, 'int8']:.3f}×, respectively.")
say_claims(claims.measured_intensity(unc))
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
**Platform caveats.** Four settings of the execution nodes shape what the numbers mean. They were read from every campaign's platform record and are identical in all of them.
"""),
    code("""
say_claims(claims.platform_caveats(ext, ROOT))
"""),
    md("""
**Comparison with published results.** The same CPU has one close published single-socket measurement (McCalpin, IXPUG at ISC 2023: Flat mode, one NUMA node per socket, 56 cores) and one two-socket measurement in a different configuration (Reguly, arXiv 2023: HBM-only mode, SNC4). Published values are read off the sources listed in `configs/literature.toml`; the values of this study are the socket-0 medians at 8 GiB. A ratio above 1 means this study measured more. The unmodified STREAM reaches the published Triad rate on CRESCO8, and the controls in `docs/STREAMGAP.md` show sensitivity to loop, input pattern, and timing convention.
"""),
    code("""
table(report.literature_table(ext, thesis).drop(columns=['same_mode']), 2)
table(report.literature_sources()[['key', 'citation', 'setup']])
say_claims(claims.literature(ext, thesis))
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

A sample is used only if the benchmark's own checksum validated, the process ran on the expected host with the expected topology, its clock window lies inside the process window, the disassembly of the compiled benchmark has the intended instruction in an innermost loop with as many copies as the kernel has chains or tiles (`hwbench.disasm`: loops are recovered from backward branches in the retained `objdump`; it shows the loop exists and what it holds, not that the timed call reaches it), GEMMs show an AMX execution in oneDNN's verbose log, and no foreign Slurm job was seen. Each configuration needs five steady samples; variation above 5% is flagged, not hidden.
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
# Bandwidth is split by tier and by 56 cores against fewer: the HBM transient only shows at 56 cores.
fw['tier'] = np.where(fw.family.eq('bandwidth'), fw.memory_target.fillna(''), '')
fw['cores'] = np.where(fw.family.eq('bandwidth'), np.where(fw.threads.eq(56), '56', 'fewer'), '')
view = fw.groupby(['memory_mode', 'family', 'tier', 'cores', 'pool']).agg(configurations=('ratio', 'size'), median_ratio=('ratio', 'median'),
        lowest_ratio=('ratio', 'min'), highest_ratio=('ratio', 'max'), below_90_percent=('ratio', lambda r: (r < 0.9).mean()),
        above_103_percent=('ratio', lambda r: (r > 1.03).mean()), median_shift=('median_shift', lambda r: r.abs().max())).reset_index()
table(view[(view.configurations > 0)], 3)
say_claims(claims.repeatability(ext, thesis), ['cold_first_window', 'hbm_first_window'])
"""),
    md("""
## 4. Repeat run against the October values

Flat repeats run over SSH on the same node; Cache repeats run on a second node. The acceptance threshold is 2%. Whether a Cache deviation is a property of the node is tested below against the spread between campaigns on one node.
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
table(report.repeat_ranges(ext).rename(columns={'min': 'lowest launch', 'max': 'highest launch', 'mean': 'mean of launches'}), 3)
say_claims(claims.xcheck(ext, thesis), ['repeat_runs', 'repeat_launches'])
"""),
    md("""
**Between campaigns.** Every selected campaign that measured a headline configuration (socket 0, 56 cores, 8 GiB, and 96 GiB in Cache mode) gives an independent launch on another day. *Same node* is the mode's reference node (hbm14 for Flat, hbm01 for Cache):
"""),
    code("""
cs = report.campaign_spread(ext, thesis)
table(cs[['memory_mode', 'quantity', 'working_set_gib', 'campaigns', 'same_node_campaigns', 'same_node_low', 'same_node_high', 'same_node_percent', 'all_nodes_percent', 'nodes']], 2)
say_claims(claims.xcheck(ext, thesis), ['campaign_spread'])
"""),
    md("""
**What the Cache spread is.** On 2026-10-31 the Cache capacity points were repeated four times in two hours on hbm13 with the privileged counters on the memory-side cache (parts `ucacherep` ×3 and `ucapacity`, notebook 06 section 10). The hit rate repeats to about 2 points and the rate to a few percent within the day, while the launch of 2026-10-20 ran 3.5× faster at 56 GiB: the older launch has no equivalent hit counters. Physical-page conflicts are a plausible explanation for the change.
"""),
    code("""
ucache1 = report.load_uncore(mode='cache')
launch = report.cache_launch_spread(ucache1)
if len(launch):
    table(launch.pivot_table(index=['kernel', 'gib'], columns='campaign_id', values=['gbs', 'hit_rate']).round(3).reset_index(), 3)
    say_claims(claims.cache_counters(report.load_uncore(mode='flat'), ucache1, flat_far=report.flat_latency_far(ext)), ['cache_launch_spread'])
"""),
    md("""
**Descriptive uncertainty for the headline references.** *Spread* is half the one-run min–max range relative to the median. *Sustained* is the median without the first window. *Repeat*, *between* and *cross-run* are the three ranges above (*campaigns* counts those behind *between*). *Total* adds the spread to the largest of the three. It is a descriptive margin rather than a statistical interval.
"""),
    code("""
t1 = report.headline_table(ext, thesis, theory)
table(t1[['quantity', 'unit', 'median', 'sustained', 'spread', 'repeat', 'between', 'campaigns', 'cross_run', 'basis', 'total']]
      .rename(columns={'spread': 'spread %', 'repeat': 'repeat %', 'between': 'between %', 'cross_run': 'cross-run %', 'total': 'total %'}), 2)
"""),
    md("""
The same launches as a figure: each dot is the median of one launch relative to the mean of the three, the line joins the lowest and the highest, and the band is the 2% acceptance threshold used for the cross-check above. A row is one quantity in one memory mode; the three launches of each ran on one node.
"""),
    code("""
fig = plotting.repeat_runs_figure(report.repeat_launches(ext))
figure(fig, 'repeat_runs')
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

**Conditions.** One core chasing a random cycle of 64-byte nodes (seed 7); transparent huge pages are enabled system-wide, so translation stays cheap: the Flat DDR chase rises by about 15 ns from 1 to 128 GiB (claim `latency_translation` below). Results describe idle latency, not loaded latency.
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
The Cache-mode latency beyond the HBM cache was measured by chasing a cycle of 16 to 128 GiB (a one-core pointer chase; building and walking the 128 GiB cycle takes minutes). The same chase on Flat DDR (16 to 128 GiB) and Flat HBM (16 to 48 GiB, its capacity is 64 GiB) is the control: whatever it still shows is address translation, and what Cache mode adds on top is the memory-side cache.
"""),
    code("""
far = report.cache_latency_far(ext)
near = lat[(lat.config == 'cache') & (lat.per_thread_bytes == 4 * 2**30)]
cache_lat = pd.concat([pd.DataFrame({'working_set_gib': [4.0], 'latency_ns': [float(near.latency_ns.iloc[0])]}), far[['working_set_gib', 'latency_ns']]], ignore_index=True)
mem_lat = latency.pivot(index='level', columns='config', values='latency_ns').loc['memory']
flat_far = report.flat_latency_far(ext)
fig = plotting.cache_latency_figure(cache_lat, {'DDR': float(mem_lat['flat_ddr']), 'HBM': float(mem_lat['flat_hbm'])}, flat_far)
figure(fig, 'cache_latency_far')
table(far.merge(flat_far[flat_far.config == 'flat_ddr'][['working_set_gib', 'latency_ns']].rename(columns={'latency_ns': 'flat_ddr_ns'}), on='working_set_gib', how='left').assign(cache_minus_flat_ddr_ns=lambda f: f.latency_ns - f.flat_ddr_ns), 1)
table(flat_far, 1)
say_claims(claims.latency(ext, theory, ROOT), ['latency_order', 'cache_latency_far', 'latency_translation'])
"""),
    md("""
**The miss rate behind the far latency (counted).** The same chase, repeated on 2026-10-31 with the privileged counters on the memory-side cache (part `ucachelat`, notebook 06 section 10): the hit rate of its own lookups falls from 84% at 16 GiB to 11% at 128 GiB, and the latency is a straight line of the miss rate.
"""),
    code("""
ucache = report.load_uncore(mode='cache')
latc = report.cache_latency_counted(ucache)
if len(latc):
    table(latc[['gib', 'latency_ns', 'hit_rate', 'raw_hit_rate', 'served_gbs', 'n_samples']], 3)
    say_claims(claims.cache_latency_claims(latc, flat_far), None)
"""),
    md("""
**Latency under load.** One core chases a 1 GiB cycle while the other cores of the socket stream the same tier (read-only, 8 GiB), in one synchronized window; the chase alone, in the same launch, is the idle level. This is the load-latency curve of each tier: where the streaming cores approach the bandwidth ceiling, a dependent load waits in the queues.
"""),
    code("""
ll = report.loaded_latency(ext)
fig = plotting.loaded_latency_figure(ll)
figure(fig, 'loaded_latency')
table(ll.drop(columns=['campaign_id']), 2)
say_claims(claims.latency(ext, theory, ROOT), ['loaded_latency'])
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
say_claims(claims.counters(ROOT), ['counters_unprivileged', 'write_allocate_counted'])
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
gm_all = report.gemm_points(ext)
gemv = gm_all[(gm_all.memory_mode == 'cache') & (gm_all['shape'] == '14336x4096') & (gm_all.m == 1)]
fig = plotting.cache_capacity_figure(cap, flat_ref, {'16 GiB: 8B BF16 model': 16, '64 GiB: HBM capacity': 64}, gemv)
figure(fig, 'cache_capacity')
table(cap.pivot_table(index='working_set_gib', columns='kernel', values='gbs').reset_index())
"""),
    code("""
say_claims(claims.cache_mode(ext, thesis))
"""),
    md("""
**The hit rate behind the curve (counted).** The decline before the capacity is the hit rate of the memory-side cache, now counted (part `ucapacity` and its repeats, privileged counters on the Cache node, 2026-10-31; the figure and tables are in notebook 06, section 10): it falls from 92% at 8 GiB to 45% at the capacity and 12% at 128 GiB, the same for every kernel, and the rate follows it.
"""),
    code("""
ucache = report.load_uncore(mode='cache')
ccap = report.cache_capacity_table(ucache)
if len(ccap):
    table(ccap.pivot_table(index='working_set_gib', columns='kernel', values=['hit_rate', 'far_gbs']).round(3).reset_index(), 3)
    say_claims(claims.cache_counters(report.load_uncore(mode='flat'), ucache, flat_far=report.flat_latency_far(ext)), ['cache_hit_rate_curve', 'cache_launch_spread'])
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
    md("""
## 7. Counted against modeled traffic

Every record of the follow-up campaigns carries the cores' own DRAM line counts (offcore-response events, 64 bytes per line, reads and writes). The points below compare them with the kernels' modeled bytes: 1 means the traffic model describes what the cores moved. The events cannot tell DDR from HBM (the NUMA binding does) and see only the measured cores' traffic.
"""),
    code("""
sub = ext[ext.notes.isin(['counted', 'counted_sweep', 'counted_gemm'])]
ct = report.counted_table(sub)
short = {'stream_read': 'read', 'stream_triad': 'Triad', 'stream_triad_nt': 'NT Triad'}
tiers = {'flat_ddr': 'Flat DDR', 'flat_hbm': 'Flat HBM', 'cache': 'Cache'}
ct['config'] = [plotting.config_key(m, t) for m, t in zip(ct.memory_mode, ct.memory_target)]
def name(r):
    gib = f' {r.working_set_bytes / 2**30:.0f} GiB' if r.config == 'cache' and r.benchmark != 'onednn_gemm_sweep' else (' 16 GiB pool' if r.config == 'cache' else '')
    if r.benchmark == 'roofline_sweep':
        what = f'FP64 sweep K={int(r.k)}'
    elif r.benchmark == 'onednn_gemm_sweep':
        what = f"{r['dtype'].upper()} GEMM 14336×4096 M={int(r.m)}"
    else:
        what = short[r.benchmark]
    return f'{tiers[r.config]} · {what}{gib}'
ct['label'] = ct.apply(name, axis=1)
order = {'read': 0, 'Triad': 1, 'NT Triad': 2}
ct['sort'] = [(0 if r.benchmark.startswith('stream') else 1 if r.benchmark == 'roofline_sweep' else 2, r.config, r.working_set_bytes, r.dtype if isinstance(r.dtype, str) else '', r.m if r.m == r.m else 0, r.k if r.k == r.k else 0) for r in ct.itertuples()]
ct = ct.sort_values('sort').drop(columns='sort')
fig = plotting.counted_ratio_figure(ct)
figure(fig, 'counted_vs_modeled')
table(ct[['label', 'modeled_bytes', 'counted_bytes', 'counted_over_modeled', 'read_share', 'intensity_modeled', 'intensity_counted']].assign(modeled_GB=lambda f: f.modeled_bytes / 1e9, counted_GB=lambda f: f.counted_bytes / 1e9)[['label', 'modeled_GB', 'counted_GB', 'counted_over_modeled', 'read_share', 'intensity_modeled', 'intensity_counted']], 3)
say_claims(claims.counted(ext, thesis), ['counted_streams', 'counted_gemm_weights', 'counted_gemm_prefill'])
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

**Conditions.** Flat mode, 56 cores of one socket, 8 GiB, memory bound to the local or the other socket's tier. Read-only and non-temporal Triad show how the penalty depends on traffic direction. Where the remote repeat (5 s windows, a local control beside every remote point) measured a pair, it replaces the first campaign; the *source* column says which.
"""),
    code("""
lr = report.local_remote_table(ext, thesis)
table(lr[['label', 'local', 'remote', 'remote_over_local', 'local_spread', 'remote_spread', 'source']].rename(columns={'local_spread': 'local, |socket 1 − 0|', 'remote_spread': 'remote, |socket 1 − 0|'}), 2)
"""),
    code("""
say_claims(claims.placement(ext, thesis))
"""),
    md("""
The first campaign measured remote bandwidth only at 56 threads. A separate repeat (5 s windows, a local control beside every remote point) sweeps the thread count:
"""),
    code("""
rt = report.remote_repeat_table(ext)
fig = plotting.remote_threads_figure(rt)
figure(fig, 'remote_hbm_threads')
table(rt[rt.socket == 0][['kernel', 'memory_target', 'threads', 'gbs_local', 'gbs_remote', 'cv_remote', 'remote_over_local']], 2)
"""),
    md("""
Bind memory and CPUs to the same socket for bandwidth-bound work.

**The serving socket.** The privileged counters of notebook 06 also give the package power, uncore clock and power-limit cycles of the socket whose memory is read (*serving*), beside those of the socket that computes. Local reads have both on socket 0; for remote reads the computing socket is 0 and the serving socket is 1.
"""),
    code("""
unc_flat = report.load_uncore(mode='flat')
rc = report.remote_counter_table(unc_flat)
table(rc[rc.kernel.isin(['read', 'triad_nt']) & rc.threads.isin([14, 56])][['memory_target', 'kernel', 'threads', 'placement', 'gbs', 'ctrl_over_modeled',
      'pkg_w', 'uncore_ghz', 'power_limited', 'serving_pkg_w', 'serving_uncore_ghz', 'serving_power_limited']], 2)
say_claims(claims.uncore_remote(unc_flat), ['remote_duplicate_reads'])
"""),
    md("""
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
**Power and energy of two sockets at once.** Part `udual` (both nodes, 2026-10-31) repeats seven of these pairs in 10 s windows with the privileged counters beside participant 0 (the session counts both sockets), and the same work on socket 0 alone from the same launch: Flat and Cache reads, the decode GEMM (14336×4096, M = 1, BF16 and INT8, converged pools) and the AMX BF16 peak. *Node* is RAPL package plus DRAM of both sockets; *wall* is the BMC's input power over the record (whole watts, one to seven listings). The energy per token assumes both sockets serve independent streams.
"""),
    code("""
unc_flat3, unc_cache3 = report.load_uncore(mode='flat'), report.load_uncore(mode='cache')
dual = pd.concat([report.dual_energy(f, theory) for f in (unc_flat3, unc_cache3) if len(f)], ignore_index=True)
table(dual[['memory_mode', 'case', 'unit', 'rate_single', 'rate_dual', 'scaling', 'node_w_single', 'node_w_dual', 'node_power_ratio', 'wall_w_single', 'wall_w_dual',
            'per_watt_gain_node', 'per_watt_gain_wall']], 3)
table(dual[dual.kind.eq('decode GEMM')][['memory_mode', 'case', 'tokens_single', 'tokens_dual', 'j_per_token_socket_single', 'j_per_token_node_single', 'j_per_token_node_dual',
      'j_per_token_wall_single', 'j_per_token_wall_dual', 'j_per_token_node_dyn_single', 'j_per_token_node_dyn_dual']], 2)
say_claims(claims.dual_energy(unc_flat3, unc_cache3, theory), None)
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
table(ref, 1)
"""),
    code("""
say_claims(claims.span(ext, thesis))
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
i = one.set_index('path')
say(f"**Result.** AMX BF16 reaches {i.loc['amx_bf16','ops_per_cycle_per_core']:.0f} of 1024 operations per cycle ({i.loc['amx_bf16','efficiency_at_clock']:.1%}), "
    f"AMX INT8 {i.loc['amx_int8','ops_per_cycle_per_core']:.0f} of 2048, VNNI {i.loc['vnni_int8','ops_per_cycle_per_core']:.0f} of 256, FP32/FP64 {i.loc['fp32','ops_per_cycle_per_core']:.0f}/{i.loc['fp64','ops_per_cycle_per_core']:.0f} of 64/32. "
    f"The AVX-512 BF16 dot product reaches {i.loc['avx512_bf16','ops_per_cycle_per_core']:.0f} of {i.loc['avx512_bf16','theory_ops_per_cycle']:.0f} "
    f"({i.loc['avx512_bf16','efficiency_at_clock']:.0%}), so it is not a faster path than FP32 FMA ({i.loc['fp32','gops']/1000:.1f} versus {i.loc['avx512_bf16','gops']/1000:.1f} TOP/s).")
say_claims(claims.compute_paths(ext, theory), ['avx512_bf16_bound'])
"""),
    md("""
The bound was confirmed by varying the number of independent accumulator chains of the `vdpbf16ps` kernel:
"""),
    code("""
table(report.chain_sweep(ext), 2)
say_claims(claims.compute_paths(ext, theory), ['avx512_bf16_chains'])
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
big = gm[(gm.memory_target == 'hbm') & (gm.m == 4096)].groupby('dtype').gops.max()
head = report.headline_gemm_points(ext)
one = head[(head.memory_target == 'hbm') & (head.m == 1)].set_index('dtype')
say(f"**Result.** At M=4096 oneDNN reaches {big['bf16']/1000:.1f} TOP/s BF16 ({big['bf16']/tile['bf16']:.0%} of the tile peak) and {big['int8']/1000:.1f} TOP/s INT8 ({big['int8']/tile['int8']:.0%}). "
    f"At M=1 on 14336×4096 with a converged pool it delivers {one.loc['bf16', 'gops']/1000:.2f} and {one.loc['int8', 'gops']/1000:.2f} TOP/s: weight streaming at "
    f"{one.loc['bf16', 'gbs']:.0f} (BF16) and {one.loc['int8', 'gbs']:.0f} GB/s (INT8). The first-sweep rates quoted here come from a pool that was too small at M ≤ 32 "
    "(section 5); its small-M rates overstate the weight traffic.")
"""),
    code("""
say_claims(claims.gemm(ext, thesis, theory, ROOT))
"""),
    md("""
The "fraction of tile peak" is the library-achievable compute ceiling for these calls (framework and library overhead included); the raw tile peak is an upper bound no library call reaches. Section 5 separates those causes.

## 5. Is the GEMM measuring memory? Pool size, call overhead and weight layout

Three follow-up runs test the confounds of the first sweep: the weight pool (4×, 16× and 64× the 225 MiB the chip can hold), the cost of a call on tiny matrices, and BF16 with the weights prepacked once, as INT8 always is. Hollow markers are the modeled bytes, filled markers the bytes the cores' counters saw.
"""),
    code("""
pool = report.gemm_pool_table(ext)
fig = plotting.gemm_pool_figure(pool[(pool['shape'] == '14336x4096') & (pool.m == 1)])
figure(fig, 'gemm_pool_convergence')
table(pool[pool.m == 1][['memory_target', 'dtype', 'shape', 'pool_x', 'modeled_gbs', 'counted_gbs', 'cv_percent']], 1)
"""),
    code("""
table(report.gemm_overhead_table(ext), 1)
"""),
    code("""
pk = report.gemm_prepacked_table(ext)
fig = plotting.gemm_prepacked_figure(pk)
figure(fig, 'gemm_prepacked')
table(pk, 2)
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_pool_convergence', 'gemm_asymmetry', 'gemv_prepacked_bandwidth', 'gemm_call_floor'])
"""),
    md("""
**The converged M-sweep.** The headline projection repeated from M = 1 to 256 with a pool of 16× the on-chip capacity, for plain BF16, prepacked BF16 and INT8, with the cores' DRAM counters on. It replaces the first sweep wherever that sweep's pool was too small. Convergence is judged in counted bytes against the 64× pool; the counters also show the share of the weights a 16× pool still serves on chip.
"""),
    code("""
cs = report.converged_sweep(ext)
cs['of_read_ceiling'] = cs.gbs / cs.memory_target.map({t: report.memory_ceiling(ext, thesis, 'flat', t, access='read').gbs for t in ('hbm', 'ddr')})
table(cs[['memory_target', 'dtype', 'layout', 'm', 'gops', 'gbs', 'counted_gbs', 'of_read_ceiling', 'cv_percent']], 2)
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_converged_sweep'])
"""),
    md("""
At decode batch sizes the fixed cost of a call dominates small matrices but explains only a small part of the gap between the large projection and the HBM read ceiling; most of that gap is inside the library's GEMV, and it is specific to HBM (claim `gemm_call_floor`). The pool and the weight layout, not the memory system, set most of the earlier gap between the 4096² and 14336×4096 shapes and between BF16 and INT8. The 4096² shape and the first sweep's modeled bandwidths should not be read as HBM or DDR bandwidth.
"""),
]

# --------------------------------------------------------------------------- 05
NOTEBOOKS["05_roofline_atlas"] = [
    md("""
# 05 — Roofline atlas

**Question.** Where do the measured compute and bandwidth ceilings meet for each precision and memory configuration, and where do achieved kernels sit relative to them?

Derived compute references use the 1.9 GHz base clock. Solid compute lines describe dedicated kernels at their achieved clocks. Flat generic envelopes use the fastest tested stream. Flat projection references use a local read stream, while the FP64 intensity sweep uses the fastest tested copy stream as a one-read, one-write proxy. Cache has two references at explicit pool sizes. The counted points use matched-window CAS estimates, with hollow tensor-size twins for the Flat diagnostics. Section 6 lists exceedances and the corresponding campaign, traffic basis, and reference.
"""),
    code(setup("05_roofline_atlas") + "\nunc = report.load_uncore()\ncounted = report.counted_gemm_frame(unc)\ncsweep = report.counted_sweep_points(unc)\naudits = []\nMEASURED = dict(x_title='Operations per byte of measured memory traffic', open_label='hollow: the same point at modeled intensity')"),
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
                               title='Flat · one socket · ERT envelope (best kernel) and base-clock references (dashed)')
figure(fig, 'atlas_flat_1s')
table(pd.DataFrame([dict(memory=f'{m.tier} ({m.kernel})', GBs=m.gbs, **{p: roofline.ridge(c.gops, m.gbs) for p, c in zip(PATHS, compute_set('flat', '1S', 56))}) for m in mem]))
"""),
    md("""
The table gives the **ridge** (operations per byte) of the ERT envelope, at which each path stops being memory-bound. Higher-throughput paths need proportionally more reuse. The Flat projection figures in notebook 00 use the counted read references.
"""),
    code("""
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points'])
"""),
    md("""
## 2. Cache mode, one socket
"""),
    code("""
(resident, spilled), cache_gemm = report.cache_roofline_evidence(unc)
fig = plotting.roofline_figure(theory_set(['amx_bf16', 'amx_int8'], '1S', 56) + compute_set('cache', '1S', 56), [resident, spilled],
                               title='Cache · one socket · data resident in HBM (16 GiB) and spilled to DDR (96 GiB)')
figure(fig, 'atlas_cache_1s')
table(pd.DataFrame([dict(case=c.tier, kernel=c.kernel, GBs=c.gbs, working_set_gib=c.working_set_gib, bytes=c.note or 'modeled') for c in (resident, spilled)]))
"""),
    code("""
cache_compute = compute_set('cache', '1S', 56)[-2:]
cpts = report.measured_workload_points(cache_gemm, twins=False, series=lambda r: f"{r.dtype.upper()} · {r.pool_gib:.0f} GiB pool")
cache_audit = roofline.audit_points(cpts, [resident, spilled], cache_compute)
assert cache_audit.ceiling_campaign.notna().all(), 'Cache GEMMs require a matched working set and byte basis'
audits.append(cache_audit.assign(group='Cache GEMM · matched lookup bytes'))
fig = plotting.roofline_figure(cache_compute, [resident, spilled], cpts, x_range=(0.5, 4000), height=720,
                               title='Cache GEMM · one socket · 16 and 96 GiB pools',
                               x_title='Operations per byte of memory-side cache lookups')
fig.for_each_trace(lambda t: t.update(line_dash='dashdot') if t.name and '@96 GiB' in t.name else None)
figure(fig, 'atlas_gemm_cache')
table(cache_audit.groupby('ceiling_working_set_gib').agg(points=('point', 'size'),
      above_reference=('above_reference', 'sum'), max_ratio=('ratio', 'max')).reset_index())
"""),
    md("""
The 16 GiB read and 96 GiB Triad use the same day's base counters on the same Cache host as the GEMMs. The denominator counts upstream HBM lookups, including misses later filled from DDR. The 96 GiB read reaches about 97 GB/s and some spilled projections exceed it. The Triad supplies an empirical upper reference for these observed points with a different traffic mix.

### Every memory configuration on one plane

This comparison uses Flat native compute rates as common guides. The Flat read slopes use controller traffic, while Cache uses lookup traffic at 16 GiB for read and 96 GiB for Triad. The shaded operational-intensity ranges describe only the Flat HBM BF16 14336×4096 projection at M = 1–16 and M = 256–4096.
"""),
    code("""
measured_bands = len(counted) > 0 and len(report.measured_phase_regions(counted)) == 2
phases = report.measured_phase_regions(counted, pad=1) if measured_bands else report.llm_phase_regions(ext, pad=1)
configs = [report.ceiling_or_modeled(unc, ext, thesis, 'flat', 'hbm'), report.ceiling_or_modeled(unc, ext, thesis, 'flat', 'ddr'), resident, spilled]
peaks = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('fp64', 'fp32', 'vnni_int8', 'amx_bf16', 'amx_int8')]
fig = plotting.roofline_figure(peaks, configs, title='One socket · Flat native compute guides and memory references', x_range=(0.5, 30000),
                               regions=report.measured_phase_regions(counted) if measured_bands else report.llm_phase_regions(ext),
                               x_title='Operations per byte (Flat controller or Cache lookup basis)')
# Both Cache ceilings share the Cache hue; the spilled one is dash-dotted to tell them apart.
fig.for_each_trace(lambda t: t.update(line_dash='dashdot') if t.name and '@96 GiB' in t.name else None)
figure(fig, 'atlas_configurations_1s')
(d_lo, d_hi, _), (p_lo, p_hi, _) = phases
amx = [roofline.ridge(c.gops, m.gbs) for c in peaks if c.path in ('amx_bf16', 'amx_int8') for m in configs]
vnni = min(roofline.ridge(c.gops, m.gbs) for c in peaks if c.path == 'vnni_int8' for m in configs)
vector = {c.path: roofline.ridge(c.gops, configs[0].gbs) for c in peaks if c.path in ('fp64', 'fp32')}
say(f"**Result.** Decode ({d_lo:.0f}–{d_hi:.0f} op/B) lies at least {min(amx) / d_hi:.0f}× below every AMX ridge ({min(amx):.0f}–{max(amx):.0f} op/B) "
    f"and {vnni / d_hi:.0f}× below the lowest VNNI ridge ({vnni:.0f} op/B, Flat HBM), so the bandwidth term is smaller in those empirical reference models. "
    f"It is not far from every ridge: on Flat HBM the AVX-512 FP64 and FP32 ridges ({vector['fp64']:.0f} and {vector['fp32']:.0f} op/B) fall inside the decode band. "
    f"Prefill ({p_lo:.0f}–{p_hi:.0f} op/B) reaches the AMX ridges.")
"""),
    md("""
## 3. Flat mode, both sockets
"""),
    code("""
mem2 = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', '2S'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', '2S')]
table(pd.DataFrame([dict(tier=c.tier, kernel=c.kernel, GBs=c.gbs, scope=c.scope) for c in mem2]))
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
mem_rw = [report.sweep_ceiling(ext, thesis, 'hbm'), report.sweep_ceiling(ext, thesis, 'ddr')]
pts = report.fp64_sweep_points(thesis, 'flat', 'hbm') + report.fp64_sweep_points(thesis, 'flat', 'ddr')
pts12 = report.fp64_sweep12_points(ext, thesis, theory, 'hbm') + report.fp64_sweep12_points(ext, thesis, theory, 'ddr')
audits.extend([roofline.audit_points(pts, mem_rw, fp64).assign(group='FP64 sweep · Flat · sweep reference'),
               roofline.audit_points(pts12, mem_rw, fp64).assign(group='FP64 sweep, 12 chains · Flat · sweep reference')])
sw = csweep[csweep.memory_mode == 'flat'] if len(csweep) else csweep
if len(sw):
    # Counted 12-chain sweep: measured intensity against the copy ceiling in the same (controller) bytes.
    mem_rw = [report.ceiling_or_modeled(unc, ext, thesis, 'flat', t, access='copy') for t in ('hbm', 'ddr')]
    ptsc = report.measured_workload_points(sw, series=lambda r: 'fp64 sweep, 12 chains, counted')
    audits.append(roofline.audit_points([q for q in ptsc if not q.provenance['open']], mem_rw, fp64).assign(group='FP64 sweep, 12 chains, counted · Flat · copy ceiling, measured bytes'))
    fig = plotting.roofline_figure(fp64 + theory_set(['fp64'], '1S', 56), mem_rw, ptsc, title='FP64 intensity sweep · 12 chains · Flat · one socket', x_range=(0.05, 256), **MEASURED)
else:
    fig = plotting.roofline_figure(fp64 + theory_set(['fp64'], '1S', 56), mem_rw, pts + pts12, title='FP64 intensity sweep · 8 chains (October) and 12 chains · Flat · one socket', x_range=(0.05, 256))
figure(fig, 'atlas_fp64_sweep')
hb = [p for p in pts if p.memory_target == 'hbm']
say_claims(claims.fp64_sweep(ext, thesis, theory))
"""),
    md("""
## 5. Achieved points: BF16 and INT8 GEMM

Each filled point is one (shape, M) pair of the counted re-runs, at the intensity the memory controllers measured: the four Llama-3.1-8B shapes at M = 1, 16, 256 and 4096 (part `uatlas`) and 14336×4096 at every M from 1 to 4096 (part `ugemmconv`), all with a weight pool of 16× the on-chip capacity. The hollow twin of each is the same rate at its modeled intensity. Intensity rises with M because the same weights are reused for more tokens; the relative roles of the read-bandwidth reference and library throughput change with batch size. The first sweep (modeled bytes, every M) stays in the gap table below and in the audit.
"""),
    code("""
gm = report.gemm_points(ext)
mem_read = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', access='read'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', access='read')]
for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
    sel = gm[(gm.memory_mode == 'flat') & (gm.dtype == dtype)]
    pts = report.gemm_workload_points(sel, theory)
    sweep = report.converged_sweep(ext)
    conv = report.gemm_workload_points(sweep[(sweep.dtype == dtype) & ((sweep.layout == 'plain') | (sweep.dtype == 'int8'))], theory)
    for q in conv:
        q.provenance['series'] = '14336x4096 · converged sweep (16× pool)'
    conv += [p for p in report.gemm_pool_points(ext, 64, '4096x4096') if p.precision == dtype]
    audits.append(roofline.audit_points(conv, mem_read, [report.compute_ceiling(ext, path, 'flat', 56)]).assign(group=f'{dtype.upper()} GEMM · Flat · converged pools · read-only ceiling'))
    cs = [report.compute_ceiling(ext, path, 'flat', 56), report.theoretical_ceiling(theory, path, 56)]
    if dtype == 'bf16':
        cs.append(report.compute_ceiling(ext, 'avx512_bf16', 'flat', 56))
    else:
        cs.append(report.compute_ceiling(ext, 'vnni_int8', 'flat', 56))
    audits.append(roofline.audit_points(pts, mem_read, cs).assign(group=f'{dtype.upper()} GEMM · Flat · read-only ceiling'))
    flat_counted = counted[(counted.memory_mode == 'flat') & (counted.dtype == dtype) & (counted.layout == ('plain' if dtype == 'bf16' else 'prepacked'))] if len(counted) else counted
    if len(flat_counted):
        # Counted re-runs (uatlas: four shapes at M = 1, 16, 256, 4096; ugemmconv: 14336x4096 at M = 1-4096), measured bytes.
        mem_meas = [report.ceiling_or_modeled(unc, ext, thesis, 'flat', t) for t in ('hbm', 'ddr')]
        fc = flat_counted.drop_duplicates(['memory_target', 'shape', 'm'])
        mpts = report.measured_workload_points(fc)
        audits.append(roofline.audit_points([q for q in mpts if not q.provenance['open']], mem_meas, cs).assign(group=f'{dtype.upper()} GEMM, counted · Flat · read-only ceiling, measured bytes'))
        fig = plotting.roofline_figure(cs, mem_meas, mpts, title=f'{dtype.upper()} GEMM M-sweep at Llama-3.1-8B shapes · Flat · one socket', height=820, **MEASURED)
    else:
        fig = plotting.roofline_figure(cs, mem_read, pts + conv, title=f'{dtype.upper()} GEMM M-sweep at Llama-3.1-8B shapes · Flat · one socket', height=820)
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
### Counted against modeled intensity

The 14336×4096 projection appears twice in this diagnostic. Filled points use Flat CAS traffic and hollow points use modeled tensor bytes. The operation rates remain the same.
"""),
    code("""
cs = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('amx_bf16', 'amx_int8')]
compare = counted[counted.memory_mode.eq('flat') & counted.memory_target.eq('hbm') & counted['shape'].eq('14336x4096')]
compare = compare[compare.layout.eq('plain') | compare.dtype.eq('int8')].drop_duplicates(['dtype', 'm'])
fig = plotting.roofline_figure(cs, [report.measured_memory_ceiling(unc, 'flat', 'hbm')],
                               report.measured_workload_points(compare, series=lambda r: r.dtype.upper()),
                               title='GEMM 14336×4096 · Flat HBM · controller and modeled bytes', x_range=(0.5, 4000), **MEASURED)
figure(fig, 'atlas_counted_gemm')
say_claims(claims.counted(ext, thesis), ['counted_gemm_weights', 'counted_gemm_prefill'])
"""),
    md("""
**Gap analysis.** The table compares an arithmetic reference at 1.9 GHz, a native tile kernel at its measured frequency, and the largest observed rate of the selected library sweep. The library fraction is specific to its tested shapes and layouts.

## 6. Ceiling audit: points above their own roofline

Each group compares points with the corresponding empirical envelope. The audit reports raw exceedances and flags those beyond the larger within-launch CV of the point and the limiting reference. This is a descriptive tolerance. Points with no bandwidth match retain an empty bandwidth reference. The October modeled Cache data use their historical modeled streams.
"""),
    code("""
for pool, access in [(16, 'read'), (96, 'best')]:
    ceiling = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', at_gib=pool, access=access)
    for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
        sel = gm[(gm.memory_mode == 'cache') & (gm.dtype == dtype) & ((gm.pool_gib - pool).abs() < 0.5)]
        audits.append(roofline.audit_points(report.gemm_workload_points(sel, theory), [ceiling], compute_set('cache', '1S', 56)).assign(group=f'{dtype.upper()} GEMM · Cache · {pool} GiB pool · modeled {ceiling.kernel} reference'))
audits.append(roofline.audit_points(report.gemm_pool_points(ext, 64), mem_read, [report.compute_ceiling(ext, p, 'flat', 56) for p in ('amx_bf16', 'amx_int8')]).assign(group='GEMM · Flat · 64× pool · read-only ceiling'))
audit = pd.concat(audits, ignore_index=True)
summary = audit.groupby('group').agg(points=('point', 'size'), above_reference=('above_reference', 'sum'),
                                      beyond_cv=('exceeds', 'sum'), max_ratio=('ratio', 'max')).reset_index()
audit.to_csv(ROOT / 'data/processed/thesis/roofline_reference_audit.csv', index=False)
table(summary)
over = audit[audit.above_reference]
table(over.sort_values('ratio', ascending=False)[['group', 'point', 'bytes_source', 'ceiling_gbs', 'ceiling_kernel',
                                                  'ratio', 'tolerance_percent', 'exceeds', 'unconverged']])
"""),
    md("""
**Reading the exceptions.** They are listed, not hidden. Two mechanisms can raise a point above a kernel-based ceiling: the access pattern differs from every ceiling kernel, or the modeled bytes overcount real traffic. The counters and the pool sweep tell them apart:
"""),
    code("""
g64 = audit[audit.group.str.contains('64× pool')]
say(f"**Result.** With the converged 64× pool {int(g64.exceeds.sum())} of {len(g64)} GEMM points lie above their roofline.")
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_pool_convergence'])
say_claims(claims.counted(ext, thesis), ['counted_gemm_weights', 'sweep_exceeds_triad_ceiling'])
"""),
    md("""
The October small-pool GEMM exceedances are consistent with on-chip reuse in the pool controls. Some FP64 sweep points exceed a Triad reference because the sweep has one load and one store, for which the fastest copy is a closer empirical proxy. The audit keeps all crossings and their traffic basis.
"""),
]

# --------------------------------------------------------------------------- 06
NOTEBOOKS["06_uncore_power_and_clocks"] = [
    md("""
# 06 — Memory controllers, power and clocks (privileged counters)

**Question.** What do the memory controllers, the UPI links, the power-control unit and the package energy counters say about the results the other notebooks could only infer: is the traffic model right at the controllers, why does the clock drop while HBM streams, what makes the first HBM window fast, what crosses UPI for remote memory, how much does a GEMM really fetch, and how many misses are in flight under load?

**How it was measured.** Since 2026-10-19 the Flat node (`cresco8-hbm14`) allows `sudo perf stat` without a password; the benchmark itself still cannot open uncore events (`perf_event_paranoid` = 2). Each record runs one system-wide `perf stat -a --per-socket -I 100` beside the benchmark (`hwbench.uncore`): the counters are enabled once before the warm-up, read every 100 ms, and disabled once after the last sample. Perf enables its counters one at a time (about 110 ms, socket 0 first), so the counters run continuously and each one-second sample takes the intervals that lie entirely inside it (eight or nine of ten); the disable, which takes 5 ms, places perf's intervals on the benchmark's clock. Events: DDR CAS (`uncore_imc`, 64 B), HBM CAS (`uncore_type_14`, the 32 HBM channel controllers per socket, 32 B, identified with a read stream of known size), UPI data flits, M2M directory updates, package and DRAM energy (RAPL), the CHA clock (uncore frequency) and the PCU's power- and thermal-limit cycles. The probes behind these choices are in `data/probes/uncore-20261019/`.

Sections 1 to 8 are the Flat node, read for the socket that computes; section 11 reads the socket that runs nothing and section 12 compares the energy of the two modes. Since 2026-10-20 the Cache node `cresco8-hbm13` allows the same commands, but `perf` is not installed there, so its records carry `turbostat` instead (`hwbench.turbostat`: package and DRAM power from the same RAPL counters, the uncore ratio, temperature, in 100 ms intervals placed on the benchmark's clock); section 9 checks turbostat against perf on the Flat node, section 10 is Cache mode.

RAPL package plus DDR DRAM energy is reported at the computing socket or node scope. Gross values include the idle floor. Section 13 reports the idle baseline and the separately sampled BMC wall-power scope. These campaigns are kept apart from the rates of the other notebooks (`uncore_campaigns` in `configs/analysis.json`).
"""),
    code(setup("06_uncore_power_and_clocks") + "\nunc = report.load_uncore(mode='flat')\nucache = report.load_uncore(mode='cache')\nU1 = claims.uncore_streams(unc, theory, ext)\nDATA_PATTERN_CAMPAIGN = ctx.policy['data_pattern_campaign']"),
    md("""
## 1. Controller traffic against the traffic model (U1)

**Conditions.** Flat mode, socket 0, 8 GiB on DDR or HBM, read, Triad and non-temporal copy at 1, 14, 28 and 56 cores, five one-second samples each. Filled markers divide the controller bytes (every channel of both sockets) by the modeled bytes, open markers by the bytes the cores' own offcore counters saw.
"""),
    code("""
ct = report.controller_table(unc)
figure(plotting.controller_ratio_figure(ct), 'controller_vs_modeled')
table(ct.drop(columns=['campaign']), 3)
say_claims(U1, ['controller_streams', 'controller_tier', 'counting_cost'])
table(report.counting_cost(unc), 3)
"""),
    md("""
## 2. Power and the clock drop

The same records, read for package power, DRAM power, the core clock (cycles of the benchmark's threads), the uncore clock (CHA cycles) and the share of PCU cycles in which the frequency was clipped for power. RAPL on this node: PL1 350 W averaged over 1 s, PL2 420 W over 12 ms; uncore 0.8–2.5 GHz (`configs/theory.toml`, `[power]`).
"""),
    code("""
pt = report.power_table(unc)
figure(plotting.power_clock_figure(pt), 'power_and_clocks')
table(pt[pt.memory_target.ne('registers')].drop(columns=['gops', 'pj_per_op', 'pj_per_op_node']), 2)
say_claims(U1, ['clock_drop_power'])
"""),
    md("""
## 3. The fast first window on HBM

Notebook 01 found the first one-second window of a 56-core HBM stream 4–12% faster than the rest, with no effect on DDR. Per window (first against windows 3–5) and per 100 ms interval:
"""),
    code("""
fw = report.first_window_counters(unc)
table(fw, 3)
series = report.uncore_series(unc, 'u1_read', 'hbm')
figure(plotting.uncore_timeline_figure(series, 'hbm', 'One 56-core HBM read record, 100 ms intervals · the five timed windows alternately shaded'), 'hbm_read_timeline')
say_claims(U1, ['first_window_uncore'])
"""),
    md("""
## 4. Energy

Energy at the two scopes defined above: per byte the controllers moved for the streams (*pj_per_byte* is the computing socket, *pj_per_byte_node* the node), and per operation for the compute peaks at 56 cores (*pj_per_op*, *pj_per_op_node*; the GEMM figures of the other notebooks use the same package-plus-DRAM definition). Both include the idle floor, and the node figure includes what the other socket draws while the computing one runs (section 11). Since the idle baseline (section 13) the floor is measured, and the same energies are given *dynamic* (`_dyn`: the floor of the computing socket, or of the whole node, subtracted from the power).
"""),
    code("""
table(pt[pt.memory_target.ne('registers')][['memory_target', 'kernel', 'threads', 'gbs', 'pkg_w', 'ram_w', 'node_w', 'pj_per_byte', 'pj_per_byte_node', 'pj_per_byte_dyn', 'pj_per_byte_node_dyn']], 1)
table(pt[pt.memory_target.eq('registers')][['kernel', 'threads', 'gops', 'core_ghz', 'uncore_ghz', 'pkg_w', 'ram_w', 'other_pkg_w', 'node_w', 'power_limited', 'pj_per_op', 'pj_per_op_node', 'pj_per_op_dyn', 'pj_per_op_node_dyn']], 2)
say_claims(U1, ['energy_per_byte', 'energy_per_op'])
"""),
    md("""
## 5. The data pattern on the HBM read ceiling (STREAMGAP E6)

The Triad-gap investigation ([STREAMGAP.md](../docs/STREAMGAP.md)) found the read-only HBM ceiling 9–12% higher with constant or zero data than with random or the thesis data, and could not observe power or the uncore clock. E6 repeats its read kernel with the four patterns on HBM and DDR (three rotated repeats, 56 cores, 8 GiB, about 10 s per launch) with a system-wide session beside each launch; rates are medians over the read phase.
"""),
    code("""
dp = report.data_pattern_counters(DATA_PATTERN_CAMPAIGN)
summary = dp.groupby(['memory_target', 'init']).median(numeric_only=True).drop(columns=['repeat', 'wrong']).reset_index()
table(summary, 2)
say_claims(claims.data_pattern_claims(dp), None)
"""),
    md("""
## 6. Remote memory (U2)

**Conditions.** Socket 0's cores read 8 GiB bound to socket 0 (local) or socket 1 (remote), HBM and DDR at 14, 28 and 56 cores, and non-temporal Triad on HBM at 56 cores; 5 s windows. UPI flits are data flits over every link of both sockets, halved (each flit is sent by one socket and received by the other) and divided by the 64-byte lines the kernel moved. *serving_pkg_w*, *serving_uncore_ghz* and *serving_power_limited* are the package power, uncore clock and share of power-limited PCU cycles of the socket whose memory is read (the computing socket itself for local reads).
"""),
    code("""
rc = report.remote_counter_table(unc)
table(rc, 3)
say_claims(claims.uncore_remote(unc), None)
"""),
    md("""
## 7. GEMM at the controllers (U4)

**Conditions.** The 14336×4096 GEMM of notebook 04 at M = 1, 16, 64 and 256, BF16 and INT8, weights on HBM or DDR, a pool of 16× the on-chip capacity (the converged pool of review item R1), 56 cores of socket 0.
"""),
    code("""
gc = report.gemm_controller_table(unc)
table(gc, 3)
say_claims(claims.uncore_gemm(unc), None)
"""),
    md("""
The same points on the one-socket roofline, placed at the intensity the controllers measured (filled) and at the modeled intensity (hollow), with the read ceilings and AMX peaks of the other notebooks. The shaded bands are the modeled decode (M = 1 to 16) and prefill (M = 256 to 4096) intervals of notebook 05.
"""),
    code("""
ceilings = [report.memory_ceiling(ext, thesis, 'flat', t, access='read') for t in ('hbm', 'ddr')]
peaks = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('amx_bf16', 'amx_int8')]
fig = plotting.roofline_figure(peaks, ceilings, report.controller_gemm_points(unc), point_labels=True, x_range=(0.5, 4000),
                               title='GEMM 14336×4096 · Flat · intensity measured at the memory controllers',
                               regions=report.llm_phase_regions(ext), open_label='hollow: the same point at modeled intensity',
                               x_title='Operations per byte at the memory controllers (measured)')
figure(fig, 'gemm_controller_roofline')
"""),
    md("""
## 8. Loaded latency with the controllers' bandwidth (R3)

The pairs of notebook 02 again: one core chasing pointers in 1 GiB beside N cores streaming the same tier, one synchronized 5 s window. The controllers' bandwidth on the bound tier replaces the streaming cores' modeled rate in Little's law.
"""),
    code("""
lc = report.loaded_concurrency(unc)
table(lc, 2)
say_claims(claims.uncore_loaded(unc, ext), None)
"""),
    md("""
## 9. turbostat against perf

The Flat smoke campaign ran both sessions in the same records: perf (RAPL energy and CHA clockticks over each 100 ms interval) and turbostat (RAPL power and the uncore ratio at the end of each 100 ms interval). Both read the same energy counters, so their ratio checks how turbostat's intervals are placed on the samples.
"""),
    code("""
tv = report.turbostat_validation(unc)
table(tv, 3)
say_claims(claims.turbostat_matches_perf(unc), None)
"""),
    md("""
## 10. Cache mode: power, clocks and traffic (hbm13)

**Conditions.** Cache mode on `cresco8-hbm13`, socket 0, the streams of section 1 at 1 to 56 cores with the data resident in the HBM cache (8 GiB) and spilled to DDR (96 GiB), and read, Triad and non-temporal Triad at 56 cores from 8 to 128 GiB. Power and clocks come from turbostat, and from perf's RAPL and CHA counters where it ran. Since 2026-10-31 perf works on the node (`data/probes/uncore-cache-20261031/`): the capacity curve (part `ucapacity`), the decode GEMM (`ugemm`), the repeats (`ucacherep`), the far-latency chase (`ucachelat`) and the atlas GEMM points (`uatlas`) ran with the **base event set**, from which the memory-side cache's served bytes (the HBM read CAS), far traffic (the DDR read CAS) and hit rate follow; counting the tag lookups themselves with perf perturbs the benchmark (section 14). The streams of section 1 and the GEMM points of the parts that were not re-run (`ustreams`, `ugemmconv`, `usweep`) still count their traffic with the cores' own DRAM lines (`pmu_ocr`), which agree with the cache's served bytes to 1% for streams and decode-sized GEMMs but not for prefill batches. hbm13 is not the reference Cache node of the other notebooks (hbm01), and Cache-mode rates differ between campaigns on one node by up to 16% (notebook 01) and, near the capacity, by a factor of three between days, while launches within a day repeat to 2 hit-rate points (the hit rate follows the node's page placement, claim `cache_launch_spread`).
"""),
    code("""
cmp = report.mode_power_comparison(unc, ucache)
table(cmp, 2)
cs = report.cache_stream_table(ucache)
if len(cs):
    figure(plotting.cache_power_figure(cs), 'cache_power_and_clocks')
cc = report.cache_capacity_table(ucache)
if len(cc):
    table(cc, 2)
    figure(plotting.cache_capacity_counters_figure(cc), 'cache_capacity_counters')
gt = report.cache_gemm_table(ucache)
if len(gt):
    table(gt, 3)
say_claims(claims.cache_counters(unc, ucache, flat_far=report.flat_latency_far(ext)), None)
"""),
    md("""
## 11. The socket that runs nothing is not idle

Every record in this notebook has the second socket idle: nothing is bound to it. Its counters are in the same sessions (perf per socket on Flat, turbostat per package on Cache), so its package power and uncore clock can be read against the computing socket's. **Conditions.** The one-second samples of every counted record in which socket 0 computes on its own memory (remote reads, where socket 1 serves the data, are left out); Flat from perf (the CHA clock averaged over the sample), Cache from turbostat (the uncore ratio at each interval's end). The *floor* is the median power of socket 1 in samples where its uncore clock is below 1 GHz: the lowest state observed, not a measured idle (that needs a record with nothing running). The scatter off the diagonal in the right panel is turbostat's instantaneous ratio (Cache), which can sit at either end of a clock transition when the interval ends; perf's average (Flat) does not.
"""),
    code("""
cf = report.uncore_coupling_frame(unc, ucache)
cfit = report.uncore_coupling_fit(cf)
figure(plotting.uncore_coupling_figure(cf, cfit), 'uncore_coupling')
table(cfit, 2)
table(report.uncore_coupling(cf), 2)
say_claims(claims.uncore_coupling(unc, ucache), None)
"""),
    md("""
## 12. Flat against Cache at equal work: energy per token and per operation

The counted GEMM of notebook 05 (14336×4096, BF16 plain) from decode at M = 1 to prefill at M = 4096, the counted FP64 sweep against its measured intensity (the energy counterpart of the roofline), and the 56-core compute peaks, in Flat HBM, Flat DDR, Cache with the data resident in the HBM cache and Cache spilled to DDR. *J/token* is the energy of one Llama-3.1-8B token if the whole model ran at that point's rate and power (2 × 8.03 billion operations per token); at M = 1 it is a full-parameter projection-based scenario. Each is given at the computing-socket and node scopes. The intensity axis uses Flat controller bytes, Cache lookup bytes in the counted atlas, and core offcore-response bytes in older Cache runs. The energy per operation follows time, power and useful work.
"""),
    code("""
both = pd.concat([unc, ucache], ignore_index=True)
et = report.energy_table(both, theory)
figure(plotting.energy_roofline_figure(et), 'energy_roofline')
g = et[et.kind.eq('gemm') & et.precision.eq('bf16') & et.layout.eq('plain') & et.x.isin([1, 16, 256, 4096])]
for column in ('j_per_token', 'j_per_token_node'):
    print(column.replace('_', ' '))
    table(g.pivot_table(index='x', columns='tier', values=column).reset_index().rename_axis(columns=None), 2)
table(et[et.kind.eq('peak')][['tier', 'layout', 'gops', 'socket_w', 'node_w', 'pj_per_op', 'pj_per_op_node', 'power_source']], 2)
say_claims(claims.energy_flat_vs_cache(both, theory), None)
"""),
    md("""
## 13. The node at rest: the static floor and the BMC (B2)

**Conditions.** Part `uidle` on both nodes: one record of five 60 s windows in which the benchmark does nothing but hold the counters enabled (`hardware --kind idle`), perf (base events) plus turbostat on both nodes, with a campaign-level `ipmitool sensor` logger beside every record (a listing takes about 6 s and reports whole watts, so a window of 60 s holds about eight). Then one 14-core read per tier (five 30 s windows): below the power limit, so the BMC's rails can be set against RAPL's without clipping. The *floor* of the energy tables is the median over the idle samples.
"""),
    code("""
both_modes = pd.concat([unc, ucache], ignore_index=True)
floor = report.idle_floor(both_modes)
table(floor.reset_index(), 2)
table(report.idle_load_table(both_modes), 2)
say_claims(claims.idle_baseline(unc, ucache), None)
"""),
    md("""
## 14. What counting the memory-side cache costs, and what does not

The first Cache launches of 2026-10-31 used a perf session that also counted the cache's tag lookups (event set `cache`: three more HBM-controller events, 96 more counters per socket). They read 1 GiB chases at 400–415 ns where the turbostat-only smoke of 2026-10-20 read 156 ns, Cache-mode Triad at half rate, and left the node at 1.4 GHz and 361 W at rest. A factorial on the same node (`ucacherep` and `usmoke`: tag events, base events, the BMC logger alone, turbostat alone) isolates the tag session; everything in sections 10 to 13 was re-run with the base events. The tag launches (`session_probe_campaigns`) are kept as the validation of the hit rate derived from the base counters.
"""),
    code("""
probe = report.load_session_probe()
if len(probe):
    p = probe.assign(session=probe.uncore_event_set.fillna('none').astype(str) + ' · BMC logger ' + probe.ipmi_logged.map({True: 'on', False: 'off'}), gib=(probe.working_set_bytes / 2**30).round(0))
    reps = p[p.notes.str.startswith('u3_rep_') & p.gib.isin([8, 32, 56])].groupby(['session', 'notes', 'gib']).bandwidth_gbs.median().unstack(['notes', 'gib'])
    table(reps.reset_index(), 0)
    table(p[p.notes.eq('usmoke_chase') & p.socket_scope.eq('concurrent_tier_component')].groupby('session').latency_ns.median().reset_index(), 0)
    table(p[report.is_idle_note(p.notes)].groupby('session')[['node_power_w', 'uncore_ghz_s0', 'ts_bzy_mhz_s0']].median().reset_index(), 2)
    say_claims(claims.cache_session_claims(probe, ucache), None)
"""),
    md("""
## 15. Still not measured

* **Cache-mode bytes of the parts that were not re-run with the tag counters.** `ustreams`, `ugemmconv`, `usweep` and the streams of the capacity part of 2026-10-20 count their traffic with the cores' DRAM lines (`pmu_ocr`); the tag counters agree with those lines to 1% for streams and decode-sized GEMMs, but not for prefill batches (M ≥ 256), which only `uatlas` has in served bytes.
* **Which agent issues the duplicated remote-HBM reads (U2).** The CHA opcode events were not in any session (part B5 of the plan, optional).
* **Latency at the caching agents.** The CHA's TOR occupancy over inserts, filtered to the chasing core, gives about 31 ns where the chase measures 141 ns (`data/probes/uncore-20261019/`); it is not a latency here and is not used.
"""),
]



from bandwidth_search_notebook import cells as bandwidth_search_cells  # noqa: E402

NOTEBOOKS["07_bandwidth_configuration"] = bandwidth_search_cells(setup)


def main() -> None:
    import argparse
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("names", nargs="*", help="Notebook stems; default: all")
    args = parser.parse_args()
    names = args.names or list(NOTEBOOKS)
    if set(names) - set(NOTEBOOKS):
        parser.error("Unknown notebook stem")
    directory = ROOT / "notebooks"
    for name in names:
        cells = NOTEBOOKS[name]
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
