# Reading order

1. [Memory limits](01_memory_limits.ipynb)
2. [Compute limits](02_compute_limits.ipynb)
3. [Rooflines and socket scaling](03_rooflines_and_scaling.ipynb)

Each notebook runs independently from a clean kernel after `bash scripts/make_analysis.sh` builds and validates local data. Notebook cells are the canonical presentation; shared numerical transformations and plotting functions live in `hwbench.analysis`. Each figure cell exports its same displayed Plotly object as SVG and PNG. Do not edit generated images or derived CSVs by hand.
