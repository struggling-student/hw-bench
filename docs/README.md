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

`data/raw/`, `data/processed/`, and generated `figures/` are local, git-ignored campaign
artifacts. The executed [notebook](../notebooks/roofline_analysis.ipynb) is versioned,
but rerunning it requires the local processed files.
