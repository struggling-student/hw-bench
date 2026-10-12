#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <immintrin.h>
#include <iomanip>
#include <iostream>
#include <omp.h>
#include <string>

int main(int argc, char **argv) {
  std::size_t total_bytes=2ULL*1024*1024*1024;
  int k=1, repetitions=5;
  for (int i=1;i<argc;++i) {
    const std::string arg=argv[i];
    if (arg=="--bytes" && i+1<argc) total_bytes=std::stoull(argv[++i]);
    else if (arg=="--k" && i+1<argc) k=std::stoi(argv[++i]);
    else if (arg=="--repetitions" && i+1<argc) repetitions=std::stoi(argv[++i]);
    else return 2;
  }
  const std::size_t n=(total_bytes/(2*sizeof(double))/64)*64;
  total_bytes=n*2*sizeof(double);
  auto *input=static_cast<double*>(std::aligned_alloc(64,((n*sizeof(double)+63)/64)*64));
  auto *output=static_cast<double*>(std::aligned_alloc(64,((n*sizeof(double)+63)/64)*64));
  if (!input || !output) return 1;
#pragma omp parallel for schedule(static)
  for (std::size_t i=0;i<n;++i) { input[i]=1.0+(i%31)*1e-5; output[i]=0.0; }
  auto run=[&]() {
    const double started=omp_get_wtime();
#pragma omp parallel for schedule(static)
    for (std::size_t block=0;block<n/64;++block) {
      const std::size_t i=block*64;
      __m512d x0=_mm512_load_pd(input+i+0),  x1=_mm512_load_pd(input+i+8);
      __m512d x2=_mm512_load_pd(input+i+16), x3=_mm512_load_pd(input+i+24);
      __m512d x4=_mm512_load_pd(input+i+32), x5=_mm512_load_pd(input+i+40);
      __m512d x6=_mm512_load_pd(input+i+48), x7=_mm512_load_pd(input+i+56);
      const __m512d a=_mm512_set1_pd(1.000000000000001), b=_mm512_set1_pd(1e-12);
      for (int j=0;j<k;++j) {
        x0=_mm512_fmadd_pd(x0,a,b); x1=_mm512_fmadd_pd(x1,a,b);
        x2=_mm512_fmadd_pd(x2,a,b); x3=_mm512_fmadd_pd(x3,a,b);
        x4=_mm512_fmadd_pd(x4,a,b); x5=_mm512_fmadd_pd(x5,a,b);
        x6=_mm512_fmadd_pd(x6,a,b); x7=_mm512_fmadd_pd(x7,a,b);
      }
      _mm512_store_pd(output+i+0,x0); _mm512_store_pd(output+i+8,x1);
      _mm512_store_pd(output+i+16,x2); _mm512_store_pd(output+i+24,x3);
      _mm512_store_pd(output+i+32,x4); _mm512_store_pd(output+i+40,x5);
      _mm512_store_pd(output+i+48,x6); _mm512_store_pd(output+i+56,x7);
    }
    return omp_get_wtime()-started;
  };
  run();
  std::cout<<std::setprecision(12)<<"{\"benchmark\":\"roofline_sweep\",\"kernel\":\"fma_intensity\","
    <<"\"dtype\":\"fp64\",\"implementation\":\"avx512_8_independent_chains\",\"threads\":"<<omp_get_max_threads()<<",\"k\":"<<k
    <<",\"working_set_bytes\":"<<total_bytes<<",\"modeled_bytes_per_iteration\":"<<total_bytes
    <<",\"operations_per_iteration\":"<<(2ULL*n*static_cast<unsigned long long>(k))
    <<",\"arithmetic_intensity\":"<<(2.0*n*k/total_bytes)<<",\"measurements\":[";
  for (int r=0;r<repetitions;++r) { if(r) std::cout<<','; std::cout<<run(); }
  double checksum=0.0; const std::size_t stride=std::max<std::size_t>(1,n/1024);
  for(std::size_t i=0;i<n;i+=stride) checksum+=output[i];
  std::cout<<"],\"checksum\":"<<checksum<<",\"valid\":"<<(std::isfinite(checksum)?"true":"false")<<"}\n";
  std::free(input); std::free(output);
  return std::isfinite(checksum)?0:1;
}
