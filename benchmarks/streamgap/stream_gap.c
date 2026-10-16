// STREAM-style Triad/Copy harness with selectable kernel variants, built to find out why the
// Triad of benchmarks/hardware.cpp is below the published Xeon Max STREAM Triad.
//
// It follows the STREAM method (each iteration timed on its own around one parallel region, bytes
// counted as 24 B per element for Triad and 16 B for Copy, the first iteration reported apart from
// the rest) but keeps every iteration time so best-of-N, median and the time course can all be
// computed afterwards. It is not a STREAM Run Rules submission: the vendored stream.c is for that.
//
//   --kernel triad|copy        --variant plain|u1|u4   (plain: compiler loop; u1/u4: AVX-512
//   --store reg|nt              intrinsics, 1 or 4 cache lines per iteration, local pointers)
//   --pf LINES  --hint 0|1      software prefetch of the two read streams LINES cache lines ahead,
//                               into L1 (0) or L2 (1); 0 lines = none
//   --init const|varied|random|zero
//                               const: b=2 c=0.5; varied: the arithmetic patterns of hardware.cpp
//                               (b=1+(i%17)e-3, c=2-(i%13)e-3); random: uniform in [1,2), a hash
//                               of the index; zero: all zero. Results are checked per element.
//   --kernel read               the read-only kernel of hardware.cpp (8 accumulators, 8 lines per
//                               iteration, one private array per thread); --elements is the total
//   variant u1r (triad, nt)     u1 with the pointers reloaded every iteration, as in hardware.cpp
//   --elements E --ntimes N --label NAME
//
// Threads, placement and memory binding come from OMP_* and numactl, as for the campaign.
#define _GNU_SOURCE
#include <immintrin.h>
#include <omp.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define LINE 8 // doubles per 64-byte cache line

typedef void (*triad_fn)(double *restrict, const double *restrict, const double *restrict, size_t, size_t, size_t);
typedef void (*copy_fn)(double *restrict, const double *restrict, size_t, size_t, size_t);

#define REG(p, v) _mm512_store_pd((p), (v))
#define NTS(p, v) _mm512_stream_pd((p), (v))
#define PF0 _MM_HINT_T0
#define PF1 _MM_HINT_T1

// [l0, l1) is a range of cache lines, a multiple of U; `pfd` is the prefetch distance in lines
// (0 disables prefetching, tested outside the loop by choosing the PF-free function).
#define TRIAD(NAME, U, STORE, DOPF, HINT)                                                          \
  static void NAME(double *restrict a, const double *restrict b, const double *restrict c,         \
                   size_t l0, size_t l1, size_t pfd) {                                             \
    const __m512d s = _mm512_set1_pd(3.0);                                                         \
    for (size_t l = l0; l < l1; l += U) {                                                          \
      if (DOPF)                                                                                    \
        for (int u = 0; u < U; ++u) {                                                              \
          _mm_prefetch((const char *)(b + (l + u + pfd) * LINE), HINT);                            \
          _mm_prefetch((const char *)(c + (l + u + pfd) * LINE), HINT);                            \
        }                                                                                          \
      __m512d x[U], y[U];                                                                          \
      for (int u = 0; u < U; ++u) x[u] = _mm512_load_pd(b + (l + u) * LINE);                       \
      for (int u = 0; u < U; ++u) y[u] = _mm512_load_pd(c + (l + u) * LINE);                       \
      for (int u = 0; u < U; ++u) STORE(a + (l + u) * LINE, _mm512_fmadd_pd(s, y[u], x[u]));       \
    }                                                                                              \
  }

#define COPY(NAME, U, STORE, DOPF, HINT)                                                           \
  static void NAME(double *restrict a, const double *restrict b, size_t l0, size_t l1,             \
                   size_t pfd) {                                                                   \
    for (size_t l = l0; l < l1; l += U) {                                                          \
      if (DOPF)                                                                                    \
        for (int u = 0; u < U; ++u)                                                                \
          _mm_prefetch((const char *)(b + (l + u + pfd) * LINE), HINT);                            \
      __m512d x[U];                                                                                \
      for (int u = 0; u < U; ++u) x[u] = _mm512_load_pd(b + (l + u) * LINE);                       \
      for (int u = 0; u < U; ++u) STORE(a + (l + u) * LINE, x[u]);                                 \
    }                                                                                              \
  }

