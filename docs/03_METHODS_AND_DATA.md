# 03 — Methods and data

## Placement and workload design

The topology parser determines each physical socket's CPU list and local memory
nodes. Native kernels use one worker per physical core, `OMP_PROC_BIND=close`,
`OMP_PLACES=cores`, and `numactl --physcpubind`/`--membind` for first touch.
Two-socket measurements launch two simultaneous processes, each bound to its own
socket and local memory. The accepted BF16 oneDNN path is the measured exception:
GNU OpenMP binding variables are unset inside the container after a controlled
probe showed inverse scaling with them, while `numactl` restrictions remain.

| Measurement | Kernel and data model | Important settings |
| --- | --- | --- |
| Bandwidth | Validated Triad `A = B + s×C`; two 8-byte reads plus one 8-byte write per element | 8 GiB per socket for scaling; two warm-ups, first timed pass, five steady passes; 1, 2, 4, 8, 14, 28, 56 cores |
| Cache capacity | Same Triad, with **total** active bytes across all arrays | 8, 16, 32, 48, 64, 96, 128 GiB per socket; one and two sockets |
| AVX-512 | FP32 and FP64 FMA on twelve independent register accumulator chains | Disassembly must contain ZMM FMA; multiply and add each count as one FLOP |
| AMX BF16 | Warmed PyTorch/oneDNN 6144³ GEMM, `2MNK` FLOPs | 4096³ probe retained; oneDNN verbose must name an AMX implementation |
| AMX INT8 | Native tile-resident dot product | Disassembly must contain `tdpbssd`; result reported in integer OP/s |
| Intensity | Corrected FP64 kernel with eight independent AVX-512 chains | `K = 1…256` FMAs/element, explicit modeled source/destination bytes and checksum |

The available oneDNN INT8 API reported only a generic implementation, so it was
not accepted as AMX proof; the native tile kernel supplies the INT8 ceiling.
Cache Mode's “first” pass comes after allocation initialization and first touch;
it is **not** a pristine cold-cache measurement. The 64 GiB HBM capacity marker is
a hardware capacity reference, not a claimed abrupt bandwidth change point.

The optional Flat concurrent-tier run divides one socket into 28 DDR-bound and
28 HBM-bound cores, with 8 GiB **per process**. Its summed rate is a diagnostic
and is not used as a standard Roofline bandwidth ceiling.

## Normalization and statistics

`hwbench.process` reads all raw JSON, excludes non-target-host records, keeps
successful individual repetitions, and constructs simultaneous dual-process
aggregates. It writes:

- `data/processed/measurements.csv`: one row per timed sample, with mode, scope,
  socket, target, threads, bytes, arithmetic intensity, affinity, frequency sample,
  and a raw-source path relative to `data/raw/`.
- `data/processed/summary.csv`: grouped count, mean, median, standard deviation,
  minimum, maximum, coefficient of variation, and a >5% variance flag.
- `data/processed/validation.json`: campaign checks and preserved anomalies.

Roofline ceilings use medians to reduce sensitivity to isolated timing noise.
For the single-socket architecture-wide view, the highest accepted full-core
median across the measured sockets/modes is used for each compute path, while
the memory diagonal comes from the named mode/working-set case. The two-socket
view uses measured simultaneous dual-socket values, never `2 ×` a single-socket
value. Plot hover labels give the exact bandwidth and knee.

## Equations and units

The empirical envelope and its knee are

```text
P(I) = min(P_compute, B × I)
I_knee = P_compute / B
```

`B` is sustainable GB/s from steady Triad measurements. Floating-point paths
use GFLOP/s and FLOP/byte; INT8 uses GOP/s and OP/byte. The figure displays
TFLOP/s or TOPS after dividing giga-units by 1,000. Operational intensity in
the synthetic FP64 sweep uses its explicit modeled bytes, not a counter-based
measurement of all physical DDR/HBM traffic. FP32/BF16/INT8 have measured
envelopes but no matched intensity-sweep workload points.

## Validation and accepted anomalies

`hwbench.validate` checks both configurations are present, important bandwidth
groups have at least five steady repetitions, AMX implementation evidence is
retained, and throughput does not exceed an explicit max-turbo architectural
bound. It flags high variance and suspicious DDR/HBM ordering. The detailed
history and exclusion rationale are in the [validation appendix](VALIDATION.md).
