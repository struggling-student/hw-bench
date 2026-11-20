# Analysis and results

The [master analysis](../notebooks/00_master_analysis.ipynb) contains the six principal figures and three tables. The [selection ledger](THESIS_FIGURES_AND_TABLES.md) gives captions, units, code and exact sources. The [claims matrix](SCIENTIFIC_CLAIMS.md) scopes observations and inferences. Existing notebooks preserve the evidence behind them.

| Notebook | Supporting evidence |
| --- | --- |
| 01 Platform and methodology | Topology, HMAT, validation, within- and between-launch spread and external comparison |
| 02 Memory hierarchy and bandwidth | Hierarchy, streams and copy controls, core scaling and dependent-load latency |
| 03 NUMA and socket scaling | Placement, remote thread sweep, concurrent pairs and energy |
| 04 Compute throughput | Six ISA paths, clock and tile utilization, projection shape/pool/packing controls |
| 05 Roofline atlas | Generic references, the FP64 sweep, all principal shapes, modeled twins and the working-set-matched Cache audit |
| 06 Memory controllers, power and clocks | Power-limited windows, controller traffic, Cache hit and spill, remote excess traffic, energy and counter perturbation |
| 07 Bandwidth configuration | November pure-tier, mixed-tier, remote and capacity controls from one exclusive allocation |

Notebook source lives in `scripts/build_notebooks.py` and `scripts/bandwidth_search_notebook.py`. Shared transformations live in `hwbench.report`, `hwbench.analysis` and `hwbench.roofline`. The generated claim checks test numerical relations in the selected data. Scientific interpretation also depends on how each experiment was controlled and what its counters observe. Exports and explicitly retired figures are declared in `configs/artifacts.json`.
