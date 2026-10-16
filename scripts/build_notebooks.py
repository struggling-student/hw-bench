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

This notebook carries the findings in six figures and five tables; the supporting notebooks hold the detail: [platform and methodology](01_platform_and_methodology.ipynb), [memory](02_memory_hierarchy_and_bandwidth.ipynb), [NUMA and sockets](03_numa_and_socket_scaling.ipynb), [compute](04_compute_throughput.ipynb), [roofline atlas](05_roofline_atlas.ipynb). Every number is computed from the selected campaigns (five steady one-second samples per point).

**Kinds of number.** *Measured*: time, operation counts, user-mode cycles, load latency, checksums. *Modeled*: every byte count and therefore every GB/s, arithmetic intensity, GEMM traffic and ridge point. *Theoretical*: vendor or derived per-cycle peaks, DDR5 transfer rate, "up to 1 TB/s" for HBM. *Firmware-advertised*: the ACPI HMAT figures, which are neither measured nor derived here. *Inferred* statements say so where they occur.

**Colour.** Blue is Flat DDR, orange is Flat HBM, aqua is Cache mode; the violet ramp is the compute path (darker means more operations per cycle); hatching means a worse placement (remote or interleaved); line style says what a ceiling is (dashed vendor, solid measured, dotted library-achievable).
"""),
    code(setup("00_master_analysis")),
    md("""
## 1. Platform and headline ceilings

Two sockets × 56 cores, SMT off, 64 GiB HBM2e and 8-channel DDR5-4800 per socket. *Flat* mode exposes HBM and DDR as separate NUMA nodes; *Cache* mode makes HBM a memory-side cache in front of DDR. Flat results were taken on one dedicated node outside Slurm (the October runs went through an exclusive Slurm allocation on the same node and are labelled as such); Cache results come from Slurm allocations on other nodes.

**Table 1 — headline ceilings of socket 0** (the reference socket for every number here). *Median* [*min*–*max*] are the five samples of one run. *Total* is the uncertainty to quote: half the min–max range plus the largest of three further ranges, a conservative sum. The three are the range of three back-to-back launches on one node, the range of every selected campaign that measured the quantity on its reference node on different days, and the largest deviation of the cross-check (SSH against the October Slurm runs, or a second Cache node). The decomposition of each total, the number of campaigns behind it and the HBM first-window effect are in [notebook 01](01_platform_and_methodology.ipynb), section 3.
"""),
    code("""
t1 = report.headline_table(ext, thesis, theory)
t1v = t1.assign(**{'median [min–max]': [f'{m:.4g} [{lo:.4g}–{hi:.4g}]' for m, lo, hi in zip(t1['median'], t1.low, t1.high)], 'uncertainty': [f'±{t:.1f}%' for t in t1.total]})
table(t1v[['quantity', 'unit', 'median [min–max]', 'uncertainty']])
say('*Basis of the cross-run term:* ' + '; '.join(f'{b} ({", ".join(g.quantity)})' for b, g in t1.groupby('basis')) + '.')
say_claims(claims.headline_uncertainty(ext, thesis, theory))
say_claims(claims.xcheck(ext, thesis), ['campaign_spread'])
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
fig = plotting.compute_efficiency_figure(one, {'avx512_bf16': 'bound from instruction table'})
figure(fig, 'compute_efficiency')
flat = one.set_index('path')
amx, i8, vb, f32 = flat.loc['amx_bf16'], flat.loc['amx_int8'], flat.loc['avx512_bf16'], flat.loc['fp32']
say(f"**Result.** One socket sustains {i8.gops/1000:.0f} TOP/s on AMX INT8 and {amx.gops/1000:.0f} TOP/s on AMX BF16 "
    f"({amx.efficiency_at_clock:.1%} of the peak at the {amx.ghz_effective:.2f} GHz the cores ran at). "
    f"The AVX-512 BF16 dot product reaches {vb.ops_per_cycle_per_core:.0f} of {vb.theory_ops_per_cycle:.0f} operations per cycle ({vb.efficiency_at_clock:.0%}); "
    f"it is not a faster path than FP32 FMA ({f32.gops/1000:.1f} versus {vb.gops/1000:.1f} TOP/s).")
