# HW Bench documentation

Start with the [final hardware characterization](FINAL_RESEARCH_SUMMARY.md). The [status page](STATUS.md) links the claims matrix, final figure selection, gap plan and readiness assessment.


| Guide | Purpose |
| --- | --- |
| [01 — Scope and topology](01_SCOPE_AND_TOPOLOGY.md) | What this repository measures, Flat versus Cache Mode, and the discovered socket/NUMA mapping. |
| [02 — Run and retrieve](02_RUN_AND_RETRIEVE.md) | Dependencies, site configuration, compute-node execution, and local retrieval. |
| [03 — Methods and data](03_METHODS_AND_DATA.md) | Kernel definitions, working sets, affinity, normalization, statistics, and Roofline equations. |
| [04 — Analysis and results](04_ANALYSIS_AND_RESULTS.md) | Measured ceilings, plot-by-plot reading guide, knees, theory, and limitations. |
| [Validation appendix](VALIDATION.md) | Preserved failed/superseded runs and the explicit acceptance rules. |
| [Triad gap](STREAMGAP.md) | Why the Flat HBM Triad is below the published STREAM Triad: unmodified STREAM on this node, array size, kernel variants, data pattern. |
| [06 — Hardware counters](06_COUNTERS.md) | Which counters work without privileges (instructions, reference cycles, DRAM read and write lines), how they were validated, and what needs an administrator. |
| [Archive](archive/) | Process documents kept for the record: the two scientific reviews (2026-10-12 and 2026-10-16, source of the item IDs C1–C10, M1–M3, R1–R3, U1–U4), the status report of the first review, and the run plan with the recipe of every follow-up campaign part (`05_FOLLOW_UP_RUNS.md`). |
| [Current status](STATUS.md) | Current campaign state and links to the final research artifacts. |

The local raw archives, processed datasets and generated notebooks can be rebuilt with `scripts/make_analysis.sh`. See the [repository guide](../README.md) for dependencies and the [validation appendix](VALIDATION.md) for accepted and excluded records.
