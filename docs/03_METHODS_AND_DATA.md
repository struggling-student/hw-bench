# Methods and data

## Measurement definitions

| Experiment | Work and timing |
| --- | --- |
| Triad | `A = B + 3C`; two FP64 reads and one write: 24 modeled bytes and two FLOPs per element. Allocation size is the total across all arrays. Ordinary stores: the destination line may be read first (write-allocate), which the counted 24 B ignore. |
| Triad, non-temporal | Same arithmetic and bytes with streaming stores (`vmovntpd`): no read of the destination, so counted equals moved bytes. |
| Read-only | Eight independent AVX-512 load/add accumulators over a private array per thread, first-touched by its owner; each thread loops to the shared deadline with no barrier. 8 B per element. `--per-thread` makes the size per core (hierarchy sweep), otherwise it is the socket total. |
| AVX-512 FP32/FP64 | Twelve independent FMA accumulators; every FMA counts multiply plus add. Result checksummed against a scalar reference. |
| AVX-512 VNNI | Twelve independent `vpdpbusd` chains (16 lanes × 4 byte-products × 2 operations = 128 per instruction); integer sum compared exactly. |
| AVX-512 BF16 | Twelve independent `vdpbf16ps` chains (16 lanes × 2 products × 2 = 64 per instruction); sum exact in FP32 and compared exactly. |
| Native AMX BF16 / INT8 | Four destination tiles, two operand tiles; `tdpbf16ps` = 16 384, `tdpbssd` = 32 768 operations per instruction. Every output element is checked against its expected value. |
| oneDNN GEMM sweep | `y = x Wᵀ`, `x` of shape M×K, weight N×K; `2MNK` operations per call; modeled bytes = weights + `x` + `y`. Weights are a round-robin pool of identical copies at distinct addresses, at least four times the L3 (Flat) or 16 / 96 GiB (Cache: resident / spilled). Untimed verbose execution proves an AMX implementation; four outputs are checked against references. INT8 runs only if the probe finds a oneDNN path whose verbose log names AMX (`onednn.qlinear_pointwise`, u8×s8). |
| FP64 intensity sweep | Eight independent AVX-512 chains; modeled source read plus destination write. `2NK` FLOPs over `16N` modeled bytes. |
| Pointer chase | One randomized cyclic permutation of 64-byte nodes, seed 7, working set 16 KiB–4 GiB (1 GiB in the October idle-latency measurement), one core. A full cycle is traversed before timing. ns/load is elapsed time over dependent loads, including loop and translation overhead. |
| Span | One process, 112 threads, 16 GiB. *Interleave*: `numactl --interleave` over both sockets' tier; *first-touch*: `--membind` to both nodes with each thread's pages allocated local. |

**Effective clock and AMX activity.** Every native kernel opens, per OpenMP thread, user-mode `cycles` and the raw event `EXE.AMX_BUSY` (0x02B7) with `perf_event_open`, which works at `perf_event_paranoid=2` because it is per-thread and excludes the kernel. `ghz_effective = Σ cycles / (threads × elapsed)`; `amx_busy_frac = Σ AMX_BUSY / Σ cycles`. Efficiency is reported against the base-clock peak and against the peak at the effective clock.

Five duration-based samples follow warm-up. Native work loops complete whole work blocks, so end times can slightly exceed the planned one-second interval. Actual elapsed time determines the rate. CPU and memory masks follow discovered topology and first touch. Native kernels report the actual OpenMP worker count. The oneDNN path retains numactl restrictions and omits inner GNU OpenMP placement variables.

All participants in a concurrent test finish initialization and warm-up before a readiness barrier. The leader publishes a future start using `CLOCK_MONOTONIC`. Per-sample work and start/end times are retained. Aggregate rate is summed work divided by `max(end) − min(start)`, with shared-window overlap of at least 95%. Adding separately timed participant rates is not permitted.

## Data and selection

`measurements.csv` retains individual samples with portable source paths, campaign IDs, memory socket/locality, implementation, matrix shape, modeled traffic, load counts, timing intervals, compiler evidence, and acceptance reasons. `selection_audit.csv` records source-level admission decisions. INT8 appears only in the September (schema 1.0) campaign, which is archival and rejected as `int8_out_of_scope`; the extended INT8 kernels are in scope.

