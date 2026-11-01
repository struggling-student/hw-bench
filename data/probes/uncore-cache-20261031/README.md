# Memory-side-cache counter probe on the Cache node (cresco8-hbm13), 2026-10-31

The probe staged on 2026-10-20 (`../uncore-cache-20261020/`, never run: perf was missing) ran
unchanged in one Slurm job (`slurm/cache_probe.sbatch`, `--nodelist=cresco8-hbm13`
`--exclusive`, 63 s): `probe.sh` checks the node, then `probe.py` counts a 56-core read and Triad at
8 GiB (resident in the 64 GiB HBM cache) and 96 GiB (spilled) with two event sets, one
`perf stat -a --per-socket --no-merge` session per workload, enabled and disabled by the benchmark
through the control FIFOs. (A first submission landed on `cresco8-hbm01`, which has no sudoers rule
and stopped at the first `sudo`; nothing was measured there.) `node.txt` is the node check as printed
(account name scrubbed); `A_*.csv`/`B_*.csv` are perf's per-instance output, `*.json` the benchmark's
own records, `accounting.json` is `hwbench.cacheprobe.summarize` over them.

## 1. The node (acceptance check a)

| Check | Result |
| --- | --- |
| perf | `perf-5.14.0-427.13.1.el9_4.x86_64`, `kernel-tools` the same, kernel 5.14.0-427.13.1.el9_4: the package of the Flat node. All ten `sudo -n perf stat` sessions ran |
| sudoers | `(root) NOPASSWD: /usr/bin/perf stat*, /usr/bin/ipmitool sensor, /usr/bin/turbostat` |
| ipmitool | 1.8.18; `Sys Power` 400 W, `CPU Power` 300 W, `Mem Power` 43 W at the time of the check |
| HMAT memory-side cache | 64 GiB per node, 64 B lines (`index1`) |
| PMUs | `uncore_imc_0..7`, `uncore_m2m_0..3` and `_14..17`, `uncore_type_14_0..31`, `uncore_upi`, `uncore_pcu`, `power`, as on the Flat node |

## 2. Which events count the memory-side cache (b)

Per socket, every PMU instance counted separately (`accounting.json`, read of 96 GiB):

| Event | Unit | Instances | Counting |
| --- | --- | ---: | ---: |
| `unc_m2m_tag_hit.nm_rd_hit_clean` / `_dirty`, `unc_m2m_tag_miss`, `unc_m2m_tag_hit.nm_ufill_hit_clean` | `uncore_m2m` 0x1f, 0x4b | 8 | **0** of 8 |
| `unc_m_tagchk.*` | `uncore_imc` 0xd3 | 8 | **0** of 8 |
| `unc_m2m_imc_reads.all` / `.to_ddr_as_mem`, `unc_m2m_imc_writes.all` | `uncore_m2m` 0x24, 0x25 | 8 | 4 of 8 (`_0..3`, the DDR side) |
| **`unc_m_tagchk.hit`, `.miss_clean`, `.miss_dirty`, `.nm_rd_hit`** | **`uncore_type_14` 0xd3, umask 1, 2, 4, 8** | **32** | **32 of 32** |

So the M2M tag events the plan expected to use read zero here; the tag lookups are counted by the HBM
channel controllers (`uncore_type_14`), which are also the units of the HBM CAS counts. `nm_rd_hit`
(umask 8) equals `hit` (umask 1) within 0.5%. `unc_m2m_imc_reads.all` on `_0..3` equals the DDR CAS
reads, and `.to_ddr_as_cache` counts nothing: in this mode the M2M sees DDR reads as memory reads.

## 3. The accounting (c, d)

Lookups = hit + clean miss + dirty miss (umask 1, 2, 4; set A and set B come from two launches of
the same workload, so the dirty-miss term is the second launch's).

| Workload | Hit rate (tags) | Hit rate, 1 − DDR reads ÷ lookups | Lookups × 64 B ÷ HBM read CAS × 32 B | DDR read bytes ÷ miss bytes | Lookups × 64 B ÷ (modeled bytes + 2 warm-up passes) |
| --- | ---: | ---: | ---: | ---: | ---: |
| read, 8 GiB | 0.919 | 0.919 | 1.0000 | 1.0009 | 0.993 |
| read, 96 GiB | 0.261 | 0.260 | 1.0000 | 1.0005 | 1.001 |
| Triad, 8 GiB | 0.921 | 0.925 | 1.0038 | 0.946 | 0.995 |
| Triad, 96 GiB | 0.261 | 0.260 | 0.9987 | 1.0016 | 1.000 |

* **(c)** Hits plus misses equal the requested lines within 0.7% (the counters run through the
  two warm-up passes, which the denominator includes).
* **(d)** The hit rate is `1 − DDR CAS reads × 64 B ÷ lookups × 64 B` to 0.005 (Triad 8 GiB: 0.004,
  from the two launches). Every lookup reads one 64-byte line from HBM (data and tag together), so
  **lookups × 64 B equal the HBM read CAS × 32 B**: the tag events add nothing the base events do
  not already give, and agree with them. A clean miss is one DDR read (the fill); a dirty miss is one
  more DDR write (the victim, which the lookup had already read from HBM): DDR writes ÷ dirty
  misses 1.008 (read and Triad at 96 GiB).
* **A finding the probe did not look for**: a 56-core read of 8 GiB, resident in a 64 GiB cache,
  hits only 92% (8% of its lines are DDR fills in every pass). That is what a direct-mapped cache gives
  when the pages of the array land on aliasing physical addresses; it is the conflict-miss mechanism
  inferred for the Cache-mode capacity curve (U3) and for the launch-to-launch spread (C2), now
  counted for the resident case (the 8 GiB points of `ucapacity` and `ucacherep` measure it per
  window). The spilled hit rate (26%) is the share of a 96 GiB array that a 64 GiB cache can keep.

## 4. Served bytes against the cores' counts (e)

Counted over the three timed windows and the warm-up, tag lookups × 64 B against the cores' own
DRAM line counts (`pmu_ocr`): read 8 GiB 1711 against 1694 GB (the warm-up adds about 17 GB, so
1.00), read 96 GiB 516 against 309 GB plus two 103 GB warm-up passes (1.00), Triad 8 GiB 1547 against
1523 GB (1.00 with its warm-up), Triad 96 GiB 824 against 621 GB plus two warm-up passes. The
streams therefore sit inside 0.98–1.02 and the Cache `uatlas` re-run is **not** triggered by this
probe; the per-window ratio is measured over `ucapacity` and `ugemm` (B3), whose intervals separate
the warm-up, and it is the GEMM points that could differ (as they do on Flat from M = 128).

## 5. What went into the code

`uncore.EVENT_SETS["cache"]` is the base set plus `hbm_tag_hit`, `hbm_tag_miss_clean`,
`hbm_tag_miss_dirty` (`uncore_type_14` 0xd3, umask 1, 2, 4), no M2M event at all: the plan's
"at most four M2M events" is moot. `sample_fields` emits `served_bytes` (lookups × 64 B), `nm_hit_bytes`,
`nm_hit_rate`, `far_bytes` (DDR reads × 64 B) and `nm_fill_bytes` (HBM writes × 32 B); the parser for
this probe's output is `hwbench.cacheprobe`.
