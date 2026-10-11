# Analysis and results

The executed notebooks are the canonical interpretation and derive every displayed value from selected data.

| Notebook | Figures | Numerical evidence |
|---|---|---|
| 01: memory limits | Core-count bandwidth; Cache capacity response; NUMA bandwidth; dependent-load latency | Full-core memory rates, local/remote latency, split DDR+HBM controls |
| 02: compute limits | AVX-512 scaling; native AMX versus oneDNN scaling | Both modes/sockets, GEMM shape dependence, architectural references |
| 03: Rooflines and scaling | FP64 Flat/Cache envelopes with measured points; socket scaling | FP32/BF16 knees, isolated socket rates and simultaneous dual rates |

There are eight figures. Each plot cell saves SVG and PNG to `figures/<notebook-stem>/`; the exact expected files and retired outputs are listed in `configs/artifacts.json`. `scripts/check_artifacts.py --clean-retired` first verifies all retained exports, then removes only named obsolete root-level figures. No raw records are deleted.

Read Cache bandwidth together with active working-set size. Read NUMA bandwidth with the CPU socket and memory locality. Idle pointer-chasing latency measures a serial access pattern and does not predict saturated bandwidth or loaded latency. The 1 GiB Cache latency test does not characterize above-capacity access latency.

Read native AMX throughput as an instruction microbenchmark and oneDNN throughput as achieved GEMM performance. Their difference is benchmark-specific headroom rather than an expected application speedup. FP64/FP32 remain separate arithmetic paths.

Read socket efficiency as measured simultaneous throughput divided by the sum of matching isolated medians. This experiment has independent local workers and no application communication. It does not characterize tensor-parallel inference.

No HBM hit rates, memory-controller counter traffic, energy efficiency, throttling, or causal explanations of socket asymmetry are inferred. Source identity, accepted variability, and excluded attempts remain available in the processed data and validation appendix.
