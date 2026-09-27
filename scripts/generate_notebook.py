#!/usr/bin/env python3
"""Generate the explanatory Roofline notebook; execute it with nbconvert afterward."""

from pathlib import Path

import nbformat as nbf


ROOT = Path(__file__).resolve().parents[1]
NOTEBOOK = ROOT / "notebooks" / "roofline_analysis.ipynb"
cells = []


def md(source: str) -> None:
    cells.append(nbf.v4.new_markdown_cell(source.strip()))


def code(source: str) -> None:
    cells.append(nbf.v4.new_code_cell(source.strip()))


md("""
# CRESCO8 Xeon Max: complete measured Roofline

Two Intel Xeon CPU Max 9480 sockets; 56 physical cores per socket. This notebook combines
the validated Flat- and Cache-Mode campaigns into one quantitative view. **Solid colored
lines are bandwidth-derived ceilings, the dotted dark line is a separately measured compute
ceiling, and open circles are measured FP64 intensity-sweep points.** All bandwidths use
steady-state STREAM-model Triad traffic. The companion HTML charts in `figures/` are
self-contained and interactive.

The four compute paths are intentionally separate: FP32/FP64/BF16 use FLOP/s and
FLOP/byte; INT8 uses OP/s and OP/byte. A workload point measured for one path is **not**
presented as a measurement of another path.
""")

code("""
from pathlib import Path
import json, sys
import pandas as pd
import plotly.io as pio
from IPython.display import Markdown, display

ROOT = Path.cwd()
if not (ROOT / 'data').exists(): ROOT = ROOT.parent
sys.path.insert(0, str(ROOT / 'src'))
from hwbench.analysis import (load_measurements, build_figures, executive_summary,
                              knees_table, theoretical_table, memory_theoretical_table)
pio.renderers.default = 'notebook'
df = load_measurements(ROOT / 'data/processed/measurements.csv')
summary = executive_summary(df)
figures = build_figures(df)
topologies = {mode: json.loads((ROOT / f'data/processed/topology_{mode}.json').read_text())
              for mode in ('flat', 'cache')}
validation = json.loads((ROOT / 'data/processed/validation.json').read_text())
assert validation['status'] == 'passed' and not validation['errors']
def explain(title, what, how, result, caveat):
    display(Markdown(f'''### {title}

**What this plot shows.** {what}

**How to read it.** {how}

**What the data tells us.** {result}

**Caveats.** {caveat}'''))
""")

md("""
## 1. Results at a glance

The values below are medians of the accepted full-core measurements. Single-socket
ceilings use the best measured socket/configuration for that path; the two-socket values
are simultaneous dual-socket runs, not an extrapolation from one socket. The complete
tables and provenance remain in `data/processed/`.
""")
code("""
display(Markdown(f'''| Measured path | One socket | Two sockets |
|:--|--:|--:|
| Flat HBM Triad | {summary['flat_hbm_peak_gbs_socket']:.1f} GB/s | {summary['flat_hbm_peak_gbs_dual']:.1f} GB/s |
| Flat DDR Triad | {summary['flat_ddr_peak_gbs_socket']:.1f} GB/s | {summary['flat_ddr_peak_gbs_dual']:.1f} GB/s |
| AVX-512 FP64 | {summary['avx512_fp64_peak_gflops_socket']/1000:.2f} TFLOP/s | {summary['avx512_fp64_peak_gflops_dual']/1000:.2f} TFLOP/s |
| AVX-512 FP32 | {summary['avx512_fp32_peak_gflops_socket']/1000:.2f} TFLOP/s | {summary['avx512_fp32_peak_gflops_dual']/1000:.2f} TFLOP/s |
| AMX BF16 | {summary['amx_bf16_peak_gflops_socket']/1000:.2f} TFLOP/s | {summary['amx_bf16_peak_gflops_dual']/1000:.2f} TFLOP/s |
| AMX INT8 | {summary['amx_int8_peak_gops_socket']/1000:.2f} TOPS | {summary['amx_int8_peak_gops_dual']/1000:.2f} TOPS |

Flat HBM / Flat DDR sustainable bandwidth: **{summary['flat_hbm_over_ddr']:.2f}×**.
Cache Mode effective Triad bandwidth: **{summary['cache_effective_peak_gbs_socket']:.1f} GB/s**
at 16 GiB/socket and **{summary['cache_above_hbm_gbs_socket']:.1f} GB/s** at 96 GiB/socket.'''))
""")
md("""
### Hardware topology verified on both configurations

Flat Mode exposes CPU-bearing DDR NUMA nodes and separate CPU-less HBM nodes. The
mapping below comes from actual capacity, CPU association, and NUMA distances—not
an assumed Linux node number. Cache Mode exposes only CPU/DDR NUMA nodes. Both
nodes have two sockets, 56 physical cores per socket, and one thread per core.
""")
code("""
topology_rows = []
for mode, topology in topologies.items():
    for socket in topology['sockets']:
        topology_rows.append({'Mode':mode.title(), 'Socket':socket['socket'],
          'CPU NUMA':','.join(map(str,socket['cpu_nodes'])),
          'DDR NUMA':','.join(map(str,socket['ddr_nodes'])),
          'HBM NUMA':','.join(map(str,socket['hbm_nodes'])) or 'transparent',
          'Physical cores':socket['physical_cores']})
display(pd.DataFrame(topology_rows).style.hide(axis='index'))
display(Markdown('Flat HBM capacity: **64 GiB/socket**; Flat DDR capacity: '
                 '**approximately 503 GiB/socket**. In Cache Mode, HBM is not an addressable NUMA tier.'))
""")

