# Status of the analysis

The single place that says what is finished, what is running and what is left. Last updated
**2026-10-16**, after the review items C10, M3, R2 and R3 and the figure and table simplification.
Item IDs (C1–C10, M1–M3, R1–R3, U1–U4) refer to the [2026-10-16 review](archive/REVIEW_2026-10-16.md); the
history of the first review is in [archive/STATUS_2026-10-12.md](archive/STATUS_2026-10-12.md) (historical, not
maintained). The process documents are in [archive/](archive/).

## Where the work stands

| | |
| --- | --- |
| Branch | `develop`. Everything is committed; push is yours. `main` still holds only the initial commit; merging is deferred. |
| Running | Nothing. |
| Last campaigns | `flat-flatfar-20261016T121759Z` (R2, 8 records) and `flat-loadedlat-20261016T124007Z` (R3, 32 records), all valid, in the analysis. |
| Tests | 144 pass; all six notebooks execute. |
| Open | Only what needs administrator access (below) and the decisions that are yours. |

## If the work is interrupted: how to resume

Nothing is in flight. For any new cluster run: `ssh -O check cresco8` (reconnect locally with
`ssh cresco8` if the master is down), source the private environment file,
`scripts/submit_cresco8.sh flat|cache <part>`, wait for `COMPLETED` in the campaign's result
directory, list the campaign under `extended_campaigns` in `configs/analysis.json`,
`bash scripts/fetch_results.sh` (it scrubs; delete the `data/processed/platform_*.json` copies it
leaves, they are not versioned), `bash scripts/make_analysis.sh`, `pytest`, and commit data and
analysis separately. Restore the SVGs whose PNG did not change (their random ids differ on every
export). If a claim fails, the notebook stops: report the numbers rather than loosen the check
without a decision. The run recipe of every campaign part is in
[archive/05_FOLLOW_UP_RUNS.md](archive/05_FOLLOW_UP_RUNS.md).

## Coverage of the hardware characterization

| Area | State | Evidence |
| --- | --- | --- |
| Compute peaks, six paths (AVX-512 FP64/FP32/BF16, VNNI, AMX BF16/INT8) | **Done** | 94–99% of the per-cycle peak at the measured clock; three launches within 0.25%; chain sweep for AVX-512 BF16 |
| Flat DDR and HBM bandwidth (read, Triad, NT Triad, copy), 1 and 2 sockets, core scaling with clock | **Done** | Seven Flat launches of HBM read agree within 3%; sustained HBM value excludes the fast first window (C4) |
| Comparison with published Xeon Max 9480 results (M3) | **Done** | HBM read-only within 2.1% of McCalpin 2023 (Flat, one socket); DDR 11–17% higher; HBM Triad 21% lower, cause not tested; loaded latency and concurrency within 7% of the published counter values; two-socket result of Reguly 2023 is another mode and is not compared like for like. Methods text, notebook 01, claims `literature_*` |
| Traffic model (counted against modeled bytes) | **Done** | Per-core offcore-response counters: 0.989–1.003 for streams and sweep; no read-for-ownership |
| Memory hierarchy (L1, L2, L3, memory), idle latency | **Done** | L1 re-measured after the clock-read fix |
| Latency under load (R3) | **Done** | One core chasing beside 1–55 streaming cores: HBM 139 to 209 ns at 549 GB/s, DDR 116 to 373 ns at 262 GB/s; the chase does not slow the streams. Claim `loaded_latency`, notebook 02 |
| Cache mode against working set (8–128 GiB) | **Done, qualified** | Between-campaign spread up to 16% on one node (C2); spilled regime is pattern-dependent and its ordering unexplained (C3). Far latency: Flat DDR rises only 4 ns from 16 to 128 GiB against 65 ns in Cache mode, so the rise is the memory-side cache, not translation (R2); the hit rate behind it is not measured |
| NUMA: remote memory, two processes, one spanning process | **Done** | Remote HBM repeat with thread sweep; dual efficiency 0.984–1.017 |
| FP64 intensity sweep | **Done** | 12 chains reach the plateau; audited against the copy ceiling |
| oneDNN GEMM at Llama-3.1-8B shapes | **Done** | Pool convergence, call floor, prepacked layout; converged M-sweep (R1) for the headline, judged in counted bytes (within 2.9% of the 64× pool), 1.8–3.3% of weights still on chip at small M, so modeled small-M rates are that much high |
| Decode-relevant summary (M1) | **Done** | Table 5 of notebook 00; HBM beats DDR by 1.43× (BF16) and 1.55× (INT8) for a decode GEMM, not the 2.07× of the read kernel |
| Controller-level traffic, Cache hit rate, remote-HBM mechanism, clock-drop cause, energy | **Blocked** | Needs privileged uncore and RAPL access (requested from the administrators); see below |

