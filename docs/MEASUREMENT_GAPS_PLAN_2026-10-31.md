# Closing the measurement gaps with perf, RAPL and ipmitool on hbm13 and hbm14

## Context

Privileged counters (`sudo -n perf stat*`, `turbostat`, `ipmitool sensor`) are now usable on both
nodes: hbm14 (Flat) and hbm13 (Cache, where perf was missing until now). The Flat counted
campaigns are complete. Every Cache campaign still has power from turbostat only and traffic from
the cores' own DRAM line counts (`pmu_ocr`). Each energy figure in the repo is one socket's RAPL
with the idle floor included, and no two-socket run has power. This plan replaces modeled or
inferred values with measured ones where it matters scientifically. It uses analysis-only work
first and as few cluster runs as possible.

## Evidence gathered (read-only, 2026-10-31)

| Fact | Source |
| --- | --- |
| hbm13 and hbm14 are idle; no jobs of ours are queued | `sinfo`, `squeue` |
| hbm14 has perf, kernel-tools and ipmitool 1.8.18; same sudoers rule | `rpm -q`, `sudo -n -l` |
| hbm13 can only be reached through Slurm (host key), so perf there is **not yet verified** | ssh attempt |
| perf 5.14 accepts every Cache tag event, by alias and by raw encoding (m2m `umask` covers config:8-15,32-55, so 0x304 and 0x1810 are valid). Five M2M events in one session multiplexed at 80% | 0.2 s `perf stat` on hbm14 |
| `ipmitool sensor` gives Sys, CPU and Mem power in coarse integer watts; one full read takes 6.1 s; sudoers allows only the full listing | hbm14 |
| hbm13 PL1 is 350 W / PL2 420 W; HMAT memory-side cache is 64 GiB per node | `data/probes/uncore-cache-20261020/README.md` |
| **The idle socket is not idle.** Socket 1's uncore clock follows socket 0's: 0.8 GHz during compute peaks, 2.4 GHz while socket 0 streams with 1–14 cores, 1.6 GHz at 56 cores. Its package power follows the clock: 134 W, 220 W and 162–166 W respectively | `uncore.series` on `flat-ustreams-20261019T205225Z` raw records |
| **The serving socket in remote HBM is near its own PL1.** Socket 1 draws 324–343 W at a 2.5 GHz uncore clock while delivering 92–113 GB/s | `flat-uremote-20261019T205814Z` raw records |
| Raw records keep both sockets: perf `uncore.counts.{0,1}` and turbostat rows per package. `measurements.csv` keeps only the computing socket's power, plus both-socket energy sums | `uncore.py:314-373`, `turbostat.py:184-220` |
| No dual, span or concurrent-tier record has power; all 2355 counted rows run on socket 0 | `measurements.csv` |
| Cache rows: 0 with controller bytes; `served_bytes`, `nm_hit_rate` and `far_bytes` are read by `report.py:1963,2176-2180` but produced nowhere | `process.py:38-110`, `uncore.py:71` |
| `submit_cresco8.sh:30` does not forward `HW_BENCH_CACHE_UNCORE` (`--export=ALL` exports the remote login shell), so a counted Cache submission would silently run turbostat only | code |
| Energy definitions are inconsistent: pJ/op is package only (`report.py:1688`); GEMM J/op and pJ/B are package plus DRAM (`report.py:1687, 2000`); Flat pJ/B divides one socket's power by both sockets' bytes | code |
| Idle power is never measured or subtracted (`claims.py:1472`: "including the idle floor") | code |

**Valid results to keep unchanged:** the stream traffic model agrees with controller bytes to
±2% (U1), so the Oct-11/12 campaigns in modeled bytes need **no rerun**. Every Flat counted part
is complete. The R1 64× pool stays declined. CHA TOR latency stays dropped (shown not to work).

---

## Phase A: analysis only, no cluster time (do first)

### A1. Per-socket columns from the raw records *(enables A2–A4, B2, B4)*
- **Why:** both sockets are recorded but dropped in processing. That makes every energy figure single-socket and hides the coupling and remote findings.
- **Reuse:** `uncore.series()` already emits `pkg_w_sN`, `uncore_ghz_sN`, `ddr/hbm_gbs_sN`. `turbostat.parse()` keeps both packages.
- **Change:** `process.py` FIELDS and `uncore.sample_fields` / `turbostat.sample_fields` gain `pkg_power_w_s{0,1}`, `ram_power_w_s{0,1}`, `uncore_ghz_s{0,1}`, `pcu_power_limit_frac_s{0,1}`, `ctrl_bytes_s{0,1}` (perf), and `ts_*_s1`, `bzy_mhz` (turbostat). Also `node_power_w` = both sockets' pkg + ram. Rebuild `measurements.csv` from raw.
- **Affects:** `data/processed/measurements.csv`, `tests/test_uncore.py`, `tests/test_turbostat.py`.