say_claims(claims.compute_paths(ext, theory), ['avx512_bf16_bound', 'clocks', 'amx_busy'])
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
gm_all = report.gemm_points(ext)
gemv = gm_all[(gm_all.memory_mode == 'cache') & (gm_all['shape'] == '14336x4096') & (gm_all.m == 1)]
fig = plotting.cache_capacity_figure(bw0[bw0.config == 'cache'], bw0[(bw0.config != 'cache') & (bw0.working_set_gib.sub(8).abs() < 0.5)],
                                     {'16 GiB: 8B BF16 model': 16, '64 GiB: HBM capacity': 64}, gemv)
figure(fig, 'cache_capacity')
say_claims(claims.cache_mode(ext, thesis), ['cache_declines_before_capacity', 'cache_resident_model', 'cache_below_flat_ddr', 'cache_spilled_gemm'])
say_claims(claims.latency(ext, theory, ROOT), ['latency_order', 'cache_latency_far', 'latency_translation'])
"""),
    md("""
## 4. The headline roofline: one socket, Flat mode

Memory slopes are the read-only ceilings, because GEMM weights are only read. The dotted line is the best rate PyTorch `nn.Linear` achieved through oneDNN with plain (not prepacked) weights (not a hardware limit; prepacked weights are up to 20% faster, see notebook 04). Points are the BF16 14336×4096 projection for batch sizes M = 1 to 4096, on HBM and on DDR; intensity is modeled. From M = 1 to 256 the points come from the converged sweep (a weight pool of 16× the on-chip capacity, part `gemmconv`; convergence is judged in counted bytes, and 2–3% of the weights are still served on chip at small M, so those modeled rates are that much high); above M = 256 they come from the first sweep, whose small pool no longer matters at those batch sizes. Every point is audited against its ceiling. The shaded bands are decode (small M) and prefill (large M).

**Table 2 — ridge points** (operations per byte at which each path stops being memory-bound), against the read-only ceiling of each tier, the same ceiling as the roofline above and the decode bound; Cache mode is read at 16 GiB.
"""),
    code("""
gm = report.gemm_points(ext)
head = report.headline_gemm_points(ext)
mem_read = [report.memory_ceiling(ext, thesis, 'flat', 'hbm', access='read'), report.memory_ceiling(ext, thesis, 'flat', 'ddr', access='read')]
compute = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('fp32', 'amx_bf16', 'amx_int8')] + [report.library_ceiling(gm, 'amx_bf16')]
pts = report.gemm_workload_points(head[head.dtype == 'bf16'], theory)
at = {(p.memory_target, int(p.provenance['label'][2:])): p.intensity for p in pts}
for p in pts:
    # Label HBM points at every fourth M (not M = 4096: its label would overprint the library-line label); DDR points are unlabelled.
    m = int(p.provenance['label'][2:])
    p.provenance['label'] = p.provenance['label'] if p.memory_target == 'hbm' and m in (1, 4, 16, 64, 256, 1024) else ''
regions = [(at[('hbm', 1)] / 1.3, at[('hbm', 16)] * 1.3, 'decode'), (at[('hbm', 256)] / 1.3, at[('hbm', 4096)] * 1.3, 'prefill')]
fig = plotting.roofline_figure(compute, mem_read, pts, title='Roofline · Flat · one socket · BF16 14336×4096 by batch M', regions=regions, point_labels=True)
figure(fig, 'headline_roofline')
audit = roofline.audit_points(pts, mem_read, compute)
filled = audit[~audit.unconverged]
hollow = int(audit.unconverged.sum())
say(f"**Result.** {int(filled.exceeds.sum())} of the {len(filled)} {'filled ' if hollow else ''}points lie above their roofline by more than their spread "
    f"(highest at {filled.ratio.max():.0%} of its bound)"
    + (f"; the {hollow} hollow points are not audited" if hollow else "")
    + f"; the full audit is in the [atlas](05_roofline_atlas.ipynb). "
    f"The best library rate is {compute[-1].gops/1000:.0f} TOP/s, {compute[-1].gops/compute[1].gops:.0%} of the measured AMX BF16 peak.")
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_converged_sweep', 'first_sweep_small_m_bias', 'pool_insensitive_large_m'])
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points'])
table(report.ridge_table(ext, thesis), 1)
"""),
    md("""
