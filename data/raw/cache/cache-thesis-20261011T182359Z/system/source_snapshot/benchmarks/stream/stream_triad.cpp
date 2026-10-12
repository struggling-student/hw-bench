#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <new>
#include <omp.h>
#include <string>
#include <vector>

namespace {
double run_triad(double *a, const double *b, const double *c, std::size_t n, double scalar) {
  const double started = omp_get_wtime();
#pragma omp parallel for schedule(static)
  for (std::size_t i = 0; i < n; ++i) a[i] = b[i] + scalar * c[i];
  return omp_get_wtime() - started;
}

void initialize(double *a, double *b, double *c, std::size_t n) {
#pragma omp parallel for schedule(static)
  for (std::size_t i = 0; i < n; ++i) {
    a[i] = 0.0;
    b[i] = 1.0 + static_cast<double>(i % 17) * 0.001;
    c[i] = 2.0 - static_cast<double>(i % 13) * 0.001;
  }
}
}

int main(int argc, char **argv) {
  std::size_t total_bytes = 256ULL * 1024 * 1024;
  int warmups = 2;
  int repetitions = 5;
  for (int i = 1; i < argc; ++i) {
    const std::string arg = argv[i];
    if (arg == "--bytes" && i + 1 < argc) total_bytes = std::stoull(argv[++i]);
    else if (arg == "--warmups" && i + 1 < argc) warmups = std::stoi(argv[++i]);
    else if (arg == "--repetitions" && i + 1 < argc) repetitions = std::stoi(argv[++i]);
    else {
      std::cerr << "usage: stream_triad [--bytes TOTAL] [--warmups N] [--repetitions N]\n";
      return 2;
    }
  }
  const std::size_t n = total_bytes / (3 * sizeof(double));
  total_bytes = n * 3 * sizeof(double);
  if (n == 0 || warmups < 0 || repetitions < 1) return 2;

  double *a = static_cast<double *>(std::aligned_alloc(64, ((n * sizeof(double) + 63) / 64) * 64));
  double *b = static_cast<double *>(std::aligned_alloc(64, ((n * sizeof(double) + 63) / 64) * 64));
  double *c = static_cast<double *>(std::aligned_alloc(64, ((n * sizeof(double) + 63) / 64) * 64));
  if (!a || !b || !c) {
    std::cerr << "allocation failed for " << total_bytes << " bytes\n";
    std::free(a); std::free(b); std::free(c);
    return 1;
  }
  initialize(a, b, c, n);

  const double traffic_bytes = static_cast<double>(n) * 3.0 * sizeof(double);
  const double scalar = 3.0;
  const double first = run_triad(a, b, c, n, scalar);
  for (int i = 0; i < warmups; ++i) run_triad(a, b, c, n, scalar);
  std::vector<double> elapsed;
  for (int i = 0; i < repetitions; ++i) elapsed.push_back(run_triad(a, b, c, n, scalar));

  double checksum = 0.0;
  const std::size_t stride = std::max<std::size_t>(1, n / 1024);
  for (std::size_t i = 0; i < n; i += stride) checksum += a[i];
  const bool valid = std::isfinite(checksum) && checksum > 0.0;

  std::cout << std::setprecision(12)
            << "{\"benchmark\":\"stream_triad\",\"kernel\":\"triad\","
            << "\"threads\":" << omp_get_max_threads() << ","
            << "\"elements\":" << n << ",\"working_set_bytes\":" << total_bytes << ","
            << "\"modeled_bytes_per_iteration\":" << static_cast<unsigned long long>(traffic_bytes) << ","
            << "\"operations_per_iteration\":" << (2ULL * n) << ","
            << "\"first_elapsed_seconds\":" << first << ",\"steady_elapsed_seconds\":[";
  for (std::size_t i = 0; i < elapsed.size(); ++i) {
    if (i) std::cout << ',';
    std::cout << elapsed[i];
  }
  std::cout << "],\"warmup_iterations\":" << warmups
            << ",\"checksum\":" << checksum << ",\"valid\":" << (valid ? "true" : "false") << "}\n";
  std::free(a); std::free(b); std::free(c);
  return valid ? 0 : 1;
}
