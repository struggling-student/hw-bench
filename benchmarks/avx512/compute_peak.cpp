#include <immintrin.h>
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <omp.h>
#include <string>
#include <vector>

namespace {
template <typename V, typename Scalar, int LANES>
double reduce_vector(V value);

template <>
double reduce_vector<__m512, float, 16>(__m512 value) { return _mm512_reduce_add_ps(value); }
template <>
double reduce_vector<__m512d, double, 8>(__m512d value) { return _mm512_reduce_add_pd(value); }

double run_fp32(std::uint64_t iterations, double &checksum) {
  const double start = omp_get_wtime();
#pragma omp parallel reduction(+:checksum)
  {
    const __m512 a = _mm512_set1_ps(1.0f);
    const __m512 b = _mm512_set1_ps(1.0e-7f);
    __m512 c0 = _mm512_set1_ps(0.1f), c1 = _mm512_set1_ps(0.2f);
    __m512 c2 = _mm512_set1_ps(0.3f), c3 = _mm512_set1_ps(0.4f);
    __m512 c4 = _mm512_set1_ps(0.5f), c5 = _mm512_set1_ps(0.6f);
    __m512 c6 = _mm512_set1_ps(0.7f), c7 = _mm512_set1_ps(0.8f);
    __m512 c8 = _mm512_set1_ps(0.9f), c9 = _mm512_set1_ps(1.0f);
    __m512 c10 = _mm512_set1_ps(1.1f), c11 = _mm512_set1_ps(1.2f);
    for (std::uint64_t i = 0; i < iterations; ++i) {
      c0=_mm512_fmadd_ps(a,b,c0); c1=_mm512_fmadd_ps(a,b,c1);
      c2=_mm512_fmadd_ps(a,b,c2); c3=_mm512_fmadd_ps(a,b,c3);
      c4=_mm512_fmadd_ps(a,b,c4); c5=_mm512_fmadd_ps(a,b,c5);
      c6=_mm512_fmadd_ps(a,b,c6); c7=_mm512_fmadd_ps(a,b,c7);
      c8=_mm512_fmadd_ps(a,b,c8); c9=_mm512_fmadd_ps(a,b,c9);
      c10=_mm512_fmadd_ps(a,b,c10); c11=_mm512_fmadd_ps(a,b,c11);
    }
    checksum += reduce_vector<__m512,float,16>(c0)+reduce_vector<__m512,float,16>(c1)
      +reduce_vector<__m512,float,16>(c2)+reduce_vector<__m512,float,16>(c3)
      +reduce_vector<__m512,float,16>(c4)+reduce_vector<__m512,float,16>(c5)
      +reduce_vector<__m512,float,16>(c6)+reduce_vector<__m512,float,16>(c7)
      +reduce_vector<__m512,float,16>(c8)+reduce_vector<__m512,float,16>(c9)
      +reduce_vector<__m512,float,16>(c10)+reduce_vector<__m512,float,16>(c11);
  }
  return omp_get_wtime() - start;
}

double run_fp64(std::uint64_t iterations, double &checksum) {
  const double start = omp_get_wtime();
#pragma omp parallel reduction(+:checksum)
  {
    const __m512d a = _mm512_set1_pd(1.0), b = _mm512_set1_pd(1.0e-12);
    __m512d c0=_mm512_set1_pd(.1), c1=_mm512_set1_pd(.2), c2=_mm512_set1_pd(.3);
    __m512d c3=_mm512_set1_pd(.4), c4=_mm512_set1_pd(.5), c5=_mm512_set1_pd(.6);
    __m512d c6=_mm512_set1_pd(.7), c7=_mm512_set1_pd(.8), c8=_mm512_set1_pd(.9);
    __m512d c9=_mm512_set1_pd(1.), c10=_mm512_set1_pd(1.1), c11=_mm512_set1_pd(1.2);
    for (std::uint64_t i = 0; i < iterations; ++i) {
      c0=_mm512_fmadd_pd(a,b,c0); c1=_mm512_fmadd_pd(a,b,c1);
      c2=_mm512_fmadd_pd(a,b,c2); c3=_mm512_fmadd_pd(a,b,c3);
      c4=_mm512_fmadd_pd(a,b,c4); c5=_mm512_fmadd_pd(a,b,c5);
      c6=_mm512_fmadd_pd(a,b,c6); c7=_mm512_fmadd_pd(a,b,c7);
      c8=_mm512_fmadd_pd(a,b,c8); c9=_mm512_fmadd_pd(a,b,c9);
      c10=_mm512_fmadd_pd(a,b,c10); c11=_mm512_fmadd_pd(a,b,c11);
    }
    checksum += reduce_vector<__m512d,double,8>(c0)+reduce_vector<__m512d,double,8>(c1)
      +reduce_vector<__m512d,double,8>(c2)+reduce_vector<__m512d,double,8>(c3)
      +reduce_vector<__m512d,double,8>(c4)+reduce_vector<__m512d,double,8>(c5)
      +reduce_vector<__m512d,double,8>(c6)+reduce_vector<__m512d,double,8>(c7)
      +reduce_vector<__m512d,double,8>(c8)+reduce_vector<__m512d,double,8>(c9)
      +reduce_vector<__m512d,double,8>(c10)+reduce_vector<__m512d,double,8>(c11);
  }
  return omp_get_wtime() - start;
}
}

int main(int argc, char **argv) {
  std::string mode = "fp32";
  std::uint64_t iterations = 100000000;
  for (int i=1; i<argc; ++i) {
    std::string arg=argv[i];
    if (arg=="--mode" && i+1<argc) mode=argv[++i];
    else if (arg=="--iterations" && i+1<argc) iterations=std::stoull(argv[++i]);
    else return 2;
  }
  double checksum=0.0, elapsed=0.0;
  std::uint64_t operations=0;
  if (mode=="fp32") {
    elapsed=run_fp32(iterations,checksum);
    operations=iterations*12ULL*16ULL*2ULL*omp_get_max_threads();
  } else if (mode=="fp64") {
    elapsed=run_fp64(iterations,checksum);
    operations=iterations*12ULL*8ULL*2ULL*omp_get_max_threads();
  } else return 2;
  const bool valid=std::isfinite(checksum) && checksum!=0.0;
  std::cout<<std::setprecision(12)<<"{\"benchmark\":\"avx512_peak\",\"kernel\":\"avx512_"<<mode
    <<"_fma\",\"dtype\":\""<<mode<<"\",\"threads\":"<<omp_get_max_threads()
    <<",\"iterations\":"<<iterations<<",\"operations\":"<<operations
    <<",\"elapsed_seconds\":"<<elapsed<<",\"performance_gops\":"<<(operations/elapsed/1e9)
    <<",\"checksum\":"<<checksum<<",\"valid\":"<<(valid?"true":"false")<<"}\n";
  return valid?0:1;
}
