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
| `energy_pkg_j`, `energy_ram_j`, `pkg_power_w`, `ram_power_w` | `power/energy-pkg/`, `power/energy-ram/` | RAPL; the energies are summed over both sockets, the power columns are the computing socket's |
| `uncore_ghz` | `uncore_cha_0` event 0x01 | CHA (mesh) clock of the computing socket |
| `pcu_power_limit_frac`, `pcu_thermal_limit_frac` | `unc_p_freq_max_power_cycles`, `unc_p_freq_max_limit_thermal_cycles` over `unc_p_clockticks` | share of PCU cycles with the frequency clipped |
| `pkg_power_w_s0`, `pkg_power_w_s1`, `ram_power_w_s0`, `ram_power_w_s1`, `uncore_ghz_s0`, `uncore_ghz_s1`, `pcu_power_limit_frac_s0`, `pcu_power_limit_frac_s1`, `ctrl_bytes_s0`, `ctrl_bytes_s1` | the same events, per socket | both sockets are in every session; these keep the one that does not compute (and, for remote reads, the one that serves the data). The computing-socket columns above are the `_s0` or `_s1` column of the computing socket |
| `node_power_w` | package plus DRAM power of both sockets | the node's RAPL power; equal to `system_power_w`, formed from the four per-socket powers |
| `upi_tx_data_flits`, `upi_rx_data_flits` | `unc_upi_txl_flits.all_data`, `unc_upi_rxl_flits.all_data` | all links, both sockets |
| `m2m_directory_updates` | `unc_m2m_directory_update.any` | all mesh-to-memory agents |

The probes that fixed these choices are in `data/probes/uncore-20261019/`. One method did not
hold and is not used: the CHA TOR occupancy over inserts of demand-read misses, filtered to the
chasing core, gives about 31 ns where the chase measures 141 ns.

## turbostat session (both nodes, since 2026-10-20)

The same sudoers rule exists on the Cache node `cresco8-hbm13` (`perf stat*`, `turbostat`,
`ipmitool sensor`), but **`/usr/bin/perf` is not installed there** (the probe job of
2026-10-20 failed with `sudo: /usr/bin/perf: command not found`; hbm14 has
`perf-5.14.0-427.13.1.el9_4`). `turbostat` (2023.11.07) runs on both nodes, so
`src/hwbench/turbostat.py` gives every record the power and clock half of the perf session:

```
sudo -n turbostat --quiet -c 0,56 --interval 0.1 --num_iterations 50 \
    --show Time_Of_Day_Seconds,Package,CPU,Bzy_MHz,PkgWatt,RAMWatt,UncMHz,PkgTmp
```

* **Runs.** Back-to-back runs of 50 intervals of 100 ms, one row per package and interval
  (the first CPU of each package carries the package columns). Root processes cannot be
  signalled, so each run ends by itself; stopping waits for the current run (at most 5 s).
  No benchmark ever runs under turbostat (no command argument).
* **Clock.** Rows carry the time of day at the end of each interval; the sampler records
  CLOCK_REALTIME minus CLOCK_MONOTONIC when it starts, which places every interval on the
  benchmark's clock. Each sample takes the intervals entirely inside it (four of five in a
  0.5 s sample, nine of ten in a one-second one).
