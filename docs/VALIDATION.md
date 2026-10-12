# Validation and preserved anomalies

The campaign intentionally retains unsuccessful and superseded output. Final figures
select corrected records by explicit metadata rather than deleting inconvenient data.

## Flat staging failures

Two initial Flat launches demonstrated that detached processes cannot depend on an AFS
token: the first could not read the top-level script and the second lost access while
launching a child. The campaign was moved to a compute-node-accessible staged copy. A further BF16
container launch showed that Apptainer did not expose that staged source directory;
an explicit read-only bind fixed it. `direct.err` preserves all three diagnostics.

## Cache normalization wrapper

The first Cache Slurm job completed every measurement but exited nonzero when the final
cluster-side normalization command lacked `PYTHONPATH`. Raw counts were complete and
the error occurred after the last intensity record. Local normalization is the intended
authoritative path and the top-level script now exports its own `src` directory.

Two malformed exploratory `sbatch --wrap` submissions also allowed a superseded
compute command to continue on the login host after `sbatch` rejected its arguments.
Those records are preserved but excluded automatically because their hostname does not
match the topology snapshot for the target mode. No reported ceiling includes them.

## oneDNN BF16 affinity anomaly

oneDNN 3.12 verbose output proved that `brg_matmul:avx10_1_512_amx` was selected, but
the initial 4096³ series scaled inversely when `OMP_PROC_BIND=close` and
`OMP_PLACES=cores` were inherited by the container. A controlled three-policy probe on
the same node class showed:

- `close` and `spread`: multi-thread performance declined;
- both variables unset, while retaining identical `numactl` CPU and memory masks:
  expected positive scaling returned;
- 6144³ and 8192³ size probes were stable, so 6144³ was selected to keep the full
  scaling campaign efficient while remaining compute-dominant.

Rejected records have empty notes. Accepted records carry
`onednn_numactl_only_omp_affinity_unset`. The notebook and final summary select only
the latter, while raw data retains both.

## Arithmetic-intensity dependency anomaly

The first intensity kernel used one recurrence chain. Its performance rose in the
memory-bound region and then fell at high `K`, correctly measuring its own FMA latency
but failing to exercise the compute Roofline. The replacement operates on eight
independent AVX-512 accumulator chains, is checksum-validated, and carries the note
`avx512_8_independent_chains`. Only corrected points are overlaid on Roofline figures;
the dependency-limited records remain available for audit.

## Acceptance rules

- No result with a nonzero benchmark return code or failed checksum enters the
  normalized dataset, except that known launch failures are reported as preserved
  warnings.
- oneDNN BF16 data requires an AMX implementation name in verbose output.
- Native AMX binaries must contain `tdpbf16ps` in retained disassembly.
- Results above the model’s 3.5 GHz max-turbo architectural bound fail validation.
- Important bandwidth groups require at least five steady timed repetitions.
- Coefficient of variation above 5% is flagged in `summary.csv` for inspection.

## Thesis-focused duration-based campaigns

The newer campaigns retain legacy raw records but explicitly select current measurements. The first duration-based runs completed memory characterization and then failed at the concurrent GEMM test because the container could not access the synchronization directory. That failure is retained. The corrected path uses shared host `/tmp` readiness files and an explicit writable results bind.

A staged compute follow-up with an incorrect clock conversion was cancelled before its results were selected. Its partial output is archival evidence only. Subsequent kernels retain the monotonic nanosecond clock and use longer arithmetic blocks to reduce OpenMP re-entry overhead. Native AMX and library GEMM are never merged.

Successful memory/sweep and compute follow-ups are selected explicitly by campaign and benchmark. Validation requires completion markers, both socket baselines, five samples per cell, actual worker counts, numerical checks, instruction evidence, positive timing, matching host/mode, and synchronized aggregates. Legacy dual totals lacking shared windows are excluded. Raw records from failed attempts remain available for audit.

## Extended campaigns (October 12)

### Restoring the thesis pipeline