Compiler metadata and retained disassembly are read from each campaign's system directory. Failed correctness, invalid timings, worker mismatches, missing ISA evidence, wrong hosts, legacy affinity defects, and dependency-limited sweeps are excluded from thesis statistics. Independent campaigns are never deduplicated; an explicit successful `retry_of` can supersede a source while retaining both records.

`configs/analysis.json` pins a primary memory/sweep campaign per mode, benchmark-specific compute follow-ups, a `supersede` campaign per mode whose longer synchronized windows replace exactly the configurations they re-measured, and the `extended_campaigns` (ISA, bandwidth, hierarchy, GEMM, span, repeat) selected by `hwbench.extended`. Provenance columns `launch_method`, `node`, `memory_mode_verified`, `source_sha256`, `ghz_effective` and `amx_busy_frac` travel with every sample. `summary.csv` summarizes accepted groups without mixing campaign, socket, placement, shape, or implementation. `data/processed/thesis/` contains the exact memory, compute, locality, scaling, knees, concurrent-tier, and theoretical-reference tables used by the notebooks.

Statistics are medians and sample standard deviations of five windows within a run. They describe short-term variation, not confidence intervals over independent machine reboots or allocations. Variation above 5% is retained and flagged. The measured sockets remain separate. No best-socket selection is used.

## Rooflines and reference values

`P(I) = min(P_compute, B × I)` and `I_ridge = P_compute / B`. Operations, decimal GB/s and binary GiB are kept distinct. Every pair matches mode and socket scope; campaign ids stay in the tables. The primary memory ceiling is the best sustained of Triad, non-temporal Triad and read-only (ERT convention); Cache mode distinguishes data resident in the HBM cache (≤ 16 GiB) from data spilled to DDR (96 GiB). Cache-mode Triad takes part in that choice (it is the best kernel past the HBM cache). Where the access pattern is known the ceiling is workload-matched: read-only for GEMM weights, best read/write kernel for the FP64 intensity sweep. Every achieved point is audited against `min(compute, bandwidth × intensity)` for its own tier and path (`roofline.audit_points`); a point above that bound by more than the larger of its own and the ceiling's coefficient of variation is listed in the atlas notebook (section 6) with its ceiling, not hidden. Compute ceilings are measured per execution path at the core count of the workload.

Theoretical peaks come from `configs/theory.toml`: per-path operations per cycle (vendor statement or derivation, flagged), 56 cores per socket, and the 1.9 GHz base clock. Because the cores run at 2.0 GHz (AMX) to 2.6 GHz (VNNI) in these kernels, efficiency at the effective clock is the meaningful figure. DDR5-4800 × 8 channels = 307.2 GB/s per socket; the HBM figure is Intel's rounded "up to 1 TB/s" and no bottom-up peak is derived. The firmware (ACPI HMAT) advertises 262 GB/s DDR and 869 GB/s HBM read bandwidth per socket; these appear in the platform record, not as ceilings.

## Uncertainty and conventions

* **Reference socket.** Every headline number is socket 0; socket 1 is shown as a difference (`local_remote_table`) or in the tables that list both sockets. Averaging the two sockets is not used for a headline.
* **Like for like.** A ratio between tiers compares the same kernel on both (HBM over DDR is 2.07× read-only, 2.36× Triad, 2.35× non-temporal Triad); a ceiling may use a different kernel per tier only when it says so.
* **Within a run.** Five one-second samples per configuration; the figures quote the median with the minimum and maximum. The coefficient of variation is computed per *configuration* (benchmark, tier, threads, working set, GEMM shape and batch), never pooled across shapes.
* **Between runs.** Repeat campaigns (`xcheck`) give a cross-run deviation: same node for Flat, a second node for Cache. Table 1 of the master notebook carries it next to the sample spread, using the quantity's own repeat where one exists and its family's otherwise, and says which. The total is their sum.
* **First window.** In Cache mode the first window of a GEMM on a pool larger than the HBM cache is cold; medians are unaffected (under 3%), minima are not steady-state.
* **Ridge points.** `thesis/knees.csv` uses the October Triad bandwidth of its tier (its `bandwidth_kernel` column says so); the master and atlas ridges use the best sustained kernel or the workload-matched ceiling, so the two differ by up to the Triad-to-read ratio on DDR.