TRIAD(t_u1_reg, 1, REG, 0, PF0) TRIAD(t_u1_nt, 1, NTS, 0, PF0)
TRIAD(t_u4_reg, 4, REG, 0, PF0) TRIAD(t_u4_nt, 4, NTS, 0, PF0)
TRIAD(t_u4_reg_p0, 4, REG, 1, PF0) TRIAD(t_u4_nt_p0, 4, NTS, 1, PF0)
TRIAD(t_u4_reg_p1, 4, REG, 1, PF1) TRIAD(t_u4_nt_p1, 4, NTS, 1, PF1)
COPY(c_u1_reg, 1, REG, 0, PF0) COPY(c_u1_nt, 1, NTS, 0, PF0)
COPY(c_u4_reg, 4, REG, 0, PF0) COPY(c_u4_nt, 4, NTS, 0, PF0)
COPY(c_u4_reg_p0, 4, REG, 1, PF0) COPY(c_u4_nt_p0, 4, NTS, 1, PF0)
COPY(c_u4_reg_p1, 4, REG, 1, PF1) COPY(c_u4_nt_p1, 4, NTS, 1, PF1)

// The loop of hardware.cpp reaches a, b, c through a lambda that captured them by reference, so the
// compiler reloads the three pointers from memory on every iteration. Variant u1r reproduces that.
struct Ptrs { double *a, *b, *c; };
static struct Ptrs G;
static void t_u1r_nt(double *restrict a_, const double *restrict b_, const double *restrict c_,
                     size_t l0, size_t l1, size_t pfd) {
  (void)a_; (void)b_; (void)c_; (void)pfd;
  const __m512d s = _mm512_set1_pd(3.0);
  volatile struct Ptrs *g = (volatile struct Ptrs *)&G;
  for (size_t l = l0; l < l1; ++l) {
    double *a = g->a, *b = g->b, *c = g->c;
    _mm512_stream_pd(a + l * LINE, _mm512_fmadd_pd(s, _mm512_load_pd(c + l * LINE), _mm512_load_pd(b + l * LINE)));
  }
}

static double *grab(size_t bytes) {
  const size_t huge = 2u << 20;
  bytes = (bytes + huge - 1) / huge * huge;
  void *p = aligned_alloc(huge, bytes);
  if (!p) {
    perror("aligned_alloc");
    exit(2);
  }
  return p;
}

static int cmp(const void *x, const void *y) {
  double d = *(const double *)x - *(const double *)y;
  return (d > 0) - (d < 0);
}

static long anon_huge_kb(void) {
  FILE *f = fopen("/proc/self/smaps_rollup", "r");
  if (!f) return -1;
  char line[256];
  long kb = -1;
  while (fgets(line, sizeof line, f))
    if (sscanf(line, "AnonHugePages: %ld kB", &kb) == 1) break;
  fclose(f);
  return kb;
}

enum { INIT_CONST, INIT_VARIED, INIT_RANDOM, INIT_ZERO };

static inline uint64_t splitmix(uint64_t x) {
  x += 0x9e3779b97f4a7c15ull;
  x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9ull;
  x = (x ^ (x >> 27)) * 0x94d049bb133111ebull;
  return x ^ (x >> 31);
}

// Initial value of element i of array `which` (1 = b, 2 = c, 3 = the read array).
static inline double fill(int mode, int which, size_t i) {
  switch (mode) {
  case INIT_ZERO: return 0.0;
  case INIT_RANDOM: return 1.0 + (double)(splitmix(i * 4 + which) >> 11) * (1.0 / 9007199254740992.0);
  case INIT_VARIED: return which == 2 ? 2 - (i % 13) * .001 : 1 + (i % 17) * .001;
  default: return which == 2 ? 0.5 : 2.0;
  }
}

static void report(const char *label, const char *kernel, const char *variant, const char *store,
                   size_t pf, int hint, const char *init, size_t elements, int threads, int ntimes,
                   size_t wrong, double per_iter, const double *times) {
  double *sorted = malloc(sizeof(double) * ntimes);
  memcpy(sorted, times + 1, sizeof(double) * (ntimes - 1));
  qsort(sorted, ntimes - 1, sizeof(double), cmp);
  printf("{\"label\":\"%s\",\"kernel\":\"%s\",\"variant\":\"%s\",\"store\":\"%s\",\"pf_lines\":%zu,"
         "\"pf_hint\":%d,\"init\":\"%s\",\"elements\":%zu,\"threads\":%d,\"ntimes\":%d,\"anon_huge_kb\":%ld,"
         "\"wrong\":%zu,\"bytes_per_iter\":%.0f,\"best_gbs\":%.2f,\"median_gbs\":%.2f,"
         "\"first_gbs\":%.2f,\"times_s\":[",
         label, kernel, variant, store, pf, hint, init, elements, threads, ntimes, anon_huge_kb(), wrong,
         per_iter, per_iter / sorted[0] / 1e9, per_iter / sorted[(ntimes - 1) / 2] / 1e9,
         per_iter / times[0] / 1e9);
  for (int i = 0; i < ntimes; ++i) printf("%s%.6f", i ? "," : "", times[i]);
  printf("]}\n");
}