md(r"""
## 2. The complete Roofline: all compute paths and measured memory regimes

For arithmetic intensity \(I\), each envelope is \(P(I)=\min(P_{\mathrm{compute}},B I)\).
The **four bandwidth cases** are measured Flat DDR (8 GiB), Flat HBM (8 GiB),
Cache Mode effective bandwidth at 16 GiB/socket, and Cache Mode effective bandwidth
at 96 GiB/socket. The Cache curves are working-set *cases*, not independently addressable
DDR/HBM tiers. A dashed Cache curve close to the solid HBM curve does not prove every
access hit HBM.

Hover an interactive curve for its bandwidth and knee (compute peak divided by
bandwidth). Open circles appear only in FP64 because only the FP64 intensity kernel was
measured. FP32, BF16, and INT8 panels are measured **ceilings**, not workload-validation
plots. The dark compute peak is the best accepted full-socket value across the measured
modes; thus the panels are architecture-wide envelopes rather than a promise that one
individual application will achieve every ceiling simultaneously.
""")
code("""
explain('Single-socket complete Roofline',
        'Four compute paths against all four measured memory working-set cases.',
        'Log–log panels use TFLOP/s and FLOP/byte, except INT8 (TOPS and OP/byte); open circles are FP64 sweep medians.',
        f"Flat HBM provides {summary['flat_hbm_over_ddr']:.2f}× Flat DDR Triad bandwidth, so its memory-bound line and knee shift accordingly.",
        'Compute peaks are best accepted values across modes; Cache lines are effective working-set cases, not attributable tier traffic.')
figures['roofline_overview_single'].show()
""")
md("""
The full-node view uses **measured simultaneous two-socket bandwidth and compute values**.
It does not reuse the single-socket ceilings or double them mathematically. No dual-socket
intensity sweep was run, so this view correctly has no empirical workload markers.
""")
code("""
explain('Dual-socket complete Roofline',
        'The same four paths and four memory cases, using full-node simultaneous measurements.',
        'Curve slopes are measured dual-socket GB/s; plateaus are measured dual-socket compute throughput.',
        f"The full node sustains {summary['flat_hbm_peak_gbs_dual']:.1f} GB/s Flat HBM and {summary['flat_ddr_peak_gbs_dual']:.1f} GB/s Flat DDR.",
        'There are no dual-socket intensity-sweep measurements; the figure is an envelope, not a measured workload scatter plot.')
figures['roofline_overview_dual'].show()
""")

