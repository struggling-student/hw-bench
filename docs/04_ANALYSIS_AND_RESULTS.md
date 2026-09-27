# 04 — Analysis and results

The executed [Plotly notebook](../notebooks/roofline_analysis.ipynb) is the complete
local report. Every major figure has four short explanations: what it shows, how
to read it, what the measured data says, and its caveats. The generated HTML plots
under `figures/` are self-contained and interactive; PNG export is optional.

## Measured full-core ceilings

| Path | One socket | Two sockets |
| --- | ---: | ---: |
| Flat HBM Triad | 559.6 GB/s | 1,226.2 GB/s |
| Flat DDR Triad | 235.5 GB/s | 469.9 GB/s |
| AVX-512 FP64 | 4.13 TFLOP/s | 8.24 TFLOP/s |
| AVX-512 FP32 | 8.26 TFLOP/s | 16.47 TFLOP/s |
| AMX BF16 | 27.59 TFLOP/s | 54.66 TFLOP/s |
| AMX INT8 | 218.44 TOPS | 434.45 TOPS |

Flat HBM sustained 2.38× Flat DDR bandwidth per socket for the matched 8 GiB
Triad comparison. Cache Mode delivered 530.5 GB/s at 16 GiB/socket and
193.5 GB/s at 96 GiB/socket. The latter are **effective working-set results**,
not independently addressable HBM and DDR readings.

## Figure guide

| Figure | Main question |
| --- | --- |
| `roofline_overview_single`, `roofline_overview_dual` | How do all four compute paths and four measured memory cases interact for one socket and the full node? |
| `bandwidth_scaling`, `cache_working_set` | How does Triad bandwidth scale with cores and Cache working-set size? |
| `avx512_scaling`, `amx_scaling` | How do FP32/FP64 and BF16/INT8 compute throughput scale, without mixing floating and integer units? |
| `flat_fp64_roofline`, `cache_roofline` | Where do corrected **measured FP64** sweep points fall relative to their envelopes? |
| `flat_fp32_roofline`, `flat_bf16_roofline`, `flat_int8_roofline` | What are the measured compute/bandwidth envelopes where no matched intensity sweep was run? |
| `mode_comparison`, `concurrent_tiers`, `dual_scaling` | How do memory regimes compare, what occurs when DDR/HBM are driven together, and how close is dual-socket scaling to linear? |

The one-socket overview combines **four panels**, not one overloaded axis: FP64,
FP32, BF16, and INT8. A dark horizontal line denotes the measured compute
ceiling, solid colored lines Flat DDR/HBM, dashed colored lines the two Cache
working-set cases, and open markers corrected measured FP64 points. Exact knees
are in the notebook table and each interactive trace's hover information.

Examples: the FP64 Flat HBM knee is **7.38 FLOP/byte**, versus **17.54 FLOP/byte**
for Flat DDR. BF16's corresponding knees are **49.29** and **117.14 FLOP/byte**.
INT8 knees use **OP/byte**, not FLOP/byte. These are benchmark-model thresholds,
not guarantees about an arbitrary application.

## Theoretical references and limitations

The notebook separates architecture-derived reference values from measured
ceilings. It uses the detected 56 physical cores/socket, Intel Xeon CPU Max 9480
operation rates, and an explicit 1.90 GHz base-clock assumption. The 3.50 GHz
maximum-turbo model is an upper clock reference, **not** a guaranteed all-core
AVX-512/AMX frequency. DDR pin bandwidth and Intel's up-to HBM figure are
comparison references only; every plotted memory slope is measured sustainable
Triad bandwidth. Primary sources are listed in the [README](../README.md#theoretical-sources).

No counter-based HBM traffic, Cache hit rate, power/energy, or throttling
attribution was available in the base environment. The 6144³ oneDNN BF16 GEMM
and native INT8 tile kernel also have different scheduling and data-reuse
behavior. The [validation appendix](VALIDATION.md) documents excluded superseded
runs and residual variance rather than hiding them.