* **Columns.** `ts_pkg_power_w`, `ts_ram_power_w`, `ts_energy_pkg_j`, `ts_energy_ram_j`,
  `ts_system_power_w`, `ts_uncore_ghz`, `ts_pkg_temp_c`, `ts_intervals`, `ts_coverage`, and per
  package `ts_pkg_power_w_s0/s1`, `ts_ram_power_w_s0/s1`, `ts_uncore_ghz_s0/s1` and `ts_bzy_mhz_s0/s1`
  (the busy clock of the package's first CPU, in MHz). Where no perf session ran, `process.py`
  copies them into `pkg_power_w`, `ram_power_w`, `energy_*`, `system_power_w`, `uncore_ghz` and the
  per-socket columns and sets `power_source = "turbostat"` (`"perf"` otherwise), so the power tables
  read both modes alike.
* **Validation.** The Flat smoke campaign `flat-usmoke-20261020T201307Z` ran both sessions in
  the same records: package power 0.997–1.002× perf's RAPL in samples of one second or more,
  0.997–1.018× over every record, DRAM 0.998–1.016×, uncore clock within 35 MHz of the CHA
  clockticks (claim `turbostat_matches_perf`, notebook 06 section 9). `UncMHz` is the ratio at
  the end of each interval, not an average.
* **Not covered.** turbostat counts no traffic: in Cache mode the measured bytes are the
  cores' DRAM line counts (`pmu_ocr`) until perf is installed; then the perf session with the
  memory-side-cache tag events (`unc_m2m_tag_hit.nm_rd_hit_clean|dirty`, `unc_m2m_tag_miss`,
  `unc_m_tagchk.*`; encodings in `perf list --details` on the nodes) takes over, after the
  identification probe staged for hbm13 (`data/probes/uncore-cache-20261020/README.md`).

**Still unavailable.** The HBM-cache (M2M near-memory tag) hit rate (review item U3) and the
controller traffic in Cache mode: both need perf on the Cache node. The administrators have said
that perf is available there now; this is **not verified**, because hbm13 can only be reached
through Slurm (its host key is not in `known_hosts`). The identification probe
(`data/probes/uncore-cache-20261020/probe.sh`) is the first thing to run, and it checks the
package and the sudoers rule before it counts anything.

## Energy scopes

Every energy figure of the notebooks says which of these it is. All include the idle floor
(nothing is subtracted, because no idle record has been measured yet).

| Scope | Power | Bytes or work | Columns |
| --- | --- | --- | --- |
| **Computing socket** | package plus DRAM RAPL power of the socket that runs the benchmark | bytes the memory controllers of its memory socket moved (`ctrl_bytes_memory_socket`; Cache: the measured bytes) or the operations | `pj_per_byte`, `pj_per_op`, `j_per_op`, `j_per_token` |
| **Node (RAPL)** | package plus DRAM RAPL power of both sockets (`node_power_w`) | every controller's bytes (all traffic the sample caused) or the operations | `pj_per_byte_node`, `pj_per_op_node`, `j_per_op_node`, `j_per_token_node` |
| Node (wall) | BMC "Sys Power" (`ipmitool sensor`) | as above | **not measured yet** |

Before 2026-10-31 the pJ/op of the compute peaks counted the package only, the GEMM J/op and the
pJ/B counted package plus DRAM, and the Flat pJ/B divided one socket's power by both sockets'
bytes; they are now one definition (`report.energy_scopes`). The effect on the headline figures is
small at the computing-socket scope (pJ/B within 0.2%, pJ/op +7–9% from the DRAM added) and large at
the node scope (pJ/B and pJ/op about 1.5× the computing-socket figure).

**The socket that runs nothing is not idle.** Its uncore clock follows the computing socket's
(correlation 0.93–0.95; 0.8 GHz beside the compute peaks, about 1.7 GHz beside a 56-core GEMM, up to
2.4 GHz beside streams with few cores), and its package power follows its own clock: 131–235 W, about
58 W/GHz above 75 W (R² 0.94 on Flat from perf, 0.94 on Cache from turbostat). The lowest state
seen is about 134 W; relative to it a socket's activity induces 25–75 W (median per workload
family) and up to 100 W on the other socket (claim `idle_socket_uncore_coupling`, notebook 06
section 11). The old `other_pkg_w` label "idle reference" was therefore wrong; the column is the
other socket's power in the same window. The floor is the lowest state observed, not a measured
idle.

**ipmitool.** `sudo -n ipmitool sensor` works on both nodes and reports Sys, CPU and Mem power in
whole watts; one full listing takes about 6 s and the sudoers rule allows only the full listing, so
it cannot be sampled per record. It is not used by the pipeline yet; the planned use is a
campaign-level background log joined to records of at least 12 s, for the wall scope and for
checking that RAPL "ram" covers only the DDR DIMMs (docs/MEASUREMENT_GAPS_PLAN_2026-10-31.md,
B0 and B2).

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