### A2. Cross-socket uncore-clock coupling (new finding)
- **Why:** each socket-0 energy figure leaves out 30–86 W that socket 0's activity induces on socket 1. This changes node-level energy and the meaning of `other_pkg_w` (currently labelled "idle reference", `report.py:1611`).
- **Measure:** nothing new. Use socket-1 power against socket-1 uncore clock over all counted Flat records, and turbostat `UncMHz` per package for Cache.
- **Output:** claim `idle_socket_uncore_coupling`, one figure in notebook 06 (socket-1 power vs uncore clock, coloured by workload), and a corrected `other_pkg_w` description.

### A3. One energy accounting with three scopes
- **Why:** the current figures mix scopes, so pJ/op and pJ/B are not comparable, and Flat-vs-Cache J/token compares socket-0 figures only.
- **Change:** in `report.py` define a *computing socket* scope (pkg+ram of the socket, bytes of its memory socket via `ctrl_bytes_memory_socket`), a *node RAPL* scope (both sockets pkg+ram), and later a *node wall* scope (ipmitool, B2/B4). Then:
  - put pJ/op on pkg+ram, like the GEMM J/op;
  - give `decode_table_measured` J/token at both RAPL scopes;
  - give `controller_table`, `power_table`, `_cache_frame` and `mode_power_comparison` the same columns.
- **Affects:** claims `energy_per_byte`, `energy_per_op`, `decode_energy`, `cache_resident_power`, `cache_spilled_energy`, `gemm_power_limited`; notebook 00 Table 5; notebook 06 §§5, 10. **Numbers will change.** Each claim's direction check must still hold or be reported, not loosened.

### A4. Remote HBM: the serving socket's power and clock
- **Why:** the remote-HBM mechanism (U2) is counted for traffic but not for the serving socket. Socket 1 at about 343 W suggests its own power budget is in play.
- **Measure:** nothing new. Take socket-1 `pcu_power_limit_frac`, uncore clock and power from the A1 columns for `u2_remote` vs `u2_local`.
- **Output:** extend `remote_counter_table` and claim `remote_duplicate_reads` (notebooks 03, 06). State whether socket 1 is power-clipped; do not claim causation.

### A5. Flat vs Cache energy at equal workloads
- **Why:** the side-by-side comparison now covers only 56-core streams. 710 Flat and 555 Cache GEMM records, the usweep pair and `u1_isa` on both nodes carry power but go unused.
- **Change:** a new `report.energy_table`:
  - J/op and J/token against M (decode M=1 through prefill M=4096) from `ugemmconv`/`uatlas`;
  - pJ/op against arithmetic intensity (an energy roofline) from `usweep` `u_sweep_c12`;
  - compute-peak pJ/op in both modes (a sanity check: socket-0 package power 283 vs 286 W).
- **Output:** one figure `energy_roofline` (notebook 06, or 05 beside the atlas), claim `energy_flat_vs_cache`. Cache bytes stay `pmu_ocr` until B3.

### A6. Correctness fixes found during inspection
- Cache ceilings in the notebook-05 "every configuration" atlas are in modeled bytes on a measured axis (`build_notebooks.py:831-863`): use `ceiling_or_modeled`.
- Claims `decode_bound` / `decode_far_below_ridge` / `decode_achieved` still read the modeled `decode_table`: point them at `decode_table_measured` where it overlaps.
- `process.py:473` copies power and bytes from the first member of two-socket aggregates (`dict(members[0])`): sum per component. This is latent today and **required before B4**.
- Cache "at the package limit" claims (`claims.py:1601, 1614`) assume hbm14's PL1: cite hbm13's PL1 from the probe `node.txt` now; B3 replaces it with measured PCU clipping.

### A7. Documentation
`docs/06_COUNTERS.md` (perf on hbm13, ipmitool, scopes), `docs/STATUS.md`, `docs/04_ANALYSIS_AND_RESULTS.md` (the "Not inferred" list), `docs/03_METHODS_AND_DATA.md` (energy scopes).

---

## Phase B: selective cluster runs (each needs your go-ahead to submit)

