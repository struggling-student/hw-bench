# Privileged-counter probe on the Cache node (cresco8-hbm13), 2026-10-20

One Slurm job (`srun -w cresco8-hbm13 --exclusive`, 40 min limit) ran `probe.sh`, which
checks the node and then `probe.py`, the event-identification probe for the memory-side
cache. `node.txt` is the node check as printed (account name scrubbed).

## 1. What the node allows

| Check | Result |
| --- | --- |
| sudoers | `(root) NOPASSWD: /usr/bin/perf stat*, /usr/bin/ipmitool sensor, /usr/bin/turbostat`, the same rule as the Flat node |
| `/usr/bin/perf` | **not installed**: `sudo: /usr/bin/perf: command not found` (hbm14 has `perf-5.14.0-427.13.1.el9_4`) |
| Memory mode | Cache: two NUMA nodes with CPUs (no CPU-less HBM nodes); HMAT memory-side cache of 64 GiB per node, 64 B lines |
| PMUs | `uncore_imc_0..7`, `uncore_m2m_0..3` and `_14..17`, `uncore_type_14_0..31`, `uncore_upi_0..3`, `uncore_pcu`, `power`: the same set as the Flat node |
| RAPL | PL1 350 W over 0.999 s, PL2 420 W over 11.7 ms, as on the Flat node |
| Uncore frequency | 0.8–2.5 GHz on both packages, as on the Flat node |
| `turbostat` | works (version 2023.11.07); idle: 821 MHz busy clock, 275 W both packages, uncore 0.8 GHz |
| `ipmitool sensor` | works: Sys Power 400 W, CPU Power 270 W, Mem Power 43 W, CPU temperatures 39–40 °C (idle) |

## 2. Event identification (not run)

`probe.py` would count, under one `sudo -n perf stat -a --per-socket --no-merge` session per
workload (enabled and disabled by the benchmark through the control FIFOs, so first touch is
not counted), a 56-core read and Triad at 8 GiB (resident) and 96 GiB (spilled) with two event
sets:

* A: DDR and HBM CAS (`uncore_imc`, `uncore_type_14` event 0x05), `unc_m2m_tag_hit.nm_rd_hit_clean|dirty`
  (`uncore_m2m` 0x1f/0x01, 0x02), `unc_m2m_tag_miss` (0x4b/0x03), `unc_m2m_imc_reads.all` (0x24/0x304),
  `unc_m_tagchk.hit|miss_clean` (`uncore_imc` 0xd3/0x01, 0x02) and the same tag-check encoding on
  `uncore_type_14`;
* B: `unc_m2m_tag_hit.nm_ufill_hit_clean` (0x1f/0x04), `unc_m2m_imc_reads.to_ddr_as_mem|to_ddr_as_cache`
  (0x24/0x308, 0x310), `unc_m2m_imc_writes.all` (0x25/0x1810), `unc_m_tagchk.miss_dirty|nm_rd_hit`
  and the tag-check encodings on `uncore_type_14`.

Encodings come from `perf list --details` on the Flat node (same kernel and perf event tables).
It stopped at its first perf call because perf is missing. Once perf is installed it runs
unchanged; what it has to establish is which M2M instances (`_0..3` DDR side or `_14..17`
HBM side) count the tag lookups, that hits plus misses equal the lines requested, and the
hit-rate formula with its cross-check (1 − DDR CAS reads ÷ requests).

Meanwhile the Cache-node campaigns run with turbostat only (`docs/06_COUNTERS.md`).
