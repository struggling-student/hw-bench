# Status of the analysis

The single place that says what is finished, what is running and what is left. Last updated
**2026-10-16**, while the `gemmconv` campaign was running. Item IDs (C1–C10, M1–M3, R1–R3, U1–U4)
refer to the [2026-10-16 review](REVIEW_2026-10-16.md); the history of the first review is in
[STATUS_2026-10-12.md](STATUS_2026-10-12.md) (historical, not maintained).

## Where the work stands

| | |
| --- | --- |
| Branch | `develop`, pushed up to `706f71b` (the analysis-only corrections of the 2026-10-16 review). `main` still holds only the initial commit; merging is deferred. |
| Running | Campaign `flat-gemmconv-20261016T111248Z` (part `gemmconv`, review item R1) on `cresco8-hbm14`, tmux session of the same name, started 2026-10-16 11:12 UTC; 54 records, about 75 minutes. |
| Uncommitted | The analysis wiring for that campaign: `report.converged_sweep`, `headline_gemm_points` and `decode_table` read it; claim `gemm_converged_sweep`; notebook 00, 04 and 05 text and cells; `tests/test_review_20261016.py` rewritten for the converged state (its C1 tests fail until the campaign is in the data). |
| Tests | 132 pass at `706f71b`. |

## If the work is interrupted: how to resume

1. `ssh -O check cresco8`. If the master is down, reconnect locally with `ssh cresco8` first.
2. Check the campaign:
   `ssh cresco8 'ls <results root>/flat-gemmconv-20261016T111248Z'`. It is finished when
   `COMPLETED` exists (54 files in `records/`). If the tmux session is gone without `COMPLETED`,
   read its `run.log` and measure the missing records in a new campaign with
   `HW_BENCH_RESUME=flat-gemmconv-20261016T111248Z scripts/submit_cresco8.sh flat gemmconv`: it
   skips the valid records of the interrupted campaign, and both campaign ids are then listed in
   step 3 (validation accepts the interrupted one only because a completed campaign resumes it).
3. Add `flat-gemmconv-20261016T111248Z` (and a resuming campaign, if any) to `extended_campaigns.flat` in `configs/analysis.json`,
   then `source ~/.config/hw-bench/cresco8.env && bash scripts/fetch_results.sh` (it also scrubs).
4. `bash scripts/make_analysis.sh`, then `.venv/bin/python -m pytest -q`.
5. Acceptance of R1 (claim `gemm_converged_sweep`, checked when notebook 04 runs):
   counted/modeled 0.97–1.03 at M ≤ 16; M = 1 and 16 within 3% of the 64× `gemm_pool`
   points; no point above the read ceiling of its tier. If a criterion fails, the notebook stops:
   report the numbers rather than loosen the check.
6. Update this file, `05_FOLLOW_UP_RUNS.md` (R1 ran), the R1 row of the old status file, and
   commit the data and the analysis separately (`data(raw): …`, `feat(gemm): …`). Restore the
   SVGs whose PNG did not change (their random ids make them differ on every export).

## Coverage of the hardware characterization

| Area | State | Evidence |
| --- | --- | --- |
| Compute peaks, six paths (AVX-512 FP64/FP32/BF16, VNNI, AMX BF16/INT8) | **Done** | 94–99% of the per-cycle peak at the measured clock; three launches within 0.25%; chain sweep for AVX-512 BF16 |
| Flat DDR and HBM bandwidth (read, Triad, NT Triad, copy), 1 and 2 sockets, core scaling with clock | **Done** | Seven Flat launches of HBM read agree within 3%; sustained HBM value excludes the fast first window (C4) |
| Traffic model (counted against modeled bytes) | **Done** | Per-core offcore-response counters: 0.989–1.003 for streams and sweep; no read-for-ownership |
| Memory hierarchy (L1, L2, L3, memory), idle latency | **Done** | L1 re-measured after the clock-read fix |
| Cache mode against working set (8–128 GiB) | **Done, qualified** | Between-campaign spread up to 16% on one node (C2); spilled regime is pattern-dependent and its ordering unexplained (C3); far latency is an upper bound on miss cost (C7) |
| NUMA: remote memory, two processes, one spanning process | **Done** | Remote HBM repeat with thread sweep; dual efficiency 0.984–1.017 |
| FP64 intensity sweep | **Done** | 12 chains reach the plateau; audited against the copy ceiling |
| oneDNN GEMM at Llama-3.1-8B shapes | **Done except the headline M-sweep** | Pool convergence, call floor, prepacked layout measured; the converged M-sweep (R1) is running |
| Decode-relevant summary (M1) | **Done**, prepacked BF16 row pending R1 | Table 5 of notebook 00; HBM beats DDR by 1.43× (BF16) and 1.55× (INT8) for a decode GEMM, not the 2.07× of the read kernel |
| Controller-level traffic, Cache hit rate, remote-HBM mechanism, clock-drop cause, energy | **Blocked** | Needs privileged uncore and RAPL access (requested from the administrators); see below |

