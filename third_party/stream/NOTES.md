# STREAM benchmark (vendored)

- Source: `stream.c`, fetched verbatim from
  <https://www.cs.virginia.edu/stream/FTP/Code/stream.c> on 2026-09-20.
- Upstream revision tag in the file header: `$Id: stream.c,v 5.10 2013/01/17 16:01:06 mccalpin Exp mccalpin $`.
- Author/copyright: John D. McCalpin. License terms are the original comment block
  at the top of `stream.c` — do not strip or edit it. In short: free to use, modify,
  and redistribute; results must follow the STREAM Run Rules to be called "STREAM
  benchmark results," and results from modified code must be labelled as such.
- Not modified from upstream. This file is retained for provenance from the earlier
  hardware-only prototype; it is **not** the kernel compiled by the current campaign.
  The measured, `numactl`-bound Triad is implemented in
  `benchmarks/stream/stream_triad.cpp` and built by `scripts/build_benchmarks.sh`.
  Its results are labelled STREAM-*model* Triad measurements, not STREAM Run Rules
  submissions.