The October-11 processing code and its policy files had been reverted locally. They were
recovered from the `system/source_snapshot` of each campaign (hash-checked against
`campaign.json`) and from the staged source copies on the cluster, committed as the
campaigns executed them, and extended until the regenerated `measurements.csv`,
`selection_audit.csv`, `summary.csv` and every `data/processed/thesis/*.csv` matched the
published files byte for byte. Two facts could not be recovered exactly: the policy file
(its bytes differ, so `selection_sha256` in `validation.json` differs; its content was
rebuilt from the selection audit) and the first version of `benchmarks/amx/torch_amx.py`,
which was edited while the first campaigns were running, so those GEMM records carry the
hash of the executed file in their own result and the launch-time hash in `campaign.json`
differs for part of them. The GEMM sweep (`torch_gemm.py`) supersedes `torch_amx.py`.

### Execution-context guard

The first attempt to start the Flat GEMM part was refused by the guard (1-minute load
19.8 on the Flat node, still decaying from the previous part). Its empty campaign directory
`flat-gemm-20261012T063640Z` is retained and never selected. The Flat launcher now waits up to ten
minutes for the node to settle before the idle check.

### Interrupted and resumed campaign

The Cache GEMM part (`cache-gemm-20261012T063700Z`) hit its one-hour limit after 103 records
because initializing the 96 GiB weight pool dominates. A second campaign resumed it
(`HW_BENCH_RESUME`), skipping the records already held and measuring the rest; the spilled-pool
sweep was reduced to batch sizes 1, 16, 256 and 4096. Validation accepts the interrupted campaign
only because a completed campaign declares it resumed.

### Observations that are not defects

* **AVX-512 BF16** (`vdpbf16ps`) reaches about 30 operations per cycle per core, roughly one
  instruction every two cycles. uops.info lists 2.0 cycles per instruction (32 operations per cycle)
  for the same core family, so the path runs at about 94% of its bound; the 128 used before the
  2026-10-12 review was an unsourced two-port assumption and has been replaced. The inner loop
  is twelve independent `vdpbf16ps` (checked in the disassembly), so this is a property of the
  instruction on this part, not of the kernel; the `chains` campaign part confirms it on the node.
* **`torch._int_mm`** gives correct INT8 results but never reaches oneDNN, so it is rejected
  by the AMX-evidence rule; `onednn.qlinear_pointwise` (u8×s8, `brg_matmul:avx10_1_512_amx`) is
  the verified INT8 path.
* **16 KiB read bandwidth** is below 32 KiB because one pass takes tens of nanoseconds, comparable to
  the clock read that ends each pass.
* **Cache-mode Triad** differs by 4–7% between the two Cache nodes tested (hbm02 above hbm01) while
  compute differs by under 1%. It is reported as node-to-node variance; the Cache ceilings use the
  node that also produced the October data.
* **Remote HBM reads** have high run-to-run variation (CV 11–15%) and are flagged, not removed.
* One dual-socket non-temporal Triad window in Cache mode failed the 95% overlap rule and was rejected;
  that configuration keeps four samples, reported as a warning.
* **Smoke campaigns** (`*-smoke-*`) prove the build and counters and are never selected.

### Added acceptance rules

* Flat extended campaigns: dedicated node, launch `ssh` (or the October `slurm_exclusive`),
  topology Flat, no foreign Slurm job at pre- or post-flight; Cache: Slurm, other node, topology Cache.
* A record with a foreign job seen around it is rejected as `interference_suspected`.
* Every new instruction family needs its mnemonic in the retained disassembly
  (`tdpbssd`, `vpdpbusd`, `vdpbf16ps`, `vmovntpd`, in addition to the earlier two).
* No compute result may exceed the theoretical peak at the measured effective clock by more than 2%.
* Dual-socket windows should overlap by 99% (warning); five steady samples per configuration.

### Repeat-run cross-check (part `xcheck`)

Flat, over SSH on the dedicated node, against the October values taken through an exclusive
Slurm allocation on the same node: compute and DDR Triad agree within 0.4% at every point, HBM
Triad on socket 0 within 0.3% and on socket 1 within 2.6% (sample variation 3.7%); 9 of 10 points
are inside the 2% criterion, so the launch method does not matter and the October Flat data may
share rooflines with the SSH data. Cache, on a second node (hbm02) against the first (hbm01): compute
within 0.6%, Cache-mode Triad 4.0% and 7.3% higher, reported above as node-to-node variance.