**What the roofline says about decoding.** The weights of a decoder-only model are read once per generated token, so the read ceiling gives a bound on single-sequence decode that does not depend on the compute path.
"""),
    code("""
say_claims(claims.decode_bound(ext, thesis, theory), ['decode_bound', 'decode_far_below_ridge'])
"""),
    md("""
**Table 5 — what a decode step streams.** The 14336×4096 projection at M = 1 against the read ceiling of its tier. Flat rows come from converged pools, with counted bytes beside modeled: plain BF16 and INT8 from the 64× pool sweep, prepacked BF16 from the converged M-sweep (16×); Cache rows come from the first sweep, whose 16 and 96 GiB pools are far beyond the on-chip capacity. *Tokens/s* is the Llama-3.1-8B bound if every weight streamed at this rate (8.03 billion weights, 2 bytes in BF16, 1 in INT8; read-only rows use BF16). It is optimistic for the whole model: the 4096×4096 projections stream slower.
"""),
    code("""
dt = report.decode_table(ext, thesis, theory)
table(dt.rename(columns={'gbs': 'GB/s', 'counted_gbs': 'counted GB/s', 'read_gbs': 'read ceiling GB/s', 'of_read_ceiling': 'of read ceiling', 'tokens_per_s': 'tokens/s bound'}), 2)
say_claims(claims.decode_bound(ext, thesis, theory), ['decode_achieved'])
"""),
    md("""
## 5. GEMM efficiency against batch size

Two panels share the M axis: the share of the measured tile peak reached, and the share of the read-bandwidth ceiling that the modeled bytes imply. The points are the same as in the headline roofline (converged sweep up to M = 256, first sweep above).
"""),
    code("""
sweeps = {}
tile = {d: report.compute_ceiling(ext, p, 'flat', 56).gops for d, p in (('bf16', 'amx_bf16'), ('int8', 'amx_int8'))}
for dtype, path in (('bf16', 'amx_bf16'), ('int8', 'amx_int8')):
    part = head[(head.memory_target == 'hbm') & (head.dtype == dtype)].copy()
    part['tile_fraction'] = part.gops / tile[dtype]
    part['bandwidth_fraction'] = part.gbs / mem_read[0].gbs
    sweeps[path] = part
fig = plotting.gemm_efficiency_figure(sweeps, decode_max=16, prefill_min=256)
figure(fig, 'gemm_efficiency')
say_claims(claims.gemm(ext, thesis, theory, ROOT), ['gemm_fraction_of_tile_peak', 'gemm_pool_convergence', 'gemm_asymmetry', 'gemm_call_floor'])
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

**Table 3 — memory bandwidth against the vendor or derived peak and against the firmware figure.** The HBM "vendor" figure is a rounded 1 TB/s, and the firmware (HMAT) figures are advertised, not measured. Compute peaks against their per-cycle figures are in section 2 and their TOP/s in Table 1.
"""),
    code("""
t3 = report.measured_theory_table(ext, thesis, theory, claims.hmat_gbs(ROOT))
table(t3, 3)
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
**Platform caveats.** Four settings of the execution nodes shape what the numbers mean. They were read from every campaign's platform record and are identical in all of them.
"""),
    code("""
say_claims(claims.platform_caveats(ext, ROOT))
"""),
    md("""
**Comparison with published results.** The same CPU has one close published single-socket measurement (McCalpin, IXPUG at ISC 2023: Flat mode, one NUMA node per socket, 56 cores) and one two-socket measurement in a different configuration (Reguly, arXiv 2023: HBM-only mode, SNC4). Published values are read off the sources listed in `configs/literature.toml`; the values of this study are the socket-0 medians at 8 GiB. A ratio above 1 means this study measured more.
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
**How the total uncertainty of the master Table 1 is built.** *Spread* is half the one-run min–max range relative to the median; *sustained* is the median without the first window; *repeat*, *between* and *cross-run* are the three ranges above (*campaigns* counts those behind *between*); *basis* says which quantity the cross-run term comes from; *total* is the spread plus the largest of the three.
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