// The read pass of hardware.cpp (read_passes): 8 independent accumulators, 8 cache lines per
// iteration. Each thread owns an array it first-touched itself; one timed iteration is one pass of
// every thread over its array. The sum of every pass must equal the sum of the initial values.
static double read_pass(const double *p, size_t n) {
  __m512d a0 = _mm512_setzero_pd(), a1 = a0, a2 = a0, a3 = a0, a4 = a0, a5 = a0, a6 = a0, a7 = a0;
  for (size_t i = 0; i < n; i += 64) {
    a0 = _mm512_add_pd(a0, _mm512_load_pd(p + i));
    a1 = _mm512_add_pd(a1, _mm512_load_pd(p + i + 8));
    a2 = _mm512_add_pd(a2, _mm512_load_pd(p + i + 16));
    a3 = _mm512_add_pd(a3, _mm512_load_pd(p + i + 24));
    a4 = _mm512_add_pd(a4, _mm512_load_pd(p + i + 32));
    a5 = _mm512_add_pd(a5, _mm512_load_pd(p + i + 40));
    a6 = _mm512_add_pd(a6, _mm512_load_pd(p + i + 48));
    a7 = _mm512_add_pd(a7, _mm512_load_pd(p + i + 56));
  }
  return _mm512_reduce_add_pd(_mm512_add_pd(_mm512_add_pd(_mm512_add_pd(a0, a1), _mm512_add_pd(a2, a3)),
                                            _mm512_add_pd(_mm512_add_pd(a4, a5), _mm512_add_pd(a6, a7))));
}

static int run_read(const char *label, int mode, const char *init, size_t total, int ntimes) {
  const int threads = omp_get_max_threads();
  const size_t m = total / threads / 64 * 64; // doubles per thread, whole 8-line iterations
  double **own = calloc(threads, sizeof *own);
  double *ref = calloc(threads, sizeof *ref), *acc = calloc(threads, sizeof *acc);
#pragma omp parallel
  {
    const int t = omp_get_thread_num();
    double *p = grab(m * sizeof(double));
    double sum = 0;
    for (size_t i = 0; i < m; ++i) {
      p[i] = fill(mode, 3, i + (size_t)t * m);
      sum += p[i];
    }
    own[t] = p;
    ref[t] = sum;
  }
  double *times = malloc(sizeof(double) * ntimes);
  for (int it = 0; it < ntimes; ++it) {
    const double t0 = omp_get_wtime();
#pragma omp parallel
    {
      const int t = omp_get_thread_num();
      acc[t] += read_pass(own[t], m);
    }
    times[it] = omp_get_wtime() - t0;
  }
  size_t wrong = 0;
  for (int t = 0; t < threads; ++t) {
    const double want = ref[t] * ntimes, err = acc[t] - want;
    wrong += !(err <= want * 1e-9 && err >= -want * 1e-9) && want != 0;
    if (want == 0 && acc[t] != 0) ++wrong;
  }
  report(label, "read", "p8", "none", 0, 0, init, m * threads, threads, ntimes, wrong,
         8.0 * m * threads, times);
  return wrong ? 1 : 0;
}

