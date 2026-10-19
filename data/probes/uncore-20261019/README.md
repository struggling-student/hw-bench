# Uncore probes on the Flat node (cresco8-hbm14), 2026-10-19

Short checks run before the uncore campaigns, through the privileged
`sudo -n /usr/bin/perf stat` the administrators allowed (perf 5.14, kernel
5.14.0-427.13.1.el9_4). They fixed the event encodings and the session design in
`src/hwbench/uncore.py`. Numbers are copied from the terminal output; the one log kept
whole is `toggle_session.csv`.

## 1. Which PMU counts HBM traffic

56 cores of socket 0 ran the read kernel for three 1 s windows plus two warm-up passes on
an 8 GiB array, under `perf stat -a --per-socket` over a 6 s window that also held about
2 s of allocation and idle time.

| Bound memory | Kernel bytes (3 windows + warm-up) | `uncore_imc` CAS read, socket 0 | `uncore_type_14` event 0x05 umask 0xcf, socket 0 |
| --- | ---: | ---: | ---: |
| DDR (node 0) | 801 GB + 17 GB | 775 337 MiB = 813 GB | 19.3 × 10⁶ (idle level) |
| HBM (node 2) | 1781 GB + 17 GB | 942 MiB (idle level) | 55.76 × 10⁹ = 1784 GB at 32 B |

`uncore_type_14_0..31` (32 per socket, not named by the 5.14 driver) are the HBM channel
controllers; their CAS counts 32-byte pseudo-channel transfers with the DDR encoding
(read 0x05/0xcf, write 0x05/0xf0), and event 0x01 ticks at 800 MHz (155 × 10⁹ over
6.07 s and 32 channels). Idle background: about 3 × 10⁶ HBM CAS per second per socket
(0.1 GB/s).

## 2. Enabling and disabling a running session

`perf stat -a -D -1 -I 100 --control fifo:...` with the event set of the campaigns, three
enable / 0.5 s / disable cycles (`toggle_session.csv` is the first such log):

| Event set | Session start | `enable` acknowledged | `disable` acknowledged |
| --- | ---: | ---: | ---: |
| base (13 events, about 200 counters) | 167 ms | 111-117 ms | 4-5 ms |
| base + 3 CHA TOR events on 60 CHAs | 168 ms | 866-877 ms | 7-8 ms |

Perf enables the counters one after another, socket 0 first: in the first interval after
an enable the socket-0 DDR counters ran 75 ms (base) or 624 ms (TOR) against 21 ms and
194 ms on socket 1. A toggle per sample would therefore count the time around it. The
campaigns enable once before the warm-up, count continuously and place each interval on
the benchmark's clock through the fast disable.

## 3. CHA TOR occupancy as a latency measurement (not used)

One core chased a random cycle in 1 GiB of HBM on CPU 0, with and without 14 cores
streaming the same tier; the TOR events were filtered to CPU 0 (`tid_en=1,filter_tid=0x0`,
which counted nothing for TIDs 0x1, 0x2 and 0x4 while those cores streamed).

| Load | Chase latency | Chase loads/s | TOR DRd inserts/s (CPU 0) | occupancy / inserts |
| --- | ---: | ---: | ---: | ---: |
| idle | 141.5 ns | 7.07 × 10⁶ | 5.07 × 10⁶ | 77 CHA cycles (about 31 ns) |
| 14 cores streaming | 144.4 ns | 6.92 × 10⁶ | 4.92 × 10⁶ | 136 CHA cycles (about 55 ns) |

The occupancy ratio is a quarter of the latency the chase measures (the counts were
multiplexed at 56-83%, and no DRd_Opt traffic appeared). Unfiltered, the streaming cores'
own demand reads dominate the TOR (3 × 10⁹ inserts/s), so the socket-wide ratio (33 ns)
is no chase latency either. The TOR events were dropped from the campaigns.
