# The Flat HBM Triad against the published STREAM Triad

Question: the thesis kernel measures 554 GB/s of HBM Triad on one socket (Flat, 56 cores), 21% below
the 700 GB/s of McCalpin's STREAM scaling curve (IXPUG ISC 2023, slides 4–5). Why?

Short answer: the node is not different. The unmodified `stream.c` reproduces the published figure
(678–711 GB/s). The 21% is three properties of how the thesis kernel is measured, none of them a
property of the hardware: a data pattern that costs about 12%, a loop that is not unrolled (about
6%), and a median of one-second windows where STREAM reports the best of many short iterations
(about 9%). The data effect is not specific to Triad: read-only HBM moves by the same kind of amount (E5), and the thesis pattern behaves like random data. E6 measured the mechanism with the privileged counters that became available on 2026-10-19: the package is at its 350 W power limit whatever the data, random data leaves less of it for the uncore (mesh) clock, and HBM bandwidth follows that clock. DDR shows no dependence.

Campaigns `flat-streamgap-20261016T132035Z` (E0–E3), `flat-streamgap_e4-20261016T132755Z` (E4) and `flat-streamgap_e5-20261016T135914Z` (E5),
both on the Flat node, outside Slurm, idle node, 56 threads on cores 0–55, `numactl --membind=2`,
three launches of every configuration run in rotation. Code: `benchmarks/streamgap/stream_gap.c`,
`scripts/streamgap.sh`, `scripts/streamgap_e4.sh`, `scripts/streamgap_e5.sh`, `scripts/streamgap_submit.sh`; tables with
`python3 scripts/streamgap_summary.py data/raw/streamgap/<campaign>`. This is separate from the
thesis campaign pipeline: E0–E5 do not enter `configs/analysis.json`, the notebooks or the claims; E6
(below) does, as `data_pattern_campaign`, in notebook 06.
All outputs were verified element by element.

## What the publications say

* The 700 GB/s is the 56-core point of a STREAM scaling curve; the companion TACC application deck
  (Wang, McCalpin et al., IXPUG ISC 2023, slide 3) reports Copy 1371.4 and Triad 1371.8 GB/s on two
  sockets, so Copy equals Triad, and states that streaming stores were used but change the result by
  about 3%. Its HBM node had the DDR5 DIMMs removed (HBM-only), which this node does not.
* Compiler, flags, array size and affinity are still not stated.
* With streaming stores, 700 GB/s is about 467 GB/s of reads and 233 GB/s of writes. That is below
  McCalpin's read limit of 575–590 GB/s, so the published Triad does not contradict the read limit
  (an earlier wording here said it exceeded it; that holds only if stores also read).

## E0 — node state

Transparent huge pages `always` and in use (473 MB of 480 MB resident in a test run), so huge pages
are not the cause. Governor `schedutil` (`acpi-cpufreq`, 0.8–1.9 GHz). Uncore frequency range
0.8–2.5 GHz, dynamic. The current uncore frequency, RAPL energy and MSRs are root-only and
`perf_event_paranoid` is 2, so neither power nor uncore clock could be observed during a run.
Intel `icx` 2025.3 and GCC 11.4.1 are available.

## E2 — the vendored `stream.c`, unmodified (checksum identical to `third_party/stream/stream.c`)

Best Triad rate, 56 threads, median of three launches, GB/s; Copy is 671–706 GB/s for the 160M builds.

| Build (160M elements per array, 3.6 GiB) | `OMP_PROC_BIND=close` | `spread` |
| --- | --- | --- |
| GCC `-O3 -march=sapphirerapids` | 678 | 688 |
| icx `-xSAPPHIRERAPIDS`, default stores | 615 | 613 |
| icx, `-qopt-streaming-stores=never` | 662 | 661 |
| icx, `-qopt-streaming-stores=always` | 705 | 711 |
| *Published (McCalpin 2023)* | *700* | |

