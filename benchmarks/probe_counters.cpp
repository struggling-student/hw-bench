// Which per-thread, user-mode hardware events can be opened without privileges, and do
// their counts match a known amount of memory traffic?
//
// One thread reads a 1 GiB array three times (3 * 2^24 = 50,331,648 cache lines) while one
// event at a time is counted.  An event is only useful as a traffic proxy if its count is
// close to the number of lines read (or a stated multiple of it).  Events are opened per
// thread with the kernel and hypervisor excluded, exactly as hardware.cpp does, so this
// probe predicts what the benchmark itself may read at kernel.perf_event_paranoid=2.
//
//   g++ -O2 -std=c++17 -o probe_counters probe_counters.cpp
//   numactl --cpunodebind=0 --membind=0 ./probe_counters   # DDR
//   numactl --cpunodebind=0 --membind=2 ./probe_counters   # HBM (Flat mode)
// An optional argument picks the workload: read (default), store, nt-store, triad,
// triad-nt.  For triad the 'expected line' is one array line, so a Triad without
// read-for-ownership moves 2/3 of an expected line per expected line as reads.
#include <cerrno>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <immintrin.h>
#include <iostream>
#include <string>
#include <sys/syscall.h>
#include <unistd.h>
#include <vector>

struct PerfAttr {
  std::uint32_t type, size;
  std::uint64_t config, sample_period, sample_type, read_format, flags;
  std::uint32_t wakeup_events, bp_type;
  std::uint64_t config1, config2;
};
static_assert(sizeof(PerfAttr) == 72);

struct Event {
  const char *name;
  std::uint32_t type;
  std::uint64_t config, config1;
  const char *note;
};

// Encodings from Intel's Sapphire Rapids perfmon tables (event | umask << 8); the OCR
// events carry their request/response mask in config1.
static const std::vector<Event> events = {
    {"instructions", 0, 1, 0, "generic"},
    {"cpu-cycles", 0, 0, 0, "generic"},
    {"ref-cycles", 0, 9, 0, "generic, fixed counter"},
    {"CPU_CLK_UNHALTED.REF_TSC", 4, 0x0300, 0, "raw"},
    {"LLC-references", 0, 2, 0, "generic"},
    {"LLC-misses", 0, 3, 0, "generic"},
    {"MEM_LOAD_RETIRED.L1_MISS", 4, 0x08D1, 0, "retired loads"},
    {"MEM_LOAD_RETIRED.L2_MISS", 4, 0x10D1, 0, "retired loads"},
    {"MEM_LOAD_RETIRED.L3_HIT", 4, 0x04D1, 0, "retired loads"},
    {"MEM_LOAD_RETIRED.L3_MISS", 4, 0x20D1, 0, "retired loads"},
    {"MEM_LOAD_L3_MISS_RETIRED.LOCAL_DRAM", 4, 0x01D3, 0, "retired loads"},
    {"MEM_LOAD_L3_MISS_RETIRED.REMOTE_DRAM", 4, 0x02D3, 0, "retired loads"},
    {"L2_LINES_IN.ALL", 4, 0x1F25, 0, "lines filled into L2, includes prefetch"},
    {"L2_RQSTS.ALL_DEMAND_MISS", 4, 0x2724, 0, "demand only"},
    {"OCR.DEMAND_DATA_RD.L3_MISS", 4, 0x012A, 0x3FBFC00001ULL, "offcore response"},
    {"OCR.READS_TO_CORE.DRAM", 4, 0x012A, 0x73C000477ULL, "offcore response"},
    {"OCR.READS_TO_CORE.L3_MISS", 4, 0x012A, 0x3F84400477ULL, "offcore response"},
    {"OCR.DEMAND_RFO.DRAM", 4, 0x012A, 0x73C000002ULL, "offcore response, RFO only"},
    {"OCR.DEMAND_DATA_RD.DRAM", 4, 0x012A, 0x73C000001ULL, "offcore response, loads only"},
    {"L2_LINES_OUT.NON_SILENT", 4, 0x0226, 0, "dirty L2 evictions"},
    {"L2_LINES_OUT.SILENT", 4, 0x0126, 0, "clean L2 evictions"},
    {"OCR.WRITE_ESTIMATE.MEMORY", 4, 0x012A, 0xFBFF80822ULL, "offcore response, writes (estimate)"},
};

static double sink;