md(r"""
### Where the memory limit meets each compute ceiling

The knee is \(I_\mathrm{knee}=P_\mathrm{compute}/B\). Below it, the envelope is
bandwidth-limited; above it, compute-limited. INT8 entries are OP/byte, while the
floating-point entries are FLOP/byte. These knees inherit the benchmark-specific
operation and traffic models; they are not universal application thresholds.
""")
code("""
knees = knees_table(df)
display(knees.rename(columns={'compute_path':'Path','memory_system':'Memory case',
                              'measured_compute_gops':'Compute (GOP/s)',
                              'measured_bandwidth_gbs':'Bandwidth (GB/s)',
                              'critical_intensity_ops_per_byte':'Knee (OP/byte)'})
        .style.format({'Compute (GOP/s)':'{:.1f}', 'Bandwidth (GB/s)':'{:.1f}',
                       'Knee (OP/byte)':'{:.2f}'})
        .hide(axis='index'))
""")

md("""
## 3. Memory evidence behind the diagonal ceilings

The 8 GiB Triad scaling comparison keeps the working set fixed across memory treatments.
Markers are medians and error bars are run-to-run standard deviations. Flat DDR and HBM
are explicit NUMA placements; Cache Mode is effective bandwidth only. The x-axis is
logarithmic so 1, 2, 4, …, 56 physical cores remain legible.
""")
code("""
explain('Core-count bandwidth scaling',
        'Steady Triad bandwidth for Flat DDR, Flat HBM, and Cache Mode at 8 GiB/socket.',
        'Logarithmic core count; points are medians and bars are standard deviations.',
        f"At 56 cores, Flat HBM reaches {summary['flat_hbm_peak_gbs_socket']:.1f} GB/s versus {summary['flat_ddr_peak_gbs_socket']:.1f} GB/s for DDR.",
        'Cache Mode is effective bandwidth only; frequency and NUMA contention may vary between runs.')
figures['bandwidth_scaling'].show()
""")
md("""
Cache Mode cannot expose HBM as a NUMA target. The next chart therefore changes the
**working set per socket**, and separates one socket from two sockets so their absolute
GB/s values are not conflated. The 64 GiB marker is nominal HBM capacity per socket,
not an empirically sharp change point: bandwidth already declines as the working set
grows toward it. The first timed pass follows initialization/first touch; it is **not**
a pristine cold-cache measurement. Error bars show variability, including wider spread
at some intermediate capacities.
""")
code("""
explain('Cache capacity response',
        'Effective Cache Mode bandwidth from 8 to 128 GiB per socket, for one and two sockets.',
        'Solid lines are steady runs, dashed lines the first timed pass; the dotted marker is 64 GiB HBM capacity per socket.',
        f"The representative 16 GiB case gives {summary['cache_effective_peak_gbs_socket']:.1f} GB/s; 96 GiB gives {summary['cache_above_hbm_gbs_socket']:.1f} GB/s on one socket.",
        'Performance declines progressively, not at an exact step; first timed passes follow initialization and are not pristine cold-cache data.')
figures['cache_working_set'].show()
""")
md("""
The four representative single-socket bandwidth ceilings are compared below. **Do not
interpret the Cache bars as explicit tier bandwidths:** they are 16 GiB and 96 GiB
working-set outcomes, whereas both Flat bars use 8 GiB and explicit memory binding.
""")
code("""
explain('Representative memory regimes',
        'The four bandwidth values used as Roofline slopes on one socket.',
        'Horizontal bars are steady Triad GB/s; Flat uses 8 GiB and Cache uses 16 or 96 GiB/socket.',
        f"Flat HBM is {summary['flat_hbm_over_ddr']:.2f}× Flat DDR in the matched 8 GiB comparison.",
        'The Cache bars have different working-set sizes and are not explicit DDR-versus-HBM placement controls.')
figures['mode_comparison'].show()
""")
md("""
### Driving local DDR and HBM simultaneously

The migrated membench campaign also split one Flat socket's 56 physical cores into
two 28-core processes, each with an 8 GiB working set bound to its local tier.
This is a concurrent-tier diagnostic, **not** a fifth Roofline bandwidth ceiling:
the combined workload and per-tier core allocation differ from the 56-core,
single-tier Triad used for the main envelopes.
""")
code("""
concurrent = df[(df.memory_mode == 'flat') & (df.phase == 'steady') &
                (df.socket_scope == 'concurrent_tiers')]
concurrent_median = concurrent.bandwidth_gbs.median()
concurrent_cv = 100 * concurrent.bandwidth_gbs.std() / concurrent.bandwidth_gbs.mean()
explain('Concurrent Flat DDR and HBM',
        'Bandwidth from two 28-core processes on one socket, bound separately to local DDR and HBM.',
        'The first two bars are process components; the combined bar is their concurrent aggregate. Error bars are run-to-run standard deviations.',
        f'The combined median is {concurrent_median:.1f} GB/s across five steady passes.',
        f'The aggregate CV is {concurrent_cv:.1f}%; this diagnostic has higher variance and different working-set/core allocation than the main Roofline ceilings.')
figures['concurrent_tiers'].show()
""")

