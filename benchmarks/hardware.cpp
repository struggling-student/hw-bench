// Duration-based kernels. All participants measure work over a shared clock
// window.
#include <algorithm>
#include <asm/prctl.h>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <immintrin.h>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <omp.h>
#include <random>
#include <stdexcept>
#include <string>
#include <sys/mman.h>
#include <sys/syscall.h>
#include <thread>
#include <time.h>
#include <unistd.h>
#include <vector>

namespace fs = std::filesystem;
std::uint64_t clock_ns() {
  timespec t{};
  clock_gettime(CLOCK_MONOTONIC, &t);
  return t.tv_sec * 1000000000ULL + t.tv_nsec;
}
std::uint64_t window(int rep, double seconds) {
  const char *directory = std::getenv("HWBENCH_SYNC_DIR");
  if (!directory)
    return clock_ns();
  fs::path root(directory);
  fs::create_directories(root);
  int id = std::stoi(std::getenv("HWBENCH_PARTICIPANT"));
  int count = std::stoi(std::getenv("HWBENCH_PARTICIPANTS"));
  std::string prefix = "rep" + std::to_string(rep);
  std::ofstream(root / (prefix + "-ready" + std::to_string(id))).put('1');
  auto startfile = root / (prefix + "-start");
  auto timeout = clock_ns() + 120000000000ULL;
  if (id == 0) {
    for (;;) {
      bool ready = true;
      for (int i = 0; i < count; ++i)
        ready &= fs::exists(root / (prefix + "-ready" + std::to_string(i)));
      if (ready)
        break;
      if (clock_ns() > timeout)
        throw std::runtime_error("participant readiness timeout");
      std::this_thread::sleep_for(std::chrono::milliseconds(2));
    }
    auto tmp = root / (prefix + "-tmp");
    {
      std::ofstream out(tmp);
      out << clock_ns() + 250000000ULL;
    }
    fs::rename(tmp, startfile);
  }
  while (!fs::exists(startfile)) {
    if (clock_ns() > timeout)
      throw std::runtime_error("shared window timeout");
    std::this_thread::sleep_for(std::chrono::milliseconds(2));
  }
  std::uint64_t start;
  std::ifstream(startfile) >> start;
  while (clock_ns() < start)
    std::this_thread::sleep_for(std::chrono::microseconds(20));
  (void)seconds;
  return start;
}


// ---------------------------------------------------------------------------
// Self-monitoring: user-mode core cycles and EXE.AMX_BUSY per OpenMP thread via
// perf_event_open. Both are permitted at kernel.perf_event_paranoid=2 because
// they are per-thread and exclude the kernel. Encodings follow Intel's
// Sapphire Rapids perfmon tables (EXE.AMX_BUSY = event 0xB7 umask 0x02).
#ifndef SYS_perf_event_open
#define SYS_perf_event_open 298
#endif
struct PerfAttr {
  std::uint32_t type, size;
  std::uint64_t config, sample_period, sample_type, read_format, flags;
  std::uint32_t wakeup_events, bp_type;
  std::uint64_t config1, config2;
};
static_assert(sizeof(PerfAttr) == 72);
int perf_open(std::uint32_t type, std::uint64_t config) {
  PerfAttr a{};
  a.type = type;
  a.size = sizeof(a);
  a.config = config;
  a.read_format = 3; // total time enabled | total time running
  a.flags = (1ULL << 5) | (1ULL << 6); // exclude kernel, exclude hypervisor
  return static_cast<int>(syscall(SYS_perf_event_open, &a, 0, -1, -1, 0));
}
struct CounterReading {
  bool ok = false;
  double cycles = 0, amx_busy = 0, scale = 1;
  int threads = 0;
};
class Counters {
  std::vector<int> cycles_, amx_;
  bool ok_ = false;

public:
  void open(int workers) {
    cycles_.assign(workers, -1);
    amx_.assign(workers, -1);
#pragma omp parallel num_threads(workers)
    {
      int t = omp_get_thread_num();
      if (t < workers) {
        cycles_[t] = perf_open(0 /*PERF_TYPE_HARDWARE*/, 0 /*CPU_CYCLES*/);
        amx_[t] = perf_open(4 /*PERF_TYPE_RAW*/, 0x02B7);
      }
    }
    ok_ = true;
    for (int fd : cycles_)
      ok_ &= fd >= 0;
  }
  CounterReading read() const {
    CounterReading r;
    if (!ok_)
      return r;
    r.ok = true;
    r.threads = static_cast<int>(cycles_.size());
    bool amx_ok = true;
    for (std::size_t t = 0; t < cycles_.size(); ++t) {
      std::uint64_t v[3];
      if (::read(cycles_[t], v, sizeof v) != sizeof v || v[2] == 0) {
        r.ok = false;
        return r;
      }
      r.scale = std::min(r.scale, double(v[2]) / double(std::max<std::uint64_t>(v[1], 1)));
      r.cycles += double(v[0]) * double(v[1]) / double(v[2]);
      if (amx_[t] >= 0 && ::read(amx_[t], v, sizeof v) == sizeof v && v[2] > 0)
        r.amx_busy += double(v[0]) * double(v[1]) / double(v[2]);
      else
        amx_ok = false;
    }
    if (!amx_ok)
      r.amx_busy = -1;
    return r;
  }
  ~Counters() {
    for (int fd : cycles_)
      if (fd >= 0)
        close(fd);
    for (int fd : amx_)
      if (fd >= 0)
        close(fd);
  }
};

