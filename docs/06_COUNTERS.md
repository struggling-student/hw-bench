# Hardware counters

What the benchmarks can count at `kernel.perf_event_paranoid=2` (the setting on the hbm
nodes), what the privileged session on the Flat node adds, and how counted bytes enter the
analysis.

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

## Privileged uncore session (Flat node, since 2026-10-19)

The administrators allow `sudo -n /usr/bin/perf stat*` (and `turbostat`, `ipmitool sensor`)
without a password on `cresco8-hbm14` only. `perf_event_paranoid` stays 2 and the plain shell
has no capabilities, so the benchmarks still cannot open uncore events themselves; a plain
`perf stat` reports them as not supported. `src/hwbench/uncore.py` runs one system-wide
session per record (campaign parts `ustreams`, `uremote`, `ugemm`, `uloaded`, `usmoke`):

```
sudo -n perf stat -a --per-socket -D -1 -I 100 -x, --control fifo:CTL,ACK -e <events> \
    -- tail -s 0.1 --pid=<holder> -f /dev/null
```

* **Window.** The benchmark (`hardware.cpp`, `torch_gemm.py`) enables the counters once
  before its warm-up and disables them once after its last sample, through the control FIFOs
  (`HWBENCH_PERF_CTL`, `HWBENCH_PERF_ACK`). Perf enables about 200 uncore counters one after
  another in about 110 ms, socket 0 first, so a toggle per sample would count the time around
  it; the counters run continuously and each sample takes the 100 ms intervals that lie
  entirely inside it (eight or nine per one-second sample). Disabling takes 5 ms; the tail
  interval's run time puts the disable on perf's clock and the benchmark records when it sent
  it, which places every interval on `CLOCK_MONOTONIC` to a few milliseconds.
* **Ending the session.** The root process cannot be signalled by the user; its workload is a
  `tail --pid` on a holder process the record owns, so the session ends when the holder is
  killed.
* **Evidence.** Each record keeps the parsed intervals of its enabled period in the JSON
  (`uncore`) and perf's whole output as `<record>.perf.csv.gz`.

| Measurement column | Event | Notes |
| --- | --- | --- |
| `ctrl_ddr_read_bytes`, `ctrl_ddr_write_bytes` | `uncore_imc` event 0x05, umask 0xcf / 0xf0 | 64 B per CAS, 8 channels per socket |
| `ctrl_hbm_read_bytes`, `ctrl_hbm_write_bytes` | `uncore_type_14` event 0x05, umask 0xcf / 0xf0 | the HBM channel controllers (32 per socket, unnamed by the 5.14 driver); 32 B per CAS, identified with a read stream of known size |
| `ctrl_bytes`, `ctrl_bandwidth_gbs` | sum of the four | every channel of both sockets |
| `energy_pkg_j`, `energy_ram_j`, `pkg_power_w`, `ram_power_w` | `power/energy-pkg/`, `power/energy-ram/` | RAPL; power columns are the computing socket's |
| `uncore_ghz` | `uncore_cha_0` event 0x01 | CHA (mesh) clock of the computing socket |
| `pcu_power_limit_frac`, `pcu_thermal_limit_frac` | `unc_p_freq_max_power_cycles`, `unc_p_freq_max_limit_thermal_cycles` over `unc_p_clockticks` | share of PCU cycles with the frequency clipped |
| `upi_tx_data_flits`, `upi_rx_data_flits` | `unc_upi_txl_flits.all_data`, `unc_upi_rxl_flits.all_data` | all links, both sockets |
| `m2m_directory_updates` | `unc_m2m_directory_update.any` | all mesh-to-memory agents |

The probes that fixed these choices are in `data/probes/uncore-20261019/`. One method did not
hold and is not used: the CHA TOR occupancy over inserts of demand-read misses, filtered to the
chasing core, gives about 31 ns where the chase measures 141 ns.

**Still unavailable.** Cache mode: no Cache-mode node has the access, so the HBM-cache (M2M
near-memory tag) hit rate (review item U3) is not measured.

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

The campaigns of 2026-10-12 and later (from the smoke and `counted` parts on) carry the counters
and are committed; the October-11 campaigns and the first GEMM sweep ran before the counters were
added, so their columns are empty.

The privileged campaigns (`uncore_campaigns`) add the controller, power and clock columns of the
table above to every sample; `report.controller_table`, `power_table`, `first_window_counters`,
`remote_counter_table`, `gemm_controller_table` and `loaded_concurrency` summarise them, and the
claims `uncore_*` (notebook 06) state the results. They are not pooled with the other campaigns:
a counting session runs beside them, and they answer the counter questions only.