## Items of the 2026-10-16 review

| Item | State | Where |
| --- | --- | --- |
| C1 GEMM points from a too-small pool in the headline | Done | `report.headline_gemm_points`, claims `first_sweep_small_m_bias`, `gemm_converged_sweep` |
| C2 Cache uncertainty, node attribution | Done | claim `campaign_spread` |
| C3 Spilled Cache from GEMM weight streams | Done | claim `cache_spilled_gemm` |
| C4 HBM first-window transient | Done | claim `hbm_first_window`, notebook 01 decomposition table |
| C5 One ceiling per purpose | Done (read-only for LLM statements, copy for the sweep, ERT in the atlas). `thesis/knees.csv` is still Triad-based, labelled | claim `ridge_points` |
| C6 Stale statements | Done | tests |
| C7 Far latency vs translation | **Done** (was qualified): controlled by R2 | claims `latency_translation`, `cache_latency_far` |
| C8 Cache claims skip fill-in sizes | Done | claim `cache_below_flat_ddr` |
| C9 Call-floor wording | Done | claim `gemm_call_floor` |
| C10 Labels | **Done**: the dotted line reads "nn.Linear, plain weights", the x-axis says "modeled" | `plotting.roofline_figure` |
| M1 Decode table | Done | `report.decode_table`, claim `decode_achieved` |
| M2 Between-campaign uncertainty | Done | `report.campaign_spread`, notebook 01 |
| M3 Comparison with published Xeon Max 9480 results | **Done** | `configs/literature.toml`, `report.literature_table`, methods text |
| R1 Converged GEMM M-sweep | Done, judged in counted bytes (your decision of 2026-10-16); the 64× rerun was declined | part `gemmconv` |
| R2 Flat far-latency control | **Done** | part `flatfar` |
| R3 Loaded latency | **Done**, with no kernel change (the existing chase and read kernels in the synchronized-pair mechanism) | part `loadedlat` |

## Simplification done

* Seven duplicated figures cut (33 to 27 PNGs including the new load-latency figure): `atlas_flat_2s`, `triad_core_scaling`, `ops_per_cycle`, the notebook-04 `gemm_*_m_sweep` pair, `local_remote_bandwidth` and `span_bandwidth`; their tables stay.
* Master Table 1 shows median [min–max] and one total uncertainty with a basis footnote; the decomposition (spread, sustained, repeat, between, cross-run) is in notebook 01.
* Master `compute_efficiency` is titled "per core, mean over 56 cores"; Table 3 keeps the memory rows only (the compute rows were duplicated by that figure and by Table 1).
* Process documents moved to `docs/archive/`; this file and the limitations in `04` stay.

## What is left

**Blocked on access (requested from the administrators)**: the privileged session U1–U4 of the
review (controller CAS bytes for DDR and HBM, M2M/M2HBM tag hit/miss, UPI and CHA, RAPL and
uncore frequency). Integration plan: an optional system-wide uncore group in `Counters`, per-sample
columns, `bytes_source="imc_cas"`. It would also turn the two inferences that remain into
measurements: the HBM-cache hit rate behind the far latency, and the concurrency behind the loaded
latency.

**Decisions that are yours**: pushing `develop`; merging it into `main`; removing stray cluster
directories from earlier mistyped submissions; whether the unexplained 21% gap between the published
HBM STREAM Triad and the Triad measured here deserves a run with the published setup (compiler flags
and affinity are not stated in the source, so it would be a guess).
