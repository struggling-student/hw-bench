# Experimental gaps and execution plan

**Blocking cluster measurements for the scoped hardware chapter: none.** State the measured operating points, use conditional explanations, and keep full-model evaluation in the later inference chapter. Existing raw records cover local Flat tiers, both sockets, remote placement, Cache capacity and latency, compute paths, matched Cache counters and power. The [evidence matrix](SCIENTIFIC_CLAIMS.md) records the scope of each claim.

## Completed and sufficient

| Question | Completion evidence |
| --- | --- |
| Sustained versus transient bandwidth and performance relative to STREAM | The primary and counted Flat sweeps plus E1–E7c already vary read/write mix, input pattern, unroll, compiler, size, placement and windows. E6/E7c supply package and uncore observations. |
| Cache hit, spill and latency | October 31 base-counter `ucapacity`, `ucacherep`, `ucachelat`, `ugemm` and `uatlas` cover the central working sets after diagnosing the tag-session perturbation. The older OCR sweep remains a separate diagnostic. |
| Concurrent socket scaling and energy | Completed `udual`, `uidle` and November Flat read search. The size-specific independent-worker conclusion is sufficient. Additional split rankings are unnecessary for this chapter. |
| Low- and high-intensity GEMMs | Counted Flat `ugemmconv`, Flat/Cache `uatlas`, pool and layout controls, and the FP64 sweep cover the benchmark regimes. The extensive earlier small-pool sweep and further variants are supporting material. |

## Optional experiments if the thesis claim expands

| Priority and research question | Minimal design, outputs and decision rule |
| --- | --- |
| **Valuable but optional**. What changes if PL1 or uncore frequency is changed independently of core count? Current controls support a power-conditioned interpretation, and the independent causal effect is missing. | Subject to site approval and access to the controls, reuse the E6 `stream_gap` read and E7c Triad with fixed Flat local HBM placement, 56 physical cores, array size and values, and matched DDR and lower-core controls. Run the default plus one achievable alternate PL1 level, verify effective core and CHA frequency, read BIOS/kernel state and PL1 before each block, and record CAS, PCU, RAPL and thermal counters. If controllable, use a separate fixed-PL1 uncore comparison. Three interleaved launches per cell at ≥10 s steady, report medians, full launch ranges and counter coverage. Require a reproducible bandwidth shift beyond overlapping launch variation and verified separation of the requested settings before attributing a causal effect. One exclusive node, roughly 30–60 min after access verification. The scoped claim needs neither a PL1 change nor a bandwidth extrapolation. |
| **Valuable but optional for the inference chapter**. Does a large pool of real BF16 or INT8 weights produce the same read-only data-pattern sensitivity as the synthetic data? | Reuse the E6 read-only loop and same array length, data alignment, locality and load mix, with a loader for representative weight bytes and matched constant and randomized controls. Hold cores, mode, runtime and placement fixed. Use a local Flat socket with HBM and a DDR control. Verify byte checksums and residency, collect CAS, clock, PCU and RAPL, and report three rotated ≥10 s launches per cell with full ranges. Accept a pattern-specific inference only when measured CAS and useful throughput agree within observed counter uncertainty and the effect exceeds launch spread. About 20–30 min on one exclusive Flat node after input and loader validation. |
| **Unnecessary for the scoped chapter**. Which requester originates excess remote-HBM traffic? | The penalty and additional controller and UPI transactions already motivate socket-local placement. The October plan's optional B5 CHA opcode attribution would answer a separate architecture question. |
| **Unnecessary for the scoped chapter**. Can an exhaustive split search find a global optimum, or can counters replace every historical OCR point? | Working-set matched Cache atlas data exist. The November mixed-split leaders overlap, and the ranking optimizes aggregate useful reads under one allocation. Adopting a particular mixed placement or estimating full-engine overhead belongs with the inference evaluation. |

No new job is approved by this plan. The October [measurement plan](MEASUREMENT_GAPS_PLAN_2026-10-31.md) is historical. The local build and the [source ledger](THESIS_FIGURES_AND_TABLES.md) are the execution path for the scoped deliverables.