Line style tells the origin of a ceiling: **dashed** = theoretical (vendor or derived), **solid** = best measured by a dedicated kernel, **dotted** = what a library kernel (oneDNN GEMM) achieved. Each memory ceiling has one purpose. Sections 1 and 3 draw the **ERT reference envelope**: the best sustained rate of every kernel (read-only, Triad, non-temporal Triad, copy), which on Flat HBM is copy. Every LLM statement uses the **read-only** ceiling (weights are only read): the GEMM figures here, the headline roofline, Table 2 and the decode bound of the master notebook. The FP64 sweep uses the **copy** ceiling (it loads one array and stores another), and Cache mode is read at a stated working set. Bytes are modeled, so these are empirical envelopes, not counter-based bounds. Section 6 lists every point that lies above its own roofline.
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
                               title='Flat · one socket · ERT envelope (best kernel) and vendor peaks (dashed)')
figure(fig, 'atlas_flat_1s')
table(pd.DataFrame([dict(memory=f'{m.tier} ({m.kernel})', GBs=m.gbs, **{p: roofline.ridge(c.gops, m.gbs) for p, c in zip(PATHS, compute_set('flat', '1S', 56))}) for m in mem]))
"""),
    md("""
The table gives the **ridge** (operations per byte) of the ERT envelope, at which each path stops being memory-bound. Higher-throughput paths need proportionally more reuse. The ridges quoted for LLM work (master Table 2, below) use the read-only ceiling instead.
"""),
    code("""
say_claims(claims.ridges(ext, thesis, theory), ['ridge_points'])
"""),
    md("""
## 2. Cache mode, one socket
"""),
    code("""
resident = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', access='read', at_gib=16)
spilled = report.memory_ceiling(ext, thesis, 'cache', 'effective_cache', at_gib=96)
fig = plotting.roofline_figure(theory_set(['amx_bf16', 'amx_int8'], '1S', 56) + compute_set('cache', '1S', 56), [resident, spilled],
                               title='Cache · one socket · data resident in HBM (16 GiB) and spilled to DDR (96 GiB)')
figure(fig, 'atlas_cache_1s')
table(pd.DataFrame([dict(case=c.tier, kernel=c.kernel, GBs=c.gbs, working_set_gib=c.working_set_gib) for c in (resident, spilled)]))
"""),
    code("""
say_claims(claims.cache_mode(ext, thesis), ['cache_declines_before_capacity', 'cache_triad_spilled_ceiling', 'cache_spilled_gemm'])
"""),
    md("""
Every ridge moves right by the ratio of the two slopes. The 16 GiB line is the case of a model of that size; the 96 GiB line is the Triad-based ceiling of the spilled case. Spilled, the kernels disagree by almost a factor of two and a GEMM streaming weights is faster than the read-only kernel (below): read-only is therefore not a ceiling for a spilled GEMM, and Triad, the fastest kernel measured there, is used.

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
audits = [roofline.audit_points(pts, mem_rw, fp64).assign(group='FP64 sweep · Flat · sweep ceiling'),
          roofline.audit_points(pts12, mem_rw, fp64).assign(group='FP64 sweep, 12 chains · Flat · sweep ceiling')]
fig = plotting.roofline_figure(fp64 + theory_set(['fp64'], '1S', 56), mem_rw, pts + pts12, title='FP64 intensity sweep · 8 chains (October) and 12 chains · Flat · one socket', x_range=(0.05, 256))
figure(fig, 'atlas_fp64_sweep')
hb = [p for p in pts if p.memory_target == 'hbm']
say_claims(claims.fp64_sweep(ext, thesis, theory))
"""),
    md("""
## 5. Achieved points: BF16 and INT8 GEMM

