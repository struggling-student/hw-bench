# HW Bench: measured CPU and memory limits

Hardware-only characterization of two Intel Xeon CPU Max 9480 sockets: 56 physical cores per socket, DDR5, and 64 GiB HBM per socket. The study separates sustainable memory bandwidth, capacity effects, idle dependent-load latency, AVX-512 arithmetic, native AMX instructions, achieved BF16 GEMM, and simultaneous socket scaling.

Read the three executed notebooks in order:

1. [Memory limits](notebooks/01_memory_limits.ipynb): bandwidth, Cache working-set response, local/remote placement, and latency.
2. [Compute limits](notebooks/02_compute_limits.ipynb): FP64/FP32 scaling and native BF16 AMX versus oneDNN GEMM.
3. [Rooflines and scaling](notebooks/03_rooflines_and_scaling.ipynb): matched FP64 envelopes, FP32/BF16 knees, and measured full-node capability.

Every figure cell displays an interactive Plotly figure and saves **SVG and PNG** copies under `figures/<notebook-stem>/`. Export errors stop the cell. Eight selected figures replace the previous repeated overview diagrams. Numerical exports are under `data/processed/thesis/`.

## Reproduce locally

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -m pytest -q
bash scripts/make_analysis.sh
```

Raw campaigns must first be present under `data/raw/cache/` and `data/raw/flat/`. The selected campaign IDs are pinned in `configs/analysis.json`; compute follow-ups are declared explicitly per benchmark. No SSH connection is needed for analysis. Static export requires Kaleido and an installed compatible Chrome/Chromium browser.

## Evidence and interpretation

Raw measurements remain unchanged. Normalization retains each sample's source, campaign, socket, placement, implementation, shape, timing window, and acceptance decision. The analysis selects declared campaigns and accepted steady samples; it never silently chooses the best socket or latest run. Compute follow-ups and memory campaigns use the same host and mode, with both source identities retained in the Roofline table.

Flat DDR/HBM rates use explicit placement. Cache rates describe the effective memory system at a stated working set. Triad bandwidth and sweep intensity use modeled bytes rather than hardware-counter bus traffic. Idle latency comes from a randomized dependent pointer chain. Native AMX instruction throughput and achieved oneDNN GEMM are reported separately.

Two-socket throughput counts work over a shared interval and is compared with the sum of the matching isolated-socket medians. This is independent-worker scaling, not application communication or tensor-parallel scaling. INT8 and LLM runtime experiments are outside this study.

## Documentation

- [Scope and topology](docs/01_SCOPE_AND_TOPOLOGY.md)
- [Run and retrieve](docs/02_RUN_AND_RETRIEVE.md)
- [Methods and data](docs/03_METHODS_AND_DATA.md)
- [Analysis guide](docs/04_ANALYSIS_AND_RESULTS.md)
- [Validation and preserved attempts](docs/VALIDATION.md)

Cluster paths and submission settings belong in a private environment file outside the repository. Both memory modes run through exclusive Slurm allocations. The harness verifies topology and never changes firmware mode.

Architectural references are kept separate from measurements: [Intel Max overview](https://www.intel.com/content/www/us/en/developer/articles/technical/xeon-scalable-processor-max-series.html), [9480 specifications](https://www.intel.com/content/www/us/en/products/sku/232592/intel-xeon-cpu-max-9480-processor-112-5m-cache-1-90-ghz/specifications.html), and [configuration guide](https://cdrdv2-public.intel.com/782255/354227-intel-xeon-cpu-max-series-configuration-and-tuning-guide-1.pdf).