## Items of the 2026-10-16 review

| Item | State | Where |
| --- | --- | --- |
| C1 GEMM points from a too-small pool in the headline | Interim fix committed (converged points at M = 1, 16, 256, the rest hollow); **final fix waits for R1** (wiring uncommitted) | `report.headline_gemm_points`, claims `first_sweep_small_m_bias`, `gemm_converged_sweep` |
| C2 Cache uncertainty, node attribution | Done | claim `campaign_spread`, Table 1 `between` column |
| C3 Spilled Cache from GEMM weight streams | Done | claim `cache_spilled_gemm` |
| C4 HBM first-window transient | Done | claim `hbm_first_window`, Table 1 `sustained` |
| C5 One ceiling per purpose | Done (read-only for LLM statements, copy for the sweep, ERT in the atlas). `thesis/knees.csv` is still Triad-based, labelled | claim `ridge_points` |
| C6 Stale statements | Done | tests |
| C7 Far latency vs translation | Done (qualified); the control run R2 is optional | claim `latency_translation` |
| C8 Cache claims skip fill-in sizes | Done | claim `cache_below_flat_ddr` |
| C9 Call-floor wording | Done | claim `gemm_call_floor` |
| C10 Labels | Half done: roofline x-axis says "modeled"; the dotted library line is not yet labelled as `nn.Linear` with plain weights | `plotting.roofline_figure`, `report.library_ceiling` |
| M1 Decode table | Done; prepacked row switches to the 16× sweep when R1 is in | `report.decode_table`, claim `decode_achieved` |
| M2 Between-campaign uncertainty | Done | `report.campaign_spread` |
| M3 Comparison with published Xeon Max 9480 STREAM results | **Not started** (literature, no runs) | — |
| R1 Converged GEMM M-sweep | **Running** | part `gemmconv` |
| R2 Flat DDR far-latency control | Optional, not run | — |
| R3 Loaded latency | Optional, not run (needs a small kernel addition) | — |

## What is left

**Required for the thesis**
1. Finish R1 (steps above) and commit; then the headline roofline has no hollow points.
2. Label the library line (C10).
3. M3: a short table comparing HBM and DDR bandwidth with published results for the same CPU and
   clustering mode, with citations, in the methods text.

**Simplification (recommended, no new evidence lost)**
4. Cut duplicated figures (33 PNGs now): `atlas_flat_2s`, `triad_core_scaling`, `ops_per_cycle`,
   the notebook-04 `gemm_*_m_sweep` pair, `local_remote_bandwidth` and `span_bandwidth` duplicate
   other figures. Update `configs/artifacts.json`.
5. Table 1 is now wider (spread, repeat, between-campaign, cross-run, sustained); for the thesis
   reduce it to median [min–max], total uncertainty and a basis footnote.
6. Master `compute_efficiency` title says "one core" but shows per-core averages over 56 cores;
   it also repeats the compute rows of Table 3; keep one.
7. Archive the process documents (`REVIEW_*`, `STATUS_2026-10-12.md`, `05_FOLLOW_UP_RUNS.md`)
   under `docs/archive/` once R1 is in; keep this file and the limitations in `04`.

**Optional runs**: R2 (about 20 min, Flat), R3 (needs a kernel addition).

**Blocked on access (requested from the administrators)**: the privileged session U1–U4 of the
review (controller CAS bytes for DDR and HBM, M2M/M2HBM tag hit/miss, UPI and CHA, RAPL and
uncore frequency). Integration plan: an optional system-wide uncore group in `Counters`, per-sample
columns, `bytes_source="imc_cas"`.

**Decisions that are yours**: merging `develop` into `main`; removing stray cluster directories
from earlier mistyped submissions.