md("""
## 4. Compute evidence behind the horizontal ceilings

AVX-512 FP32 and FP64 use twelve independent register-resident FMA accumulator chains;
the measured operation count includes multiply and add. BF16 is a verified AMX oneDNN
6144³ GEMM, while INT8 is a disassembly-verified native `tdpbssd` tile kernel. The
AMX panels use **different units** (TFLOP/s versus TOPS) and deliberately have
independent vertical scales. For BF16, accepted runs omit a harmful GNU OpenMP binding
combination while retaining explicit `numactl` placement; rejected probes remain in
the raw data but do not set ceilings.
""")
code("""
explain('AVX-512 throughput scaling',
        'Register-resident FP64 and FP32 FMA throughput versus physical cores.',
        'The y-axis is TFLOP/s and each FMA counts a multiply and an add.',
        f"Full-socket FP64 reaches {summary['avx512_fp64_peak_gflops_socket']/1000:.2f} TFLOP/s and FP32 {summary['avx512_fp32_peak_gflops_socket']/1000:.2f} TFLOP/s.",
        'Sustained AVX frequency can differ from nominal/base frequency; this kernel is a compute ceiling, not an application.')
figures['avx512_scaling'].show()
explain('AMX throughput scaling',
        'Verified BF16 oneDNN GEMM and native INT8 tile-dot throughput versus physical cores.',
        'The left panel is TFLOP/s; the right is TOPS, with independent vertical scales.',
        f"Full-socket BF16 reaches {summary['amx_bf16_peak_gflops_socket']/1000:.2f} TFLOP/s and INT8 {summary['amx_int8_peak_gops_socket']/1000:.2f} TOPS.",
        'The BF16 library GEMM and native INT8 tile kernel differ in scheduling and data reuse; cross-dtype numerical ratios are not workload speedups.')
figures['amx_scaling'].show()
""")

md("""
## 5. Detailed Rooflines and the measured FP64 sweep

The panels below enlarge the overview. FP64 open circles are corrected, eight-chain
intensity-sweep medians, with explicit source-and-destination traffic accounting.
The full-socket compute ceiling comes from a separate register-resident kernel; the
intensity workload is **not** expected to coincide with that ceiling at every intensity.
Flat Mode uses explicit DDR/HBM placement. Cache Mode compares below- and above-capacity
working-set probes and cannot attribute individual accesses to either tier.
""")
code("""
explain('Flat FP64 with measured workloads',
        'Explicit DDR and HBM FP64 Rooflines with corrected intensity-sweep points.',
        'Log–log lines are bandwidth envelopes; open circles are sweep medians and the dotted line is the separate AVX compute peak.',
        f"The Flat HBM and DDR knees are {summary['avx512_fp64_peak_gflops_socket']/summary['flat_hbm_peak_gbs_socket']:.2f} and {summary['avx512_fp64_peak_gflops_socket']/summary['flat_ddr_peak_gbs_socket']:.2f} FLOP/byte.",
        'Sweep traffic is modeled source/destination bytes; cache effects and execution overhead can keep points below the envelope.')
figures['flat_fp64_roofline'].show()
explain('Cache FP64 working-set envelopes',
        'FP64 Rooflines and sweep points at 16 and 96 GiB per socket in transparent-HBM Cache Mode.',
        'Green and brown dashed cases use their measured effective Triad bandwidths; open circles are corrected sweep medians.',
        f"Bandwidth changes from {summary['cache_effective_peak_gbs_socket']:.1f} to {summary['cache_above_hbm_gbs_socket']:.1f} GB/s between these cases.",
        'These are not directly selected HBM and DDR; cache replacement and warm-up affect the observed bandwidth.')
figures['cache_roofline'].show()
""")
md("""
The other three Flat Mode plots display measured bandwidth and compute ceilings without
inventing FP32/BF16/INT8 intensity-sweep points. Their Cache Mode counterparts are
present in the complete overview above. In particular, INT8 is reported as OP/s and
OP/byte rather than treating integer operations as FLOPs.
""")
code("""
for name, dtype, peak, unit in (
    ('flat_fp32_roofline','FP32',summary['avx512_fp32_peak_gflops_socket']/1000,'TFLOP/s'),
    ('flat_bf16_roofline','BF16',summary['amx_bf16_peak_gflops_socket']/1000,'TFLOP/s'),
    ('flat_int8_roofline','INT8',summary['amx_int8_peak_gops_socket']/1000,'TOPS')):
    explain(f'Flat {dtype} ceiling',
            f'DDR and HBM bandwidth envelopes capped by the measured {dtype} compute ceiling.',
            'Log–log axes show intensity versus throughput; the dotted horizontal line is the compute peak.',
            f'The accepted full-socket {dtype} compute peak is {peak:.2f} {unit}; HBM raises the memory-bound line.',
            'No matched workload intensity sweep was run for this dtype, so no empirical scatter points are shown.')
    figures[name].show()
""")