Within 3% of the publication with GCC, within 2% with icx and streaming stores; the Intel compiler
without the flag is 12% lower, so compiler choice alone moves STREAM by 15% here. Placement does not
matter (56 threads fill the socket either way). A 10M-element STREAM (STREAM's default, 240 MB) reads
723–767 GB/s with GCC: it is partly cache-resident.

## E1 — array size and the best-of convention

The Triad of a compiler loop, per iteration after the first, GB/s (median of launches):

| Elements per array | 10M | 40M | 160M | 320M | 640M | 1280M |
| --- | --- | --- | --- | --- | --- | --- |
| best iteration | 732 | 732 | 683 | 678 | 665 | 644 |
| median iteration | 654 | 628 | 598 | 597 | 597 | 594 |

Medians are flat from 160M elements (memory-bound); the best iteration falls with size as cache
help disappears. Iterations scatter by about ±8% (p10 569, p50 599, p99 681 in one 160M launch), and the first
half second runs about 7% faster than the rest, so a best-of-N reports the top of the distribution
(+13–15% over the median) and STREAM's default 10 iterations last about 70 ms, inside the fast start.

## E3 — kernel variants (160M elements, constant data), median / best, GB/s

| Variant | median | best |
| --- | --- | --- |
| compiler loop, ordinary stores | 599 | 688 |
| 1 line per iteration, intrinsics, ordinary stores | 610 | 695 |
| 1 line, non-temporal stores | 630 | 725 |
| 4 lines, ordinary stores | 619 | 688 |
| 4 lines, non-temporal stores | 674 | 747 |
| 4 lines, non-temporal, software prefetch to L1 (8–64 lines ahead) | 590–611 | 707–727 |
| 4 lines, non-temporal, software prefetch to L2 (16–64 lines ahead) | 634–638 | 736–751 |
| Copy, 4 lines, non-temporal | 650 | 738 |

Software prefetch does not help and prefetch into L1 hurts non-temporal stores by up to 12%, so the
hypothesis that the hardware prefetcher limits Triad concurrency is not supported. Unrolling four
lines and non-temporal stores help together by 12% over the compiler loop.

## E4 — what separates the thesis kernel from the same kernel here (357.9M elements, as in the thesis)

Median GB/s of 2.5 s runs, three launches. The thesis kernel itself (`hardware --kind triad_nt`,
five one-second samples) measured 553–564 GB/s at the start, middle and end of both campaigns, so the
node did not drift.

| Kernel | thesis data (`b=1+(i%17)e-3`, `c=2-(i%13)e-3`) | constant data (`b=2`, `c=0.5`) |
| --- | --- | --- |
| 1 line, non-temporal (the thesis loop shape) | 559 | 635 |
| same, pointers reloaded every iteration as the lambda in `hardware.cpp` does | 565 | 618 |
| 4 lines, non-temporal | 594 | 673 |
| compiler loop, ordinary stores | 563 | 605 |
| 4 lines, non-temporal, best iteration instead of median | 700 | 733 |

A 10 s run of the 4-line kernel holds 589 GB/s with thesis data and 639 GB/s with constant data in
every second, so the data effect is sustained, not a start-up transient.

## E5 — the data pattern, read-only and Triad, four patterns

The read kernel of `hardware.cpp` (eight accumulators, eight lines per iteration, one private array
per thread, 8 GiB in all) was reproduced in `stream_gap` and run with the thesis pattern, constants
(`2.0`), uniformly random mantissas in [1, 2) and zeros; the 4-line non-temporal Triad (thesis size)
ran with the same four patterns. Three launches each, the order of the patterns rotated between
launches, medians of the iterations after the first, GB/s. The thesis kernel (`hardware --kind read`)
measured 538–552 GB/s at the start and after each repeat, and its Triad 553–559 GB/s.

| Pattern | Read-only, 3 s | Read-only, 10 s | Triad, 3 s |
| --- | --- | --- | --- |
| thesis (`1+(i%17)e-3`) | 525–564 (launches differ) | 527 | 597 |
| random | 528 | | 596 |
| constant | 575 | 576 | 674 |
| zero | 588 | | 668 |

* **The thesis pattern behaves like random data**, for reads and for Triad: 527 against 528 GB/s
  read-only, 597 against 596 Triad. Constants and zeros are faster, by 9–12% read-only and 12–13%
  Triad. The effect is the same kind for both kernels and is sustained over 10 s. The 3 s read-only
  runs with the thesis pattern scattered between launches (525–564) while the 10 s runs did not
  (525–528); the sustained value is the lower one.
* McCalpin's all-core read figure of about 575–590 GB/s (slide 12) matches the constant and zero
  reads here (575–595), and his Triad of 700 lies between the constant-data Triad here (674 median, 738 best); the thesis read ceiling
  (543 GB/s from `hardware`) sits between his 555 (slide 4) and what random data gives here (527).

## Reading

From the thesis 554 GB/s to the published 700 GB/s, in one harness on one node:

| Step | Effect | Result (GB/s) |
| --- | --- | --- |
| thesis kernel in the thesis harness | | 554 |
| same loop shape in `stream_gap` (thesis data) | 559: the harness is not the cause | 559 |
| pointer reloads removed | none (565 with them) | 559 |
| 4-line unroll | +6% | 594 |
| constant data instead of varied | +13% | 673 |
| best iteration instead of median | +9% | 733 |
| *unmodified STREAM, GCC / icx streaming stores* | | *678–688 / 704–711* |

* **Data.** Only the initial values differ between the two columns; the kernel, size, placement and
  verification are the same, and the effect holds for every loop (−7% to −12%). The mechanism is not
  measured. Data-dependent power (signal toggling on the HBM interface, floating-point activity)
  under a power limit fits, and so does the modest ±8% iteration scatter, but RAPL and the uncore
  clock are not readable here (E0). Treat it as an observed dependence on the data.
* **Loop.** The compiler loop of the thesis kernel is the slowest shape; 4 lines per iteration
  recover 6%. It is a kernel property, not a hardware one.
* **Convention.** The thesis reports the median of five one-second windows. STREAM reports the best
  of N short iterations, which is 9–15% higher than the median of the same run.

What this does and does not change:

* The thesis Triad of 554 GB/s is a correct sustained figure for that kernel and data, and the
  platform is not slower than the one McCalpin measured. It should not be called a failure to
  reproduce the published Triad: with STREAM's own method the node reaches it.
* The thesis read-only ceiling (543 GB/s, used for every LLM statement) is a high-entropy-data
  figure: with random data the same kernel reaches 527–528 GB/s here, with constants or zeros 575–595.
  The published 555 GB/s lies between them and its data are unknown, so the agreement within 2.1% is
  real but it does not say that the ceiling is data independent; it is not. Model weights are not
  constants, so the thesis ceiling is the better one for a decode bound, but that was not checked
  against real weights, and a statement of the HBM read ceiling should carry the data pattern.
* Because the effect is on reads as well as writes, it is not a store or a write-allocate
  property; the straightforward reading is a data-dependent limit on the whole memory path.
* Not tested: other constants and partially random data (how the effect scales with entropy), real
  model weights, HBM-only mode (needs the DIMMs removed), the SNC4 mode. DDR and the uncore clock and
  power during a run are covered by E6 below.

## E6 — power and the uncore clock behind the data effect (2026-10-19)

Campaign `flat-streamgap_e6-20261019T212743Z`, script `scripts/streamgap_e6.sh`. The read-only
kernel of E5 (`stream_gap --kernel read`, 8 GiB, 56 cores, 600 iterations on HBM and 300 on DDR,
about 10 s each) with the four patterns on HBM and DDR, three rotated repeats. Beside every launch a
system-wide `sudo perf stat` session (the privileged access granted on 2026-10-19, events of
`hwbench.uncore.BASE_EVENTS`) read the controllers, RAPL package and DRAM energy, the CHA clock and
the PCU's power-limit cycles every 100 ms; its workload is a `tail --pid` on the launch, so it ends
with it. Medians over the read phase of each launch (`hwbench.uncore.kernel_phase`), then over the
three repeats (`report.data_pattern_counters`, notebook 06):

| Tier | Data | Kernel GB/s | Controller GB/s | Uncore GHz | Package W | Power-limited |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| HBM | zero | 587 | 583 | 1.66 | 350 | 100% |
| HBM | constants | 572 | 579 | 1.64 | 352 | 100% |
| HBM | thesis (varied) | 528 | 532 | 1.53 | 353 | 100% |
| HBM | random | 526 | 531 | 1.53 | 352 | 100% |
| DDR | all four | 261.2–261.4 | 258.7–258.9 | 1.99–2.02 | 350 | 100% |

* **The mechanism.** All launches hold the package at PL1 (350 W). With random or the thesis data the
  same power buys a 1.53 GHz uncore; with constants or zeros 1.64–1.66 GHz, and HBM bandwidth moves in
  proportion: every HBM launch delivers 343–355 GB/s per uncore GHz whatever its data, including the
  campaign's first launch after idle (565 GB/s at 362 W, the first-window effect of notebook 01). So
  random-looking data costs more energy per byte (data-dependent switching on the HBM interface and
  mesh is the likely consumer, not separated here), and under the power limit that lowers the clock
  that sets HBM bandwidth.
* **DDR** is at the same power limit but its bandwidth is set by the DIMMs: the pattern changes
  nothing (0.1%).
* For the thesis: the read ceiling of 527–543 GB/s is the random-data value under the package power
  limit. Constants would reach about 575–590 GB/s on this node, as McCalpin's figure does.

## E7 — how high can one socket go? (2026-11-01)

Campaign `flat-streamgap_e7-20261101T100644Z`, script `scripts/streamgap_e7.sh`, kernel `stream_gap --kernel mix`.
Flat node, outside Slurm, 56 threads on cores 0–55, memory on HBM node 2 and DDR node 0, 357.9M elements per
array (the 8 GiB Triad of the thesis), constants unless stated, 300 (HBM) and 150 (DDR) iterations per launch,
three launches of every configuration in rotated order. Reference: the 4-line non-temporal Triad of E4.
All 80 kernel variants were checked on a small array first and all outputs element by element; no failures.
Tables: `python3 scripts/streamgap_summary.py data/raw/streamgap/flat-streamgap_e7-20261101T100644Z`.
Medians over iterations are the sustained rate; "best" is STREAM's convention (best iteration).

**Result: no kernel change moves either tier by more than the noise.** The limit is the memory path, not the loop.

| One-factor change from the reference (HBM, median of iterations) | GB/s | vs reference |
| --- | ---: | ---: |
| reference (Triad, 4 lines, non-temporal, 56 cores) | 639.5 | — |
| 8 lines per iteration | 642.6 | +0.5% |
| 1 / 2 / 16 lines per iteration | 629.9 / 626.5 / 633.1 | −1.5 / −2.0 / −1.0% |
| array stagger of 1–1031 lines (6 values) | 642–649 | +0.4 to +1.5% |
| ymm instead of zmm (4 / 8 lines) | 623.9 / 622.4 | −2.4 / −2.7% |
| ordinary instead of non-temporal stores | 623.8 | −2.5% |
| 52 cores (close / spread) | 638.6 / 642.4 | −0.1 / +0.5% |
| 48 / 42 / 36 / 28 cores (close) | 608.6 / 592.4 / 521.0 / 444.5 | −4.8 / −7.4 / −18.5 / −30.5% |
| thesis data / random data | 567.6 / 576.7 | −11.3 / −9.8% |

* **Read:write mix.** With the same per-array size, 1 read stream per write (Copy) sustains 654.6 GB/s,
  2 (Triad) 640–650, 3 reads 629.5 and 4 reads 597.8; read-only streams, E6, 527–587. More writes
  per read gives a higher total, so the HBM limit is not a pure read limit; a write-only stream was not run.
* **Cores.** From 52 cores up the rate is flat; below that it falls in proportion. Fewer cores do not buy
  a faster uncore clock back: the rate is limited by the concurrency the cores supply, and the uncore
  clock was not read in this campaign. 56 cores is the right count for both tiers on HBM.
* **Data** is the one lever that matters (−10 to −11%), and it is the power-limited uncore clock of E6.
  A constant-data figure is a best case; model weights behave like the thesis or random data.
* **Best-of convention.** The best iteration of the same launches is 724–788 GB/s (best Triad 759 with
  a 67-line stagger; Copy 789). The vendored `stream.c` (GCC) gives 670–678 on this node in the same campaign,
  so best-of figures of the new kernel are 7–13% above the unmodified STREAM, while its sustained median
  (640–650) is 5–6% below STREAM's best-of.
* **Run-to-run level.** The reference median here is 640 GB/s against 673 in E4 (same kernel, constants):
  5% between days on the same node, which is the size of every difference above except cores < 52,
  data, and read-heavy mixes.

DDR (socket 0, 8 GiB per array):

| | GB/s | vs reference |
| --- | ---: | ---: |
| reference | 234.1 | — |
| 28 / 36 / 42 cores | 237.3 / 236.0 / 235.2 | +1.4 / +0.8 / +0.5% |
| every unroll, stagger, width, store, data pattern | 231.9–233.6 | −0.0 to −0.9% |
| Copy (1 read per write) / 3 reads / 4 reads | 228.0 / 234.9 / 233.9 | −2.6 / +0.4 / −0.1% |
| vendored `stream.c`, best Triad | 237.7–238.2 | |

DDR Triad stops at about 237 GB/s from 28 cores on, which is 77% of the 307.2 GB/s computed peak, and the
vendored STREAM gets the same number. The read-only kernel reaches 261 GB/s (85%). A 2:1 read:write mix
costs about 10% on DDR from bus turnaround; nothing in the kernel changes it. DDR is at its practical
ceiling.

What E7 does not say: why the HBM sustained rate stays at 640–655 GB/s and whether any software setting
can lift it (the uncore clock and power were not recorded here; E6 says the 350 W package limit sets the
uncore clock, which sets HBM bandwidth). The "up to 1 TB/s" vendor figure has not been approached by
any kernel here or in the published STREAM scaling curve (700 GB/s with streaming stores).

## E7c — the uncore clock and power behind the E7 plateau (2026-11-01)

Campaign `flat-streamgap_e7c-20261101T103151Z`, script `scripts/streamgap_e7c.sh`, table with
`python3 scripts/streamgap_e7c_summary.py data/raw/streamgap/flat-streamgap_e7c-20261101T103151Z`. The main E7
configurations again (3 launches each, rotated), with the system-wide `sudo perf stat` session of E6 beside every
launch; medians over the kernel phase (`uncore.kernel_phase(..., write_cap=None)`, which keeps kernels that write).
"ctrl" is the HBM or DDR controllers' read plus write on socket 0. Outputs verified element by element.

| HBM, socket 0 | kernel GB/s | ctrl GB/s (read / write) | package W | uncore GHz | clipped | ctrl GB/s per uncore GHz |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Copy (1 read per write) | 657 | 640 (314 / 326) | 351 | 1.74 | 100% | 368 |
| Triad with 4 reads per write | 602 | 590 (472 / 118) | 353 | 1.65 | 100% | 357 |
| Triad, constants (56 cores) | 641 | 621 (412 / 209) | 352 | 1.68 | 100% | 370 |
| Triad, 52 / 48 / 42 cores | 638 / 618 / 597 | 616 / 595 / 549 | 351–352 | 1.76 / 1.83 / 1.91 | 100% | 349 / 326 / 288 |
| Triad, 36 / 28 cores | 525 / 452 | 503 / 440 | 350–351 | 2.02 / 2.17 | 100% | 249 / 203 |
| Triad, thesis data | 576 | 568 (376 / 191) | 352 | 1.53 | 100% | 371 |
| Triad, ymm / ordinary stores | 635 / 637 | 623 / 590 | 351–352 | 1.68 / 1.65 | 100% | 372 / 358 |
| Read-only, constants | 580 | 576 | 351 | 1.64 | 100% | 352 |

* **The package is at its 350 W limit in every HBM launch** (the PCU clips for power in 100% of cycles). No kernel
  variant frees power: ymm vectors, ordinary stores and a different mix leave package power at 350–353 W and the
  uncore clock at 1.65–1.74 GHz.
* **At 52 cores and more, HBM bandwidth is proportional to the uncore clock**: 350–372 GB/s of controller traffic per
  GHz for every mix, vector width, store type and data pattern. The data effect of E5/E6 is therefore the same
  mechanism in Triad: the thesis data cost 0.15 GHz of uncore clock (1.53 against 1.68 GHz) and 9% of controller
  traffic, which is the 9% by the proportion.
* **Fewer cores raise the uncore clock** (2.17 GHz at 28 cores, 2.02 at 36) as expected from the power budget, but the
  rate still falls: below about 50 cores the cores cannot keep enough lines in flight (203–249 GB/s per GHz), so the
  limit changes from the uncore clock to the cores' concurrency. 52–56 cores sit at the crossing of the two, which is why
  no core count beat 56 in E7.
* **Extrapolation, not measured**: at 370 GB/s per GHz the uncore's 2.5 GHz maximum would give about 925 GB/s, near
  the vendor 1 TB/s. That needs the clock without the power limit, which no user setting here reaches.
  The rate would also have to stay clock-proportional above 1.8 GHz with all cores, which the 48–52-core points
  (326–349 per GHz) suggest it does not do fully.
* **DDR** is at the same 350 W package limit (clipped in 17–100% of cycles, depending on the launch) but is DIMM-limited: 28 cores give the
  same 233 GB/s of controller traffic as 56 cores at an uncore clock of 2.45 GHz against 2.13, and with 17% clipping against
  100%. The DRAM draws 72–73 W at 230 GB/s; Copy moves the same total (229) with half of it as writes.
* **Counter against kernel**: the controllers' total is 2–4% below the kernel's counted bytes for Triad and Copy
  (621 against 641 GB/s), against 1% in E6 for the read kernel; the cause (the phase edges, the 100 ms intervals or
  writes absorbed in the memory) was not separated, and it does not change a ratio between configurations.

Conclusion for the thesis: on this node the sustained HBM Triad is bound by the package power limit through the uncore
clock, about 640 GB/s with constants and about 570 GB/s with weight-like data, and DDR Triad is bound by the DIMMs at
233–238 GB/s. Neither is a kernel limit.
