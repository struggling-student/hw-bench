# Methods and data

## Measurement definitions

| Experiment | Work and timing |
|---|---|
| Triad | `A = B + 3C`; two FP64 reads and one write: 24 modeled bytes and two FLOPs per element. Allocation size is the total across all arrays. |
| AVX-512 | Twelve independent FP32/FP64 vector FMA accumulators; every FMA counts multiply plus add. Long work blocks amortize OpenMP re-entry and checks. |
| Native AMX | Four destination tiles, two BF16 operand tiles; `2 × 16 × 16 × 32` FLOPs per dot instruction. All destination values are checked against their expected result. |
| oneDNN GEMM | `2MNK` FLOPs, warmed BF16 matrices at sizes 4096, 6144, and 8192. Untimed primitive execution verifies AMX; timed regions omit verbose logging. Four output entries are checked against FP32 dot references, and all outputs must be finite. |
| FP64 intensity sweep | Eight independent AVX-512 chains; modeled source read plus destination write. `2NK` FLOPs over `16N` modeled bytes. |
| Pointer chase | One randomized cyclic permutation of 64-byte nodes, seed 7, 1 GiB total allocation, one core. A full cycle is traversed before timing. ns/load is elapsed time divided by dependent loads, including loop and translation overhead. |

Five duration-based samples follow warm-up. Native work loops complete whole work blocks, so end times can slightly exceed the planned one-second interval. Actual elapsed time determines the rate. CPU and memory masks follow discovered topology and first touch. Native kernels report the actual OpenMP worker count. The oneDNN path retains numactl restrictions and omits inner GNU OpenMP placement variables.

All participants in a concurrent test finish initialization and warm-up before a readiness barrier. The leader publishes a future start using `CLOCK_MONOTONIC`. Per-sample work and start/end times are retained. Aggregate rate is summed work divided by `max(end) − min(start)`, with shared-window overlap of at least 95%. Adding separately timed participant rates is not permitted.

## Data and selection

`measurements.csv` retains individual samples with portable source paths, campaign IDs, memory socket/locality, implementation, matrix shape, modeled traffic, load counts, timing intervals, compiler evidence, and acceptance reasons. `selection_audit.csv` records source-level admission decisions. INT8 remains raw archival evidence and is not normalized into the floating-point study.

Compiler metadata and retained disassembly are read from each campaign's system directory. Failed correctness, invalid timings, worker mismatches, missing ISA evidence, wrong hosts, legacy affinity defects, and dependency-limited sweeps are excluded from thesis statistics. Independent campaigns are never deduplicated; an explicit successful `retry_of` can supersede a source while retaining both records.

`configs/analysis.json` pins a primary memory/sweep campaign per mode and any benchmark-specific compute follow-ups. `summary.csv` summarizes accepted groups without mixing campaign, socket, placement, shape, or implementation. `data/processed/thesis/` contains the exact memory, compute, locality, scaling, knees, concurrent-tier, and theoretical-reference tables used by the notebooks.

Statistics are medians and sample standard deviations of five windows within a run. They describe short-term variation, not confidence intervals over independent machine reboots or allocations. Variation above 5% is retained and flagged. The measured sockets remain separate. No best-socket selection is used.

## Rooflines and reference values

`P(I) = min(P_compute, B × I)` and `I_knee = P_compute / B`. FLOPs, decimal GB/s, and binary GiB are kept distinct. Every pair matches mode, host, socket, and configuration; memory and compute campaign IDs remain explicit. The FP64 sweep is measured; FP32/BF16 have numerical envelopes only. Native AMX and achieved GEMM remain distinct compute references.

Architectural reference rates use 56 cores, documented operation rates, and explicit 1.90 GHz base or 3.50 GHz maximum-turbo clocks. Neither clock reference measures sustained active-core frequency. The envelope is benchmark-specific, not a strict bound on every application or all physical bus traffic.