md("""
## 6. Two-socket scaling

Each bar is the simultaneously measured two-socket value divided by twice the
full-core single-socket median for the same path and mode. One means ideal linear
scaling, not 100% of theoretical silicon throughput. Bandwidth bars refer to 8 GiB
per socket, locally bound on both sockets. This ratio can reflect socket asymmetry,
frequency shifts, scheduling, and memory contention; no causal decomposition is
claimed without performance counters.
""")
code("""
explain('Two-socket scaling efficiency',
        'Simultaneous two-socket throughput divided by twice one-socket throughput for each path and mode.',
        'A ratio of 1 marks ideal linear scaling; bars distinguish Flat and Cache configurations.',
        f"Flat HBM achieves {summary['flat_hbm_peak_gbs_dual']/(2*summary['flat_hbm_peak_gbs_socket']):.2f}× of ideal scaling by this peak-socket denominator.",
        'A ratio above one can result from socket asymmetry or different frequency/measurement conditions; the chart does not identify the cause.')
figures['dual_scaling'].show()
""")

md("""
## 7. Theoretical references and measured efficiency

Theory is kept **separate** from the empirical Roofline. The core-count × operation-rate
× clock model uses 56 cores/socket and 1.90 GHz base frequency. Intel's published
3.50 GHz maximum turbo is an upper clock reference, **not** a guaranteed all-core
AVX-512 or AMX frequency. Consequently, a result above the base-clock estimate is
possible and is not evidence of a measurement error. DDR pin bandwidth uses eight
DDR5-4800 channels; the HBM figure is Intel's up-to specification. Sustained Triad
GB/s need not equal pin bandwidth.

Primary sources: [Xeon Max 9480 specifications](https://www.intel.com/content/www/us/en/products/sku/232592/intel-xeon-cpu-max-9480-processor-112-5m-cache-1-90-ghz/specifications.html),
[Intel technical overview](https://www.intel.com/content/www/us/en/developer/articles/technical/xeon-scalable-processor-max-series.html),
[Intel Architecture Day operations/cycle](https://download.intel.com/newsroom/2021/client-computing/intel-architecture-day-2021-presentation.pdf),
[configuration and tuning guide](https://cdrdv2-public.intel.com/782255/354227-intel-xeon-cpu-max-series-configuration-and-tuning-guide-1.pdf).
""")
code("""
theory = theoretical_table(df,topologies['flat'])
display(theory.style.format({'clock_assumption_ghz':'{:.2f}', 'max_turbo_ghz':'{:.2f}',
 'base_clock_theoretical_gops':'{:.1f}', 'max_turbo_bound_gops':'{:.1f}',
 'measured_gops':'{:.1f}', 'efficiency_vs_base_percent':'{:.1f}%',
 'efficiency_vs_max_turbo_percent':'{:.1f}%', 'implied_clock_ghz':'{:.2f}'}).hide(axis='index'))
display(memory_theoretical_table(df,topologies['flat']).style.format({
 'theoretical_gbs':'{:.1f}', 'measured_gbs':'{:.1f}',
 'efficiency_percent':'{:.1f}%'}).hide(axis='index'))
""")

