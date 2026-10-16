# HW Bench documentation

Start with the [project README](../README.md) for installation and the shortest path
to an analysis. These guides contain the experimental detail needed to reproduce or
interpret a CRESCO8 campaign.

| Guide | Purpose |
| --- | --- |
| [01 — Scope and topology](01_SCOPE_AND_TOPOLOGY.md) | What this repository measures, Flat versus Cache Mode, and the discovered socket/NUMA mapping. |
| [02 — Run and retrieve](02_RUN_AND_RETRIEVE.md) | Dependencies, site configuration, compute-node execution, and local retrieval. |
| [03 — Methods and data](03_METHODS_AND_DATA.md) | Kernel definitions, working sets, affinity, normalization, statistics, and Roofline equations. |
| [04 — Analysis and results](04_ANALYSIS_AND_RESULTS.md) | Measured ceilings, plot-by-plot reading guide, knees, theory, and limitations. |
| [Validation appendix](VALIDATION.md) | Preserved failed/superseded runs and the explicit acceptance rules. |
| [06 — Hardware counters](06_COUNTERS.md) | Which counters work without privileges (instructions, reference cycles, DRAM read and write lines), how they were validated, and what needs an administrator. |
| [Archive](archive/) | Process documents kept for the record: the two scientific reviews (2026-10-12 and 2026-10-16, source of the item IDs C1–C10, M1–M3, R1–R3, U1–U4), the status report of the first review, and the run plan with the recipe of every follow-up campaign part (`05_FOLLOW_UP_RUNS.md`). |
| [Current status](STATUS.md) | What is finished, running and left, and how to resume after an interruption. Start here when picking the work up. |

`data/raw/` (scrubbed of account-identifying strings by `scripts/scrub_raw.py`),
`data/processed/`, and the exported `figures/` are versioned, so a clone can rebuild the
analysis with `scripts/make_analysis.sh`. The six executed [notebooks](../notebooks/README.md) are versioned; rebuilding them requires the selected local raw campaigns.