enum Mode { READ, STORE, NT_STORE, TRIAD, TRIAD_NT };
static Mode mode = READ;
static double *arr_a, *arr_b, *arr_c;

// Each mode touches 3 x 2^24 cache lines per call of ``workload(…, full)``:
// read/store: three passes over one 1 GiB array; triad: one pass over three arrays.
static void workload(std::size_t n, bool full = true) {
  const int passes = full ? 3 : 0;
  double s = 0;
  switch (mode) {
  case READ:
    for (int pass = 0; pass < passes; ++pass)
      for (std::size_t i = 0; i < n; ++i)
        s += arr_a[i];
    break;
  case STORE:
    for (int pass = 0; pass < passes; ++pass)
      for (std::size_t i = 0; i < n; ++i)
        arr_a[i] = 1.5;
    break;
  case NT_STORE:
    for (int pass = 0; pass < passes; ++pass)
      for (std::size_t i = 0; i < n; i += 2)
        _mm_stream_pd(arr_a + i, _mm_set1_pd(1.5));
    _mm_sfence();
    break;
  case TRIAD:
    if (full)
      for (std::size_t i = 0; i < n; ++i)
        arr_a[i] = arr_b[i] + 3 * arr_c[i];
    break;
  case TRIAD_NT:
    if (full) {
      for (std::size_t i = 0; i < n; i += 2)
        _mm_stream_pd(arr_a + i, _mm_add_pd(_mm_load_pd(arr_b + i), _mm_mul_pd(_mm_set1_pd(3), _mm_load_pd(arr_c + i))));
      _mm_sfence();
    }
    break;
  }
  sink = s;
}

int main(int argc, char **argv) {
  const std::string name = argc > 1 ? argv[1] : "read";
  mode = name == "store" ? STORE : name == "nt-store" ? NT_STORE : name == "triad" ? TRIAD : name == "triad-nt" ? TRIAD_NT : READ;
  const std::size_t bytes = 1ULL << 30, n = bytes / sizeof(double);
  arr_a = static_cast<double *>(std::aligned_alloc(2 << 20, bytes));
  arr_b = static_cast<double *>(std::aligned_alloc(2 << 20, bytes));
  arr_c = static_cast<double *>(std::aligned_alloc(2 << 20, bytes));
  for (std::size_t i = 0; i < n; ++i) {
    arr_a[i] = 0;
    arr_b[i] = 1.0 + (i % 7) * 0.125;
    arr_c[i] = 2.0 - (i % 5) * 0.125;
  }
  const double expected_lines = 3.0 * bytes / 64;
  std::printf("{\"workload\":\"%s\",\"expected_lines\":%.0f,\"events\":[", name.c_str(), expected_lines);
  bool first = true;
  for (const Event &e : events) {
    PerfAttr a{};
    a.type = e.type;
    a.size = sizeof(a);
    a.config = e.config;
    a.config1 = e.config1;
    a.read_format = 3;
    a.flags = (1ULL << 0) /* disabled */ | (1ULL << 5) | (1ULL << 6); // exclude kernel, hv
    int fd = static_cast<int>(syscall(SYS_perf_event_open, &a, 0, -1, -1, 0));
    int err = fd < 0 ? errno : 0;
    double count = -1, scale = 0;
    if (fd >= 0) {
      std::uint64_t v[3] = {0, 0, 0};
      // PERF_EVENT_IOC_ENABLE = 0x2400, DISABLE = 0x2401, RESET = 0x2403.
      syscall(SYS_ioctl, fd, 0x2403, 0);
      syscall(SYS_ioctl, fd, 0x2400, 0);
      workload(n);
      syscall(SYS_ioctl, fd, 0x2401, 0);
      if (::read(fd, v, sizeof v) == sizeof v && v[2] > 0) {
        count = double(v[0]) * double(v[1]) / double(v[2]);
        scale = double(v[2]) / double(v[1]);
      }
      close(fd);
    }
    std::printf("%s{\"name\":\"%s\",\"note\":\"%s\",\"opened\":%s,\"errno\":%d,\"strerror\":\"%s\",\"count\":%.0f,\"per_expected_line\":%.4f,\"time_running_over_enabled\":%.3f}",
                first ? "" : ",", e.name, e.note, fd >= 0 ? "true" : "false", err,
                err ? std::strerror(err) : "", count, count >= 0 ? count / expected_lines : -1.0, scale);
    first = false;
  }
  std::printf("],\"sink\":%.3f}\n", sink);
  return 0;
}