Each point is one (shape, M) pair of the first sweep. Intensity rises with M because the same weights are reused for more tokens; the point leaves the memory slope when the GEMM becomes compute-limited. The first sweep's pool was about twice the on-chip capacity, so its points at M ≤ 32 are drawn **hollow** (weight traffic overstated); the converged sweep of 14336×4096 (16× pool, M = 1 to 256) and the 64× pool points of 4096×4096 (M = 1, 16, 256) are drawn as their own series.
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

The cores' DRAM counters give the intensity a point actually has. Each BF16 and INT8 point of the 14336×4096 projection appears twice, with modeled and with counted bytes, at the same rate.
"""),
    code("""
cs = [report.compute_ceiling(ext, p, 'flat', 56) for p in ('amx_bf16', 'amx_int8')]
fig = plotting.roofline_figure(cs, [mem_read[0]], report.counted_gemm_points(ext, theory, 'hbm'), title='GEMM 14336×4096 · Flat HBM · modeled and counted bytes', point_labels=True, x_range=(0.5, 4000))
figure(fig, 'atlas_counted_gemm')
say_claims(claims.counted(ext, thesis), ['counted_gemm_weights', 'counted_gemm_prefill'])
"""),
    md("""
**Gap analysis.** Two layers separate the vendor number from library performance: (1) the vendor peak versus what a hand-written tile kernel sustains (the clock the cores actually ran at; compare `measured_over_theory` below); (2) the tile-kernel peak versus an optimized library GEMM (the achieved-over-measured column).

## 6. Ceiling audit: points above their own roofline

A ceiling is only an upper bound if no accepted point lies above it. Each point below is compared with `min(compute ceiling, bandwidth ceiling × intensity)` for its own tier and ISA path; it counts as *exceeding* when it is above that bound by more than the larger of its own and the ceiling's run-to-run spread (CV). Flat GEMM uses the read-only ceiling (weights are only read). Cache-mode GEMM uses the best-kernel ceiling at the pool size of the run (16 GiB resident, 96 GiB spilled), because spilled GEMMs stream faster than the read-only kernel (section 2), so read-only would not bound them.
"""),
    code("""
for pool, ceiling in [(16, resident), (96, spilled)]:
    for dtype, path in [('bf16', 'amx_bf16'), ('int8', 'amx_int8')]:
        sel = gm[(gm.memory_mode == 'cache') & (gm.dtype == dtype) & ((gm.pool_gib - pool).abs() < 0.5)]
        audits.append(roofline.audit_points(report.gemm_workload_points(sel, theory), [ceiling], compute_set('cache', '1S', 56)).assign(group=f'{dtype.upper()} GEMM · Cache · {pool} GiB pool · best-kernel ceiling'))
audits.append(roofline.audit_points(report.gemm_pool_points(ext, 64), mem_read, [report.compute_ceiling(ext, p, 'flat', 56) for p in ('amx_bf16', 'amx_int8')]).assign(group='GEMM · Flat · 64× pool · read-only ceiling'))
audit = pd.concat(audits, ignore_index=True)
summary = audit.groupby('group').agg(points=('exceeds', 'size'), exceeding=('exceeds', 'sum'), max_ratio=('ratio', 'max')).reset_index()
table(summary)
over = audit[audit.exceeds]
say(f"**Result.** {len(over)} of {len(audit)} points lie above their roofline by more than their spread; the largest excess is {audit.ratio.max() - 1:.1%}. "
    f"{int(over.unconverged.sum())} of them are hollow first-sweep points (M ≤ 32, pool too small); {int((~over.unconverged).sum())} are filled.")
assert over.unconverged.all(), 'a converged or large-M point lies above its ceiling'
table(over.sort_values('ratio', ascending=False)[['group', 'series', 'intensity', 'bandwidth_gbs', 'ceiling_gbs', 'ceiling_kernel', 'ratio', 'tolerance_percent', 'unconverged']])
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
The DDR GEMM exceptions of the first sweep were cache reuse in a pool that was too small (counted traffic below modeled; none remain with the 64× pool). The HBM sweep exceedance against Triad was a property of the ceiling, not of the point: a one-load-one-store stream sustains more than Triad, and with the copy kernel as its ceiling the sweeps lie within it. What is listed above is therefore only the first sweep's small-pool GEMM points on DDR, kept for provenance.
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
