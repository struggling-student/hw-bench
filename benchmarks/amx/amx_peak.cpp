#include <immintrin.h>
#include <asm/prctl.h>
#include <cerrno>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <omp.h>
#include <string>
#include <sys/syscall.h>
#include <unistd.h>

namespace {
constexpr unsigned long XFEATURE_XTILEDATA = 18;

struct alignas(64) TileConfig {
  std::uint8_t palette_id;
  std::uint8_t start_row;
  std::uint8_t reserved[14];
  std::uint16_t colsb[16];
  std::uint8_t rows[16];
};
static_assert(sizeof(TileConfig) == 64);

bool request_amx_permission() {
  return syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, XFEATURE_XTILEDATA) == 0;
}

TileConfig make_config(int input_columns_bytes) {
  TileConfig config{};
  config.palette_id = 1;
  for (int tile = 0; tile < 4; ++tile) {
    config.colsb[tile] = 64;
    config.rows[tile] = 16;
  }
  config.colsb[4] = static_cast<std::uint16_t>(input_columns_bytes);
  config.rows[4] = 16;
  config.colsb[5] = static_cast<std::uint16_t>(input_columns_bytes);
  config.rows[5] = 16;
  return config;
}

double run_bf16(std::uint64_t outer, int inner, double &checksum) {
  const double started = omp_get_wtime();
#pragma omp parallel reduction(+:checksum)
  {
    alignas(64) std::uint16_t a[16][32];
    alignas(64) std::uint16_t b[16][32];
    alignas(64) float result[16][16]{};
    for (auto &row : a) for (auto &value : row) value = 0x3f80;
    for (auto &row : b) for (auto &value : row) value = 0x3f80;
    const TileConfig config = make_config(64);
    _tile_loadconfig(&config);
    for (std::uint64_t block = 0; block < outer; ++block) {
      _tile_loadd(4, a, 64); _tile_loadd(5, b, 64);
      _tile_zero(0); _tile_zero(1); _tile_zero(2); _tile_zero(3);
      for (int i = 0; i < inner; ++i) {
        _tile_dpbf16ps(0, 4, 5); _tile_dpbf16ps(1, 4, 5);
        _tile_dpbf16ps(2, 4, 5); _tile_dpbf16ps(3, 4, 5);
      }
      _tile_stored(0, result, 64);
      checksum += result[block & 15][block & 15];
    }
    _tile_release();
  }
  return omp_get_wtime() - started;
}

double run_int8(std::uint64_t outer, int inner, double &checksum) {
  const double started = omp_get_wtime();
#pragma omp parallel reduction(+:checksum)
  {
    alignas(64) std::int8_t a[16][64];
    alignas(64) std::int8_t b[16][64];
    alignas(64) std::int32_t result[16][16]{};
    std::memset(a, 1, sizeof(a)); std::memset(b, 1, sizeof(b));
    const TileConfig config = make_config(64);
    _tile_loadconfig(&config);
    for (std::uint64_t block = 0; block < outer; ++block) {
      _tile_loadd(4, a, 64); _tile_loadd(5, b, 64);
      _tile_zero(0); _tile_zero(1); _tile_zero(2); _tile_zero(3);
      for (int i = 0; i < inner; ++i) {
        _tile_dpbssd(0, 4, 5); _tile_dpbssd(1, 4, 5);
        _tile_dpbssd(2, 4, 5); _tile_dpbssd(3, 4, 5);
      }
      _tile_stored(0, result, 64);
      checksum += result[block & 15][block & 15];
    }
    _tile_release();
  }
  return omp_get_wtime() - started;
}
}

int main(int argc, char **argv) {
  std::string mode = "bf16";
  std::uint64_t outer = 50;
  int inner = 256;
  for (int i = 1; i < argc; ++i) {
    const std::string arg = argv[i];
    if (arg == "--mode" && i + 1 < argc) mode = argv[++i];
    else if (arg == "--outer" && i + 1 < argc) outer = std::stoull(argv[++i]);
    else if (arg == "--inner" && i + 1 < argc) inner = std::stoi(argv[++i]);
    else return 2;
  }
  if (!request_amx_permission()) {
    std::cerr << "ARCH_REQ_XCOMP_PERM for XTILEDATA failed: " << std::strerror(errno) << '\n';
    return 77;
  }
  double checksum = 0.0;
  double elapsed = 0.0;
  std::uint64_t ops_per_instruction = 0;
  if (mode == "bf16") {
    elapsed = run_bf16(outer, inner, checksum);
    ops_per_instruction = 2ULL * 16 * 16 * 32;
  } else if (mode == "int8") {
    elapsed = run_int8(outer, inner, checksum);
    ops_per_instruction = 2ULL * 16 * 16 * 64;
  } else return 2;
  const std::uint64_t operations = outer * static_cast<std::uint64_t>(inner) * 4ULL
    * ops_per_instruction * static_cast<std::uint64_t>(omp_get_max_threads());
  const bool valid = std::isfinite(checksum) && checksum > 0.0;
  std::cout << std::setprecision(12)
    << "{\"benchmark\":\"amx_peak\",\"kernel\":\"amx_" << mode
    << "_dot\",\"dtype\":\"" << mode << "\",\"threads\":" << omp_get_max_threads()
    << ",\"outer_iterations\":" << outer << ",\"inner_iterations\":" << inner
    << ",\"operations\":" << operations << ",\"elapsed_seconds\":" << elapsed
    << ",\"performance_gops\":" << operations / elapsed / 1e9
    << ",\"checksum\":" << checksum << ",\"valid\":" << (valid ? "true" : "false") << "}\n";
  return valid ? 0 : 1;
}