// Page-aligned allocation with optional transparent huge pages. Without
// --hugepages this is exactly aligned_alloc(64, bytes).
void *alloc_bytes(std::size_t bytes, bool huge) {
  const std::size_t align = (huge && bytes >= (2u << 20)) ? (2u << 20) : 64;
  bytes = (bytes + align - 1) / align * align;
  void *p = std::aligned_alloc(align, bytes);
  if (!p)
    throw std::runtime_error("allocation failed");
  if (align > 64)
    madvise(p, bytes, MADV_HUGEPAGE);
  return p;
}

inline double read_pass(const double *p, std::size_t n) {
  __m512d a0 = _mm512_setzero_pd(), a1 = a0, a2 = a0, a3 = a0, a4 = a0,
          a5 = a0, a6 = a0, a7 = a0;
  for (std::size_t i = 0; i < n; i += 64) {
    a0 = _mm512_add_pd(a0, _mm512_load_pd(p + i));
    a1 = _mm512_add_pd(a1, _mm512_load_pd(p + i + 8));
    a2 = _mm512_add_pd(a2, _mm512_load_pd(p + i + 16));
    a3 = _mm512_add_pd(a3, _mm512_load_pd(p + i + 24));
    a4 = _mm512_add_pd(a4, _mm512_load_pd(p + i + 32));
    a5 = _mm512_add_pd(a5, _mm512_load_pd(p + i + 40));
    a6 = _mm512_add_pd(a6, _mm512_load_pd(p + i + 48));
    a7 = _mm512_add_pd(a7, _mm512_load_pd(p + i + 56));
  }
  return _mm512_reduce_add_pd(
      _mm512_add_pd(_mm512_add_pd(_mm512_add_pd(a0, a1), _mm512_add_pd(a2, a3)),
                    _mm512_add_pd(_mm512_add_pd(a4, a5), _mm512_add_pd(a6, a7))));
}

// The intensity sweep and the AVX-512 BF16 peak keep C independent accumulators
// live; the chain count is a template parameter so the compiler keeps every
// accumulator in a register and unrolls the inner loop completely.
template <int C>
inline void sweep_block(const double *b, double *a, std::size_t n, int k) {
#pragma omp parallel for schedule(static)
  for (std::size_t i = 0; i < n; i += 8 * C) {
    __m512d x[C];
    for (int u = 0; u < C; ++u)
      x[u] = _mm512_load_pd(b + i + u * 8);
    const __m512d v = _mm512_set1_pd(1.000000000000001),
                  z = _mm512_set1_pd(1e-12);
    for (int j = 0; j < k; ++j)
      for (int u = 0; u < C; ++u)
        x[u] = _mm512_fmadd_pd(x[u], v, z);
    for (int u = 0; u < C; ++u)
      _mm512_store_pd(a + i + u * 8, x[u]);
  }
}