### B0. Code prerequisites (local, before any run)
- `scripts/submit_cresco8.sh`: add `HW_BENCH_CACHE_UNCORE` (and the new `HW_BENCH_IPMI`) to `--export`, and pass them to the Flat `env` line too.
- `uncore.py`: add `EVENT_SETS["cache"]` / `INTERVAL_MS["cache"]` from the events B1 confirms. The base set plus **at most 4 M2M events** (multiplexing seen at 5). `sample_fields` emits `served_bytes`, `nm_hit_bytes`, `far_bytes` (DDR CAS reads), `nm_hit_rate`, `nm_fill_bytes` (HBM CAS writes); add them to `process.py` FIELDS. `report.measured_bytes` already prefers `served_bytes`.
- `benchmarks/hardware.cpp`: a `idle` kind that enables the counters through `PerfControl`, sleeps `--seconds` per sample, and disables them. This reuses the existing anchor, so idle records flow through the standard pipeline.
- ipmitool: a campaign-level background logger in `scripts/flat_campaign.sh` and `slurm/cache_campaign.sbatch`, gated by `HW_BENCH_IPMI`. It loops `sudo -n ipmitool sensor`, keeps the Sys, CPU and Mem Power lines with CLOCK_REALTIME stamps, and writes `ipmi.log.gz` in the campaign dir. `process.py` joins it to records whose window is at least 12 s (two reads). Its 6 s cadence rules out per-sample use.
- A parser for the probe's `--no-merge` CSVs (`data/probes/uncore-cache-20261020/`), and a wrapper that builds `hardware` and runs `probe.sh` under `srun -w cresco8-hbm13 --exclusive`.
- New parts in `run_campaign.py`: `uidle` and `udual` (below). Add dry-run record-count tests in `tests/test_campaign_plan.py`, a `"cache"` set test in `tests/test_uncore.py`, and an export test (`tests/test_slurm_exclusion.py` pattern).

### B1. Cache-node probe (P0, gate for B3): one Slurm job, ≤40 min, hbm13
- **Why:** perf on hbm13 is claimed but unverified. Which M2M instances count tag lookups, and the hit-rate formula, are unknown.
- **Reuse:** `probe.sh` / `probe.py` run unchanged: read and Triad at 8 and 96 GiB, event sets A and B, each with 4 M2M events.
- **Must establish:**
  - (a) `rpm -q perf` and the sudoers rule;
  - (b) which of `uncore_m2m_0..3` vs `_14..17` count;
  - (c) hits + misses equal the requested lines;
  - (d) hit rate = 1 − DDR CAS reads ÷ requests;
  - (e) **served bytes ÷ `pmu_ocr` bytes**. This is the decision point for whether Cache GEMM points need re-runs (see B3).
- **Output:** `data/probes/uncore-cache-20261031/` with a README, as for the Flat probe.

### B2. Idle baseline `uidle` (P1), both nodes, about 5 min each
- **Why:** no static floor exists anywhere. pJ/B at PL1 is in effect 350 W ÷ bandwidth, and dynamic energy cannot be stated. This also tests whether RAPL "ram" covers only the DDR DIMMs (code asserts it with no source, `claims.py:1633`).
- **Measure:** 3 records × 60 s of `idle` (perf session on Flat; perf with the cache set plus turbostat on Cache), with ipmitool logging throughout. One extra 60 s HBM read and one DDR read at 14 cores (not power-limited) to compare BMC "Mem Power" with RAPL DRAM.
- **Output:** per-socket and node idle pkg/ram/wall power. *Dynamic* pJ/B, pJ/op and J/token (subtracting the floor) as an added column in A3's tables; claims `idle_floor`, `rapl_dram_is_ddr`.
- **Affects:** notebook 06, notebook 00 Table 5.

### B3. Cache counted re-runs with `HW_BENCH_CACHE_UNCORE=cache` (P1), hbm13, about 1 h total
Selected to answer the open Cache questions. These complement, not replace, the turbostat campaigns: those stay valid for power and clocks, which perf and turbostat measure identically to 0.3%.