md("""
## 8. Provenance, uncertainty, and exclusions

The automatic validator passed. Raw records retain commands, affinity, environment,
frequency samples, timings, checksums, and stdout/stderr. Normalization retains every
individual measurement; the summary CSV reports median, standard deviation,
coefficient of variation, and a >5% variance flag. Warnings below document preserved
but excluded exploratory runs, not silently discarded data. A few accepted points may
still be noisy; inspect per-group CV before interpreting small differences.
""")
code("""
display(Markdown(f"**Validation:** {validation['status']} · {validation['raw_record_count']} raw records · "
                 f"{validation['normalized_row_count']} normalized rows · "
                 f"{len(validation['errors'])} errors · {len(validation['warnings'])} documented warnings."))
for warning in validation['warnings']:
    display(Markdown('- ' + warning))
stats = pd.read_csv(ROOT / 'data/processed/summary.csv')
noisy = stats[(stats['excessive_variance'].astype(str).str.lower() == 'true') & (stats['n'] >= 3)]
display(Markdown(f'**Accepted/reported groups above 5% CV:** {len(noisy)}. The highest-CV rows follow; '
                 'some correspond to superseded runs and are retained only for audit.'))
display(noisy.sort_values('cv_percent',ascending=False).head(12)[[
 'memory_mode','socket_scope','benchmark','memory_target','dtype','threads',
 'working_set_bytes','arithmetic_intensity','metric','n','median','cv_percent','notes']]
 .style.format({'median':'{:.2f}','cv_percent':'{:.1f}%'}).hide(axis='index'))
""")

md("""
## 9. Conclusions and limits

The following deliberately separates direct observations from interpretation and
untested mechanisms.
""")
code("""
display(Markdown(f'''**Observation.** Explicit Flat HBM sustains
{summary['flat_hbm_peak_gbs_socket']:.1f} GB/s per socket, {summary['flat_hbm_over_ddr']:.2f}×
Flat DDR. Cache Mode effective Triad bandwidth drops from
{summary['cache_effective_peak_gbs_socket']:.1f} GB/s at 16 GiB/socket to
{summary['cache_above_hbm_gbs_socket']:.1f} GB/s at 96 GiB/socket. Corrected FP64
intensity points follow the expected memory-bound trends and approach, but do not
uniformly reach, the separately measured compute ceiling.

**Interpretation.** Flat HBM meaningfully raises the memory-bound FP64 roof and
reduces its knee from
{summary['avx512_fp64_peak_gflops_socket']/summary['flat_ddr_peak_gbs_socket']:.2f}
to {summary['avx512_fp64_peak_gflops_socket']/summary['flat_hbm_peak_gbs_socket']:.2f}
FLOP/byte. Larger Cache working sets exert more capacity pressure, reducing effective
bandwidth; individual HBM hit rates were not measured. FP32, BF16, and INT8
Rooflines are measured bandwidth/compute envelopes, not measured workload validation.

**Hypothesis requiring counters.** Sustained-frequency changes, scheduling differences,
cache replacement, and memory-controller contention may explain residual gaps and
some variability. The base environment did not provide counter-based HBM traffic,
cache hit rate, throttling, or energy measurements, so no attribution is claimed.'''))
""")

for index, cell in enumerate(cells):
    cell["id"] = f"hwbench-cell-{index:03d}"

notebook = nbf.v4.new_notebook(cells=cells, metadata={"kernelspec": {
    "display_name": "Python 3", "language": "python", "name": "python3"},
    "language_info": {"name": "python"}})
NOTEBOOK.parent.mkdir(parents=True,exist_ok=True)
nbf.write(notebook,NOTEBOOK)
print(f"Wrote {NOTEBOOK} with {len(cells)} cells")
