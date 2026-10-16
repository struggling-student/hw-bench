# STREAM benchmark (vendored)

- Source: `stream.c`, fetched verbatim from
  <https://www.cs.virginia.edu/stream/FTP/Code/stream.c> on 2026-09-20.
- Upstream revision tag in the file header: `$Id: stream.c,v 5.10 2013/01/17 16:01:06 mccalpin Exp mccalpin $`.
- Author/copyright: John D. McCalpin. License terms are the original comment block
  at the top of `stream.c` — do not strip or edit it. In short: free to use, modify,
  and redistribute; results must follow the STREAM Run Rules to be called "STREAM
  benchmark results," and results from modified code must be labelled as such.
- Not modified from upstream. SHA-256
  `a52bae5e175bea3f7832112af9c085adab47117f7d2ce219165379849231692b`, identical to the copy
  staged on the Flat node for the Triad-gap investigation (`docs/STREAMGAP.md`, experiment E2;
  the checksum of the staged file is recorded in
  `data/raw/streamgap/flat-streamgap-20261016T132035Z/system/stream_c.sha256`).
- It is **not** the kernel of the thesis campaign. The measured, `numactl`-bound Triad is
  implemented in `benchmarks/hardware.cpp` and built by `scripts/build_benchmarks.sh`; its results
  are labelled STREAM-*model* Triad measurements, not STREAM Run Rules submissions.
- The unmodified file was built on the Flat node by `scripts/streamgap.sh` and run with
  `OMP_NUM_THREADS=56`, `OMP_PLACES=cores`, `OMP_PROC_BIND=close|spread` and
  `numactl --physcpubind=0-55 --membind=2` (the HBM node of socket 0), three launches each:

  | Build | Command (plus `-DSTREAM_ARRAY_SIZE=160000000 -DNTIMES=100 -mcmodel=medium`) | Triad, best rate |
  | --- | --- | --- |
  | GCC 11.4.1 | `gcc -O3 -march=sapphirerapids -fopenmp` | 678 / 688 GB/s (close / spread) |
  | icx 2025.3, default stores | `icx -O3 -xSAPPHIRERAPIDS -qopenmp -qopt-zmm-usage=high` | 615 / 613 GB/s |
  | icx, no streaming stores | the same plus `-qopt-streaming-stores=never` | 662 / 661 GB/s |
  | icx, streaming stores | the same plus `-qopt-streaming-stores=always` | 705 / 711 GB/s |

  Only the compile-time parameters `STREAM_ARRAY_SIZE` (160M elements, 3.6 GiB, instead of the
  default 10M) and `NTIMES` (100, instead of 10) differ from the file as shipped; the source is
  untouched. Raw output: `data/raw/streamgap/flat-streamgap-20261016T132035Z/records/e2_*.txt`.