template <int C> inline double bf16_chain_sum() {
  __m512 x[C];
  for (auto &v : x)
    v = _mm512_setzero_ps();
  const __m512bh one = (__m512bh)_mm512_set1_epi16(0x3f80);
  for (int j = 0; j < 3000000; ++j)
    for (int u = 0; u < C; ++u)
      x[u] = _mm512_dpbf16_ps(x[u], one, one);
  double sum = 0;
  for (auto &value : x) {
    alignas(64) float lanes[16];
    _mm512_store_ps(lanes, value);
    for (float lane : lanes)
      sum += lane;
  }
  return sum;
}

struct alignas(64) TileConfig {
  std::uint8_t palette_id = 1, start_row = 0, reserved[14]{};
  std::uint16_t colsb[16]{};
  std::uint8_t rows[16]{};
};
static_assert(sizeof(TileConfig) == 64);
struct alignas(64) Link {
  Link *next;
  char pad[56];
};

int main(int argc, char **argv) {
  try {
    std::string kind = "triad";
    std::size_t bytes = 8ULL << 30;
    double seconds = 1;
    int repetitions = 5, k = 1, chains = 0;
    bool per_thread = false, huge = false;
    for (int i = 1; i < argc; ++i) {
      std::string arg = argv[i];
      if (arg == "--per-thread") {
        per_thread = true;
        continue;
      }
      if (arg == "--hugepages") {
        huge = true;
        continue;
      }
      if (i + 1 >= argc)
        return 2;
      if (arg == "--kind")
        kind = argv[++i];
      else if (arg == "--bytes")
        bytes = std::stoull(argv[++i]);
      else if (arg == "--seconds")
        seconds = std::stod(argv[++i]);
      else if (arg == "--repetitions")
        repetitions = std::stoi(argv[++i]);
      else if (arg == "--k")
        k = std::stoi(argv[++i]);
      else if (arg == "--chains")
        chains = std::stoi(argv[++i]);
      else
        return 2;
    }
    if (seconds <= 0 || repetitions < 1 || k < 1 || k > 1024)
      return 2;
    const bool triad = kind == "triad", triad_nt = kind == "triad_nt",
               sweep = kind == "sweep", latency = kind == "latency",
               readk = kind == "read";
    const bool fp32 = kind == "fp32", fp64 = kind == "fp64",
               amx = kind == "bf16", amx_i8 = kind == "int8",
               vnni = kind == "vnni", vbf16 = kind == "avx512bf16";
    if (!(triad || triad_nt || sweep || latency || readk || fp32 || fp64 ||
          amx || amx_i8 || vnni || vbf16))
      return 2;
    const bool stream = triad || triad_nt;
    // Independent accumulator chains: 12 for the compute peaks and 8 for the sweep
    // unless --chains asks otherwise (only the BF16 dot product and the sweep).
    const int chains_eff = chains ? chains : (sweep ? 8 : 12);
    if (chains && !((vbf16 && (chains == 6 || chains == 12 || chains == 24)) ||
                    (sweep && (chains == 8 || chains == 12 || chains == 16))))
      return 2;
    int workers = 0;
    bool valid = true;
#pragma omp parallel
    {
#pragma omp single
      workers = omp_get_num_threads();
    }
    Counters counters;
    counters.open(workers);
    std::size_t n = 0;
    double *a = nullptr, *b = nullptr, *c = nullptr;
    Link *links = nullptr, *cursor = nullptr;
    std::vector<double *> own; // per-thread arrays of the read kernel
    std::vector<double> own_reference;
    std::size_t per_thread_bytes = 0;
    if (stream || sweep) {
      // The sweep walks 8 doubles per chain, so n must be a multiple of that too.
      const std::size_t unit = sweep ? std::lcm<std::size_t>(64, 8 * chains_eff) : 64;
      n = (bytes / ((stream ? 3 : 2) * sizeof(double)) / unit) * unit;
      if (n == 0)
        return 2;
      bytes = n * (stream ? 3 : 2) * sizeof(double);
      a = static_cast<double *>(alloc_bytes(n * 8, huge));
      b = static_cast<double *>(alloc_bytes(n * 8, huge));
      if (stream)
        c = static_cast<double *>(alloc_bytes(n * 8, huge));
#pragma omp parallel for schedule(static)
      for (std::size_t i = 0; i < n; ++i) {
        a[i] = 0;
        b[i] = 1 + (i % 17) * .001;
        if (c)
          c[i] = 2 - (i % 13) * .001;
      }
    }
    if (readk) {
      // Each thread reads a private array it first-touched itself, so the
      // placement follows the NUMA policy of the launcher and nothing is shared.
      per_thread_bytes = (per_thread ? bytes : bytes / workers) / 512 * 512;
      if (per_thread_bytes < 512)
        return 2;
      bytes = per_thread_bytes * workers;
      own.assign(workers, nullptr);
      own_reference.assign(workers, 0);
#pragma omp parallel
      {
        int t = omp_get_thread_num();
        auto *p = static_cast<double *>(alloc_bytes(per_thread_bytes, huge));
        const std::size_t m = per_thread_bytes / sizeof(double);
        double reference = 0;
        for (std::size_t i = 0; i < m; ++i) {
          p[i] = 1 + (i % 17) * .001;
          reference += p[i];
        }
        own[t] = p;
        own_reference[t] = reference;
      }
    }
    if (latency) {
      if (workers != 1)
        throw std::runtime_error("latency requires exactly one worker");
      n = bytes / sizeof(Link);
      bytes = n * sizeof(Link);
      if (n < 2)
        return 2;
      links = static_cast<Link *>(alloc_bytes(bytes, huge));
      {
        std::vector<std::size_t> order(n);
        std::iota(order.begin(), order.end(), 0);
        std::mt19937_64 random(7);
        std::shuffle(order.begin(), order.end(), random);
        for (std::size_t i = 0; i < n; ++i)
          links[order[i]].next = links + order[(i + 1) % n];
        cursor = links;
      }
      // Traverse the entire single cycle before timing and verify every node is
      // reachable.
      for (std::size_t i = 0; i < n; ++i)
        cursor = cursor->next;
      valid &= cursor == links;
    }
    double expected_compute = 0;
    if (fp32 || fp64) {
      for (int u = 0; u < 12; ++u) {
        if (fp32) {
          float v = float(u + 1);
          for (int j = 0; j < 3000000; ++j)
            v = std::fma(1.0f, 1e-7f, v);
          expected_compute += v * 16;
        } else {
          double v = double(u + 1);
          for (int j = 0; j < 3000000; ++j)
            v = std::fma(1.0, 1e-12, v);
          expected_compute += v * 8;
        }
      }
      expected_compute *= workers;
    }
    double checksum = 0;
    // Bytes moved by the last read pass loop; the read kernel counts its own.
    std::uint64_t read_bytes = 0;
    auto work = [&](std::uint64_t deadline) -> std::uint64_t {
      if (latency) {
        for (int j = 0; j < 65536; ++j)
          cursor = cursor->next;
        return 65536;
      }
      if (triad) {
#pragma omp parallel for schedule(static)
        for (std::size_t i = 0; i < n; ++i)
          a[i] = b[i] + 3 * c[i];
        return 2ULL * n;
      }
      if (triad_nt) {
        // Same arithmetic and byte accounting as triad, but the result is
        // written with streaming stores, so no read-for-ownership of `a`:
        // the counted 24 B per element are the bytes actually moved.
#pragma omp parallel
        {
          const __m512d three = _mm512_set1_pd(3.0);
#pragma omp for schedule(static) nowait
          for (std::size_t i = 0; i < n; i += 8)
            _mm512_stream_pd(a + i, _mm512_fmadd_pd(three, _mm512_load_pd(c + i),
                                                    _mm512_load_pd(b + i)));
          _mm_sfence();
        }
        return 2ULL * n;
      }
      if (readk) {
        // Every thread loops over its own array until the shared deadline, so
        // there is no fork/join or barrier inside the timed region.
        std::uint64_t total = 0;
        double sum = 0, expected = 0;
#pragma omp parallel reduction(+ : total, sum, expected)
        {
          const int t = omp_get_thread_num();
          const double *p = own[t];
          const std::size_t m = per_thread_bytes / sizeof(double);
          std::uint64_t passes = 0;
          double acc = 0;
          do {
            acc += read_pass(p, m);
            ++passes;
          } while (clock_ns() < deadline);
          total += passes * per_thread_bytes;
          sum += acc;
          expected += double(passes) * own_reference[t];
        }
        checksum = sum;
        valid &= std::isfinite(sum) &&
                 std::abs(sum - expected) <= std::abs(expected) * 1e-9;
        read_bytes = total;
        return 0;
      }
      if (sweep) {
        switch (chains_eff) {
        case 12:
          sweep_block<12>(b, a, n, k);
          break;
        case 16:
          sweep_block<16>(b, a, n, k);
          break;
        default:
          sweep_block<8>(b, a, n, k);
        }
        return 2ULL * n * k;
      }
      double sum = 0;
      int failed = 0;
#pragma omp parallel reduction(+ : sum) reduction(| : failed)
      {
        if (amx || amx_i8) {
          thread_local bool permission =
              syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, 18) == 0;
          if (!permission)
            failed = 1;
          else {
            TileConfig cfg;
            for (int t = 0; t < 6; ++t) {
              cfg.colsb[t] = 64;
              cfg.rows[t] = 16;
            }
            _tile_loadconfig(&cfg);
            if (amx) {
              alignas(64) std::uint16_t x[16][32], y[16][32];
              alignas(64) float out[4][16][16];
              for (auto &row : x)
                for (auto &v : row)
                  v = 0x3f80;
              for (auto &row : y)
                for (auto &v : row)
                  v = 0x3f80;
              _tile_loadd(4, x, 64);
              _tile_loadd(5, y, 64);
              for (int block = 0; block < 1024; ++block) {
                _tile_zero(0);
                _tile_zero(1);
                _tile_zero(2);
                _tile_zero(3);
                for (int j = 0; j < 256; ++j) {
                  _tile_dpbf16ps(0, 4, 5);
                  _tile_dpbf16ps(1, 4, 5);
                  _tile_dpbf16ps(2, 4, 5);
                  _tile_dpbf16ps(3, 4, 5);
                }
              }
              _tile_stored(0, out[0], 64);
              _tile_stored(1, out[1], 64);
              _tile_stored(2, out[2], 64);
              _tile_stored(3, out[3], 64);
              for (auto &tile : out)
                for (auto &row : tile)
                  for (float v : row) {
                    failed |= (v != 8192.0f);
                    sum += v;
                  }
            } else {
              // int8: every tdpbssd adds 64 products of 1*1 to each int32.
              alignas(64) std::int8_t x[16][64], y[16][64];
              alignas(64) std::int32_t out[4][16][16];
              for (auto &row : x)
                for (auto &v : row)
                  v = 1;
              for (auto &row : y)
                for (auto &v : row)
                  v = 1;
              _tile_loadd(4, x, 64);
              _tile_loadd(5, y, 64);
              for (int block = 0; block < 1024; ++block) {
                _tile_zero(0);
                _tile_zero(1);
                _tile_zero(2);
                _tile_zero(3);
                for (int j = 0; j < 256; ++j) {
                  _tile_dpbssd(0, 4, 5);
                  _tile_dpbssd(1, 4, 5);
                  _tile_dpbssd(2, 4, 5);
                  _tile_dpbssd(3, 4, 5);
                }
              }
              _tile_stored(0, out[0], 64);
              _tile_stored(1, out[1], 64);
              _tile_stored(2, out[2], 64);
              _tile_stored(3, out[3], 64);
              for (auto &tile : out)
                for (auto &row : tile)
                  for (std::int32_t v : row) {
                    failed |= (v != 256 * 64);
                    sum += v;
                  }
            }
            _tile_release();
          }
        } else if (vnni) {
          // vpdpbusd: 16 lanes x 4 byte-products, accumulated into int32.
          __m512i x[12];
          for (auto &v : x)
            v = _mm512_setzero_si512();
          const __m512i u8 = _mm512_set1_epi8(1), s8 = _mm512_set1_epi8(1);
          for (int j = 0; j < 3000000; ++j)
            for (int u = 0; u < 12; ++u)
              x[u] = _mm512_dpbusd_epi32(x[u], u8, s8);
          for (auto &value : x)
            sum += double(_mm512_reduce_add_epi32(value));
        } else if (vbf16) {
          // vdpbf16ps: 16 lanes x 2 bf16 products, accumulated into fp32.
          switch (chains_eff) {
          case 6:
            sum += bf16_chain_sum<6>();
            break;
          case 24:
            sum += bf16_chain_sum<24>();
            break;
          default:
            sum += bf16_chain_sum<12>();
          }
        } else if (fp32) {
          __m512 x[12];
          for (int u = 0; u < 12; ++u)
            x[u] = _mm512_set1_ps(float(u + 1));
          const __m512 v = _mm512_set1_ps(1), z = _mm512_set1_ps(1e-7f);
          for (int j = 0; j < 3000000; ++j)
            for (int u = 0; u < 12; ++u)
              x[u] = _mm512_fmadd_ps(x[u], v, z);
          for (auto &value : x)
            sum += _mm512_reduce_add_ps(value);
        } else {
          __m512d x[12];
          for (int u = 0; u < 12; ++u)
            x[u] = _mm512_set1_pd(double(u + 1));
          const __m512d v = _mm512_set1_pd(1), z = _mm512_set1_pd(1e-12);
          for (int j = 0; j < 3000000; ++j)
            for (int u = 0; u < 12; ++u)
              x[u] = _mm512_fmadd_pd(x[u], v, z);
          for (auto &value : x)
            sum += _mm512_reduce_add_pd(value);
        }
      }
      checksum = sum;
      valid &= !failed && std::isfinite(sum) && sum > 0;
      if (fp32 || fp64)
        valid &= std::abs(sum - expected_compute) <
                 std::max(1e-6, std::abs(expected_compute) * 1e-6);
      if (vnni)
        valid &= sum == double(workers) * 12 * 16 * 4 * 3000000;
      if (vbf16)
        valid &= sum == double(workers) * chains_eff * 16 * 2 * 3000000;
      // Operations per call: tile instructions x (rows x cols x depth x 2).
      return workers *
             (amx      ? 1024ULL * 256 * 4 * 16384
              : amx_i8 ? 1024ULL * 256 * 4 * 32768
              : vnni   ? 3000000ULL * 12 * 128
              : vbf16  ? 3000000ULL * chains_eff * 64
                       : 3000000ULL * 12 * (fp32 ? 16 : 8) * 2);
    };
    if (!latency) {
      work(0);
      work(0);
    }
    std::string benchmark = triad      ? "stream_triad"
                            : triad_nt ? "stream_triad_nt"
                            : readk    ? "stream_read"
                            : sweep    ? "roofline_sweep"
                            : latency  ? "pointer_chase"
                            : amx      ? "amx_peak"
                            : amx_i8   ? "int8_amx_peak"
                            : vnni     ? "vnni_peak"
                            : vbf16    ? "avx512_bf16_peak"
                                       : "avx512_peak";
    std::string dtype = stream || latency || readk ? ""
                        : amx || vbf16             ? "bf16"
                        : amx_i8 || vnni           ? "int8"
                        : fp32                     ? "fp32"
                                                   : "fp64";
    std::string implementation =
        amx        ? "native_amx_4_tiles"
        : amx_i8   ? "native_amx_int8_4_tiles"
        : vnni     ? "avx512_vnni_12_chains"
        : vbf16    ? "avx512_bf16_" + std::to_string(chains_eff) + "_chains"
        : triad_nt ? "native_avx512_nt_stores"
        : readk    ? "native_avx512_read_8_accumulators"
        : sweep    ? "avx512_" + std::to_string(chains_eff) + "_independent_chains"
        : latency  ? "random_dependent_cachelines"
                   : "native_avx512";
    const bool memory_kind = stream || sweep || latency || readk;
    std::cout << std::setprecision(15) << "{\"benchmark\":\"" << benchmark
              << "\",\"kernel\":\"" << kind << "\",\"dtype\":\"" << dtype
              << "\",\"implementation\":\"" << implementation
              << "\",\"threads\":" << workers
              << ",\"working_set_bytes\":" << (memory_kind ? bytes : 0)
              << ",\"per_thread_bytes\":" << per_thread_bytes
              << ",\"hugepages\":" << (huge ? 1 : 0) << ",\"k\":" << k
              << ",\"chains\":" << ((sweep || vbf16) ? chains_eff : 0)
              << ",\"counters\":" << (counters.read().ok ? "true" : "false")
              << ",\"seed\":7,\"samples\":[";
    for (int rep = 0; rep < repetitions; ++rep) {
      auto planned = window(rep, seconds),
           deadline = planned + std::uint64_t(seconds * 1e9);
      const CounterReading before = counters.read();
      auto start = clock_ns();
      std::uint64_t operations = 0, loops = 0, moved = 0;
      do {
        operations += work(deadline);
        moved += read_bytes;
        ++loops;
      } while (clock_ns() < deadline);
      auto end = clock_ns();
      const CounterReading after = counters.read();
      double elapsed = (end - start) * 1e-9;
      if (rep)
        std::cout << ',';
      std::cout << "{\"elapsed_seconds\":" << elapsed
                << ",\"start_ns\":" << start << ",\"end_ns\":" << end
                << ",\"planned_start_ns\":" << planned
                << ",\"operations\":" << ((latency || readk) ? 0 : operations)
                << ",\"modeled_bytes\":"
                << (readk ? moved : (stream || sweep) ? bytes * loops : 0)
                << ",\"loads\":" << (latency ? operations : 0);
      if (before.ok && after.ok)
        std::cout << ",\"cycles\":" << (after.cycles - before.cycles)
                  << ",\"amx_busy_cycles\":"
                  << (after.amx_busy < 0 ? -1.0 : after.amx_busy - before.amx_busy)
                  << ",\"counter_scale\":" << std::min(before.scale, after.scale)
                  << ",\"counter_threads\":" << after.threads;
      std::cout << '}';
    }
    if (stream || sweep) {
      for (std::size_t i = 0; i < n; i += std::max<std::size_t>(1, n / 1024)) {
        double expected = b[i];
        if (stream)
          expected += 3 * c[i];
        else
          for (int j = 0; j < k; ++j)
            expected = std::fma(expected, 1.000000000000001, 1e-12);
        valid &= std::isfinite(a[i]) && std::abs(a[i] - expected) < 1e-10;
        checksum += a[i];
      }
    }
    if (latency) {
      valid &= cursor >= links && cursor < links + n;
      checksum = cursor - links;
    }
    std::cout << "],\"checksum\":" << checksum
              << ",\"valid\":" << (valid ? "true" : "false") << "}\n";
    std::free(a);
    std::free(b);
    std::free(c);
    std::free(links);
    for (double *p : own)
      std::free(p);
    return valid ? 0 : 1;
  } catch (const std::exception &e) {
    std::cerr << e.what() << '\n';
    return 1;
  }
}