int main(int argc, char **argv) {
  const char *kernel = "triad", *variant = "u4", *store = "nt", *label = "run", *init = "const";
  size_t elements = 160000000, pf = 0;
  int ntimes = 100, hint = 0;
  for (int i = 1; i + 1 < argc; i += 2) {
    const char *k = argv[i], *v = argv[i + 1];
    if (!strcmp(k, "--kernel")) kernel = v;
    else if (!strcmp(k, "--variant")) variant = v;
    else if (!strcmp(k, "--store")) store = v;
    else if (!strcmp(k, "--label")) label = v;
    else if (!strcmp(k, "--elements")) elements = strtoull(v, 0, 10);
    else if (!strcmp(k, "--ntimes")) ntimes = atoi(v);
    else if (!strcmp(k, "--pf")) pf = strtoull(v, 0, 10);
    else if (!strcmp(k, "--hint")) hint = atoi(v);
    else if (!strcmp(k, "--init")) init = v;
    else { fprintf(stderr, "unknown option %s\n", k); return 2; }
  }
  int mode = -1;
  const char *modes[] = {"const", "varied", "random", "zero"};
  for (int m = 0; m < 4; ++m)
    if (!strcmp(init, modes[m])) mode = m;
  if (mode < 0 || ntimes < 3) return 2;
  if (!strcmp(kernel, "read")) return run_read(label, mode, init, elements, ntimes);
  const int triad = !strcmp(kernel, "triad"), nt = !strcmp(store, "nt");
  const int plain = !strcmp(variant, "plain"), u4 = !strcmp(variant, "u4");
  if (!triad && strcmp(kernel, "copy")) return 2;
  const int u1r = !strcmp(variant, "u1r");
  if (!plain && !u4 && !u1r && strcmp(variant, "u1")) return 2;
  if (u1r && (!triad || !nt)) return 2;
  if (plain && nt) return 2; // the compiler loop has no non-temporal form
  if (ntimes < 3) return 2;
  const size_t unit = 4; // lines, so every variant sees whole iterations
  const size_t lines = elements / LINE / unit * unit;
  elements = lines * LINE;
  const size_t bytes = elements * sizeof(double);
  double *a = grab(bytes), *b = grab(bytes), *c = triad ? grab(bytes) : 0;
  const int threads = omp_get_max_threads();

  // Static partition in units of `unit` lines, the same one the timed loop uses, so each page is
  // first touched by the thread that will stream it.
#pragma omp parallel
  {
    const int t = omp_get_thread_num();
    const size_t blocks = lines / unit;
    const size_t l0 = blocks * t / threads * unit, l1 = blocks * (t + 1) / threads * unit;
    for (size_t i = l0 * LINE; i < l1 * LINE; ++i) {
      a[i] = 0.0;
      b[i] = fill(mode, 1, i);
      if (c) c[i] = fill(mode, 2, i);
    }
  }

  triad_fn tf = 0;
  copy_fn cf = 0;
  G.a = a; G.b = b; G.c = c;
  if (u1r) tf = t_u1r_nt;
  else if (!plain) {
    const int idx = (u4 ? 2 : 0) + (nt ? 1 : 0);
    if (triad) {
      static triad_fn plainset[] = {t_u1_reg, t_u1_nt, t_u4_reg, t_u4_nt};
      static triad_fn p0[] = {t_u4_reg_p0, t_u4_nt_p0}, p1[] = {t_u4_reg_p1, t_u4_nt_p1};
      tf = plainset[idx];
      if (pf) tf = (hint ? p1 : p0)[nt];
    } else {
      static copy_fn plainset[] = {c_u1_reg, c_u1_nt, c_u4_reg, c_u4_nt};
      static copy_fn p0[] = {c_u4_reg_p0, c_u4_nt_p0}, p1[] = {c_u4_reg_p1, c_u4_nt_p1};
      cf = plainset[idx];
      if (pf) cf = (hint ? p1 : p0)[nt];
    }
    if (pf && !u4) return 2; // prefetch variants are 4-line only
  }

  double *times = malloc(sizeof(double) * ntimes);
  for (int it = 0; it < ntimes; ++it) {
    const double t0 = omp_get_wtime();
    if (plain) {
      if (triad) {
#pragma omp parallel for schedule(static)
        for (size_t i = 0; i < elements; ++i) a[i] = b[i] + 3.0 * c[i];
      } else {
#pragma omp parallel for schedule(static)
        for (size_t i = 0; i < elements; ++i) a[i] = b[i];
      }
    } else {
#pragma omp parallel
      {
        const int t = omp_get_thread_num();
        const size_t blocks = lines / unit;
        const size_t l0 = blocks * t / threads * unit, l1 = blocks * (t + 1) / threads * unit;
        if (triad) tf(a, b, c, l0, l1, pf);
        else cf(a, b, l0, l1, pf);
        if (nt) _mm_sfence();
      }
    }
    times[it] = omp_get_wtime() - t0;
  }

  // Every element of a must hold the kernel's result (3.5 for Triad, 2.0 for Copy).
  size_t wrong = 0;
#pragma omp parallel for schedule(static) reduction(+ : wrong)
  for (size_t i = 0; i < elements; ++i) {
    const double want = triad ? b[i] + 3.0 * c[i] : b[i];
    const double err = a[i] - want;
    wrong += err > 1e-12 || err < -1e-12;
  }

  report(label, kernel, variant, store, pf, hint, init, elements, threads, ntimes, wrong,
         (triad ? 24.0 : 16.0) * elements, times);
  return wrong ? 1 : 0;
}
