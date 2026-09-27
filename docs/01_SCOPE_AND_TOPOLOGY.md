# 01 — Scope and topology

HW Bench characterizes CPU and memory hardware independently of any LLM runtime. It
measures sustainable Triad bandwidth, register-resident AVX-512 FMA throughput,
verified AMX BF16/INT8 throughput, and a controlled FP64 operational-intensity sweep.
It also measures two-socket scaling and the effect of a growing working set in Xeon
Max HBM Cache Mode. LLM model execution, prompt workloads, and inference metrics
belong to [LLM Bench](https://github.com/struggling-student/benchmark).

## The two memory configurations

Flat Mode exposes DDR and HBM as distinct NUMA memory nodes. Workers bind to a CPU
socket and to its **local** DDR or HBM target. The scripts discover target IDs from
sysfs CPU membership, capacity, and NUMA distance; they never assume a particular
Linux node number. Cache Mode exposes HBM transparently, with only CPU/DDR NUMA nodes
visible. Its values are therefore **effective bandwidth for specified working sets**,
not HBM or DDR tier bandwidths.

The measured topology was:

| Configuration | Socket | CPU/DDR NUMA node | Local HBM NUMA node | Physical cores | DDR | HBM |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Flat | 0 | 0 | 2 | 56 | 503.1 GiB | 64 GiB |
| Flat | 1 | 1 | 3 | 56 | ~504 GiB | 64 GiB |
| Cache | 0 | 0 | transparent | 56 | DDR-backed | transparent |
| Cache | 1 | 1 | transparent | 56 | DDR-backed | transparent |

Both nodes reported 112 physical cores and one thread per core. On Flat Mode, local
CPU-to-HBM NUMA distance was 13 and remote distance 23. Each campaign records a full
system snapshot in `data/raw/<mode>/<run>/system/`, and retrieval copies the parsed
maps to `data/processed/topology_<mode>.json`. The topology is checked again on the
execution node before binding; the table above is an observation, not a hard-coded
mapping.

## What the Roofline means here

Every plotted envelope is an empirical **upper bound** built from separately measured
bandwidth and compute kernels. Only FP64 has matched measured intensity-sweep points.
AVX-512 FP32/FP64 and AMX BF16 use FLOP/s and FLOP/byte; INT8 uses OP/s and OP/byte.
No FP32/BF16/INT8 sweep points, HBM hit rates, energy efficiency, or hardware-counter
traffic are inferred from missing instrumentation. See [Methods and data](03_METHODS_AND_DATA.md)
for the operation and traffic models.
