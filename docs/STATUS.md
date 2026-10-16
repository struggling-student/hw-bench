# Status of the analysis

The single place that says what is finished, what is running and what is left. Last updated
**2026-10-16**, after the `gemmconv` campaign (R1) was brought into the analysis. Item IDs (C1–C10, M1–M3, R1–R3, U1–U4)
refer to the [2026-10-16 review](REVIEW_2026-10-16.md); the history of the first review is in
[STATUS_2026-10-12.md](STATUS_2026-10-12.md) (historical, not maintained).

## Where the work stands

| | |
| --- | --- |
| Branch | `develop`: the analysis-only corrections (`7353450..706f71b`, pushed), this status file (`0e92fe0`), then the R1 data and analysis (committed after `0e92fe0`; push is yours). `main` still holds only the initial commit; merging is deferred. |
| Running | Nothing. |
| Last campaign | `flat-gemmconv-20261016T111248Z` (R1), 54 records, all valid, in the analysis. |
| Tests | 133 pass; all six notebooks execute. |

## If the work is interrupted: how to resume

Nothing is in flight. Start from the "What is left" list below. For any new cluster run:
`ssh -O check cresco8` (reconnect locally with `ssh cresco8` if the master is down), source the
private environment file, `scripts/submit_cresco8.sh flat|cache <part>`, wait for `COMPLETED` in
the campaign's result directory, list the campaign under `extended_campaigns` in
`configs/analysis.json`, `bash scripts/fetch_results.sh` (it scrubs; delete the
`data/processed/platform_*.json` copies it leaves, they are not versioned),
`bash scripts/make_analysis.sh`, `pytest`, and commit data and analysis separately. Restore the
SVGs whose PNG did not change (their random ids differ on every export). If a claim fails, the
notebook stops: report the numbers rather than loosen the check without a decision.

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
| oneDNN GEMM at Llama-3.1-8B shapes | **Done** | Pool convergence, call floor, prepacked layout; converged M-sweep (R1) for the headline: 16× pool, judged in counted bytes (within 2.9% of the 64× pool), 1.8–3.3% of weights still on chip at small M, so modeled small-M rates are that much high |
| Decode-relevant summary (M1) | **Done** (prepacked BF16 row from R1) | Table 5 of notebook 00; HBM beats DDR by 1.43× (BF16) and 1.55× (INT8) for a decode GEMM, not the 2.07× of the read kernel |
| Controller-level traffic, Cache hit rate, remote-HBM mechanism, clock-drop cause, energy | **Blocked** | Needs privileged uncore and RAPL access (requested from the administrators); see below |

## Items of the 2026-10-16 review

| Item | State | Where |
| --- | --- | --- |
| C1 GEMM points from a too-small pool in the headline | Done: converged sweep for M ≤ 256, first sweep above (pool-insensitive there); no hollow points, none above its ceiling | `report.headline_gemm_points`, claims `first_sweep_small_m_bias`, `gemm_converged_sweep` |
| C2 Cache uncertainty, node attribution | Done | claim `campaign_spread`, Table 1 `between` column |
| C3 Spilled Cache from GEMM weight streams | Done | claim `cache_spilled_gemm` |
| C4 HBM first-window transient | Done | claim `hbm_first_window`, Table 1 `sustained` |
| C5 One ceiling per purpose | Done (read-only for LLM statements, copy for the sweep, ERT in the atlas). `thesis/knees.csv` is still Triad-based, labelled | claim `ridge_points` |
| C6 Stale statements | Done | tests |
| C7 Far latency vs translation | Done (qualified); the control run R2 is optional | claim `latency_translation` |
| C8 Cache claims skip fill-in sizes | Done | claim `cache_below_flat_ddr` |
| C9 Call-floor wording | Done | claim `gemm_call_floor` |
| C10 Labels | Half done: roofline x-axis says "modeled"; the dotted library line is not yet labelled as `nn.Linear` with plain weights | `plotting.roofline_figure`, `report.library_ceiling` |
| M1 Decode table | Done; prepacked row from the 16× sweep | `report.decode_table`, claim `decode_achieved` |
| M2 Between-campaign uncertainty | Done | `report.campaign_spread` |
| M3 Comparison with published Xeon Max 9480 STREAM results | **Not started** (literature, no runs) | — |
| R1 Converged GEMM M-sweep | Done. Judged in counted bytes (your decision of 2026-10-16) because two criteria as first written missed narrowly: counted/modeled 0.967 at worst, DDR INT8 modeled +3.7% vs the 64× pool | part `gemmconv`, [05](05_FOLLOW_UP_RUNS.md) |
| R2 Flat DDR far-latency control | Optional, not run | — |
| R3 Loaded latency | Optional, not run (needs a small kernel addition) | — |

## What is left

**Required for the thesis**
1. Label the library line (C10).
2. M3: a short table comparing HBM and DDR bandwidth with published results for the same CPU and
   clustering mode, with citations, in the methods text.

**Simplification (recommended, no new evidence lost)**
3. Cut duplicated figures (33 PNGs now): `atlas_flat_2s`, `triad_core_scaling`, `ops_per_cycle`,
   the notebook-04 `gemm_*_m_sweep` pair, `local_remote_bandwidth` and `span_bandwidth` duplicate
   other figures. Update `configs/artifacts.json`.
4. Table 1 is now wider (spread, repeat, between-campaign, cross-run, sustained); for the thesis
   reduce it to median [min–max], total uncertainty and a basis footnote.
5. Master `compute_efficiency` title says "one core" but shows per-core averages over 56 cores;
   it also repeats the compute rows of Table 3; keep one.
6. Archive the process documents (`REVIEW_*`, `STATUS_2026-10-12.md`, `05_FOLLOW_UP_RUNS.md`)
   under `docs/archive/`; keep this file and the limitations in `04`.

**Optional runs**: R2 (about 20 min, Flat), R3 (needs a kernel addition), and R1 again with a 64× pool (about 1.5 h) if the 2–3% residual on-chip share should be removed rather than stated.

**Blocked on access (requested from the administrators)**: the privileged session U1–U4 of the
review (controller CAS bytes for DDR and HBM, M2M/M2HBM tag hit/miss, UPI and CHA, RAPL and
uncore frequency). Integration plan: an optional system-wide uncore group in `Counters`, per-sample
columns, `bytes_source="imc_cas"`.

**Decisions that are yours**: merging `develop` into `main`; removing stray cluster directories
from earlier mistyped submissions.
