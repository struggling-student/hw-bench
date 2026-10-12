# Hardware counters

What the benchmarks can count at `kernel.perf_event_paranoid=2` (the setting on the hbm
nodes), what needs a privileged session, and how counted bytes enter the analysis.

## Available now, without privileges

Per-thread, user-mode events (the kernel and hypervisor are excluded, which is what
paranoid=2 allows). `benchmarks/hardware.cpp` opens them in every OpenMP thread and
`benchmarks/gemm/torch_gemm.py` opens them for the whole process before torch starts its
threads (inherited counters):

| Sample field | Event | Use |
| --- | --- | --- |
| `cycles` | `CPU_CYCLES` | effective clock (already used) |
| `amx_busy_cycles` | `EXE.AMX_BUSY` | AMX activity (already used) |
| `instructions` | `INSTRUCTIONS` | instructions per cycle |
| `ref_cycles` | `REF_CPU_CYCLES` | clock against the TSC, independent of wall time |
| `dram_read_lines` | `OCR.READS_TO_CORE.DRAM` (event `0x2A`, mask `0x73C000477`) | 64-byte lines read from DRAM or HBM |
| `dram_write_lines` | `OCR.WRITE_ESTIMATE.MEMORY` (event `0x2B`, mask `0xFBFF80822`) | 64-byte lines written to memory |

`counted_bytes` in `measurements.csv` is `(dram_read_lines + dram_write_lines) × 64`; a
record made without both events leaves it empty, never zero. The events count the memory
traffic of the cores that are measured, so they miss traffic from other agents, and they
cannot tell DDR from HBM (the NUMA binding does).

### How they were validated

`benchmarks/probe_counters.cpp` reads or writes 3 GiB through one thread while counting one
event at a time; `data/probes/counters-20261012/` holds the results from the Flat node
(`cresco8-hbm14`), against DDR and against HBM. Counts per cache line touched:

| Workload | `OCR…DRAM` reads | `OCR.WRITE_ESTIMATE` writes | `L2_LINES_IN.ALL` | Expected |
| --- | ---: | ---: | ---: | --- |
| read pass | 0.996 | 0 | 1.00 | 1 read |
| store pass | 0.001 | 1.00 | 1.00 | 1 write, no read-for-ownership |
| non-temporal store pass | 0 | 1.00 | 0 | 1 write |
| Triad | 0.637 | 0.333 | 1.00 | 2 reads and 1 write of 3 arrays |
| non-temporal Triad | 0.632 | 0.333 | 0.667 | the same |

`LLC-misses` and `L2_LINES_IN.ALL` also track reads, and retired-load events
(`MEM_LOAD_RETIRED.*`) undercount because prefetch hides most misses; those are not used.
Regular Triad and non-temporal Triad read the same lines, so the destination is not read
before it is written: a counter-based confirmation of the rate-based inference (claim
`write_allocate_counted`). It was one thread on 1 GiB arrays.

## Not available without privileges

`uncore_imc`, `uncore_cha`, `uncore_m2m`, `uncore_upi` and `power` exist on the node
(`/sys/bus/event_source/devices`) but system-wide uncore events need `CAP_PERFMON` or
`paranoid ≤ 0`. They would give DDR and HBM bytes separately and the Cache-mode hit rate,
the remote-HBM mechanism and the clock-drop cause.

### Draft request for the cluster administrators

> A few minutes of root or `CAP_PERFMON` access on `cresco8-hbm14` (Flat) and one Cache-mode
> node, while I run an existing 30-minute benchmark job, to read hardware counters only:
> `uncore_imc` CAS counts (DDR and HBM controller traffic), `uncore_m2m` near-memory tag
> hit/miss events (Cache-mode hit rate), `uncore_upi` and `uncore_cha` traffic (remote
> access), and `power/energy-pkg/` with `turbostat` (why the clock drops while HBM streams).
> Either a session where I run `perf stat -a` myself, or you run the wrapper script I will
> provide. No configuration changes; read-only; nothing runs on other users' cores.

Event names should be checked against Intel's perfmon tables for Sapphire Rapids before
the session (the memory-controller CAS read/write events and the M2M tag events).

## In the analysis

* `process.py` writes the four fields and `counted_bytes`; `report.counted_table` puts
  counted next to modeled bytes per configuration (`counted_over_modeled`, `read_share`,
  `intensity_counted`).
* `WorkloadPoint.bytes_source` accepts `"pmu_ocr"` for a point placed with counted bytes.
* The campaign part `counted` (Flat 24 records, Cache 18) picks the comparison points: the
  three streams at 8 GiB (96 GiB in Cache), the intensity sweep at K = 1, 16, 256, and the
  14336×4096 GEMM at M = 1, 16, 256 (BF16 and INT8) with a pool of four times the on-chip
  capacity.
* The smoke campaigns (2026-10-12) show the counters present in every record of both modes.
  At 256 MiB the streams count about 0.6 of the modeled bytes because part of the working
  set hits the L3, and the 64 MiB smoke GEMM pool counts almost nothing; neither is a
  validation, which needs the `counted` sizes.

Nothing in the committed measurement data has counters: those campaigns ran before they
were added, so the columns are empty there.