| Part | Records | Replaces / answers | Affected |
| --- | ---: | --- | --- |
| `ucapacity` | 30 | **U3**: the hit-rate curve 8–128 GiB; DDR vs HBM bytes; controller-defined energy per served byte; measured PCU clipping (replaces the "350 W" inference) | notebook 02 Cache capacity, notebook 06 §10 `cache_capacity_counters`, claims `cache_*`, `cache_dram_power_onset` (inferred → counted) |
| `ugemm` | 16 | **C3**: hit rate and far traffic of decode GEMM at 16 and 96 GiB, explaining why spilled GEMM beats spilled read-only (currently "a hypothesis", `claims.py:396`) | claim `cache_spilled_gemm`, notebook 00 Cache figure |
| `ucachelat` | 5 | **R2/C7**: the hit rate behind the far-latency rise of 161→227 ns | claim `cache_latency_far`, notebook 02 `cache_latency_far` |
| `ucacherep` ×3 *(optional, P2)* | 18 | **C2**: whether the up-to-16% between-campaign spread is a hit-rate difference (page placement) | claim `campaign_spread`, notebook 01 |

- **Conditional:** if B1 finds served ÷ `pmu_ocr` outside 0.98–1.02, also rerun Cache `uatlas` (64 records, about 1 h) so the Cache measured-intensity points use served bytes. Otherwise keep them and say that `pmu_ocr` equals served bytes, as counted by B1.
- **Not rerun in Cache:** `ustreams`, `ugemmconv`, `usweep`, `uremote`, `uloaded`. Their power is already measured, and `ucapacity`/`ugemm` cover the tag questions.

### B4. Two-socket energy `udual` (P2), both nodes, about 15 min each
- **Why:** the deployment case (both sockets streaming weights) has no power at all. Node-level J/token and two-socket efficiency per watt are missing. A2 shows single-socket figures cannot be doubled.
- **Reuse:** the synchronized-pair mechanism (`pair()` in `run_campaign.py`). The system-wide perf session of participant 0 already counts both sockets.
- **Measure:** 56+56 cores, 10 s windows, ipmitool on. Read (Flat HBM and DDR; Cache 8 and 96 GiB), 14336×4096 GEMM at M=1 BF16 and INT8 (decode), and AMX-BF16 peak. That is 7 pairs per node, plus single-socket controls from the same job for the efficiency ratio.
- **Output:** node J/token at RAPL and wall scope, two-socket GB/s per W, claim `dual_energy`; notebook 03 (first power data there), notebook 00 Table 5 node row.
- **Requires** the A6 aggregate fix.

### B5. Optional (P3, only if you want them)
- **Remote-HBM issuing agent** (`uremote` with CHA opcode events, Flat, 6 records, about 6 min). This closes the last "not inferred" item of U2.
- **Dynamic memory energy at fixed cores** (14 cores reading HBM/DDR vs the same kernel L2-resident; Flat, 12 records). Do this only if B2's floor-subtracted pJ/B proves ambiguous.

### Explicitly not proposed
- Re-running Oct-11/12 or any Flat counted campaign: the model is validated and the parts are complete.
- Power-cap or uncore-frequency sweeps: sudoers allows no powercap or MSR writes.
- End-to-end LLM decode: outside "minimal"; notebook 06's LLM design stays design-only.
- The 64× GEMM pool.

---

## Order and cost

| Step | Cluster time | Depends on |
| --- | --- | --- |
| A1–A7 | none | — |
| B0 code + tests | none | — |
| B1 probe | ≤40 min hbm13 | B0 wrapper |
| B2 `uidle` | about 5 min per node | B0 |
| B3 Cache counted | about 1 h hbm13 (+1 h if `uatlas` is triggered, +20 min `ucacherep`) | B1 |
| B4 `udual` | about 15 min per node | A6, B0 |

**Total minimum:** about 2.5 h node time, 4–5 submissions. Flat runs stay SSH+tmux on hbm14 (never Slurm). Cache runs go through Slurm on hbm13 with `--exclude=cresco8-hbm14`. Commit data and analysis separately as before.

## Verification
- `pytest` (151 tests plus the new uncore, turbostat, campaign-plan and export tests). `run_campaign.py --dry-run` record counts for `uidle`, `udual` and the Cache parts.
- After A1: rebuilt `measurements.csv` equals the committed one on every existing column (diff), with new columns added only.
- After each fetch: `bash scripts/fetch_results.sh`, list the campaign in `configs/analysis.json` (`uncore_campaigns`), `bash scripts/make_analysis.sh`, all seven notebooks execute, `scripts/check_artifacts.py`.
- Acceptance checks as claims:
  - Cache hits + misses within 2% of requested lines;
  - B2 turbostat vs perf idle within 1%;
  - Flat stream controller bytes are still 0.98–1.02 of the model when counted with the cache set on hbm13 at 8 GiB (resident);
  - dual efficiency is consistent with the existing 0.984–1.017.
- Restore SVGs whose PNG did not change; delete `data/processed/platform_*.json` left by the fetch.
