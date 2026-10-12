// Duration-based kernels. All participants measure work over a shared clock window.
#include <immintrin.h>
#include <asm/prctl.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <time.h>
#include <omp.h>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <random>
#include <string>
#include <thread>
#include <vector>

namespace fs = std::filesystem;
std::uint64_t clock_ns() { timespec t{}; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec*1000000000ULL+t.tv_nsec; }
std::uint64_t window(int rep, double seconds) {
  const char *directory=std::getenv("HWBENCH_SYNC_DIR");
  if (!directory) return clock_ns();
  fs::path root(directory); fs::create_directories(root);
  int id=std::stoi(std::getenv("HWBENCH_PARTICIPANT"));
  int count=std::stoi(std::getenv("HWBENCH_PARTICIPANTS"));
  std::string prefix="rep"+std::to_string(rep);
  std::ofstream(root/(prefix+"-ready"+std::to_string(id))).put('1');
  auto startfile=root/(prefix+"-start");
  auto timeout=clock_ns()+120000000000ULL;
  if (id==0) {
    for (;;) {
      bool ready=true;
      for (int i=0;i<count;++i) ready &= fs::exists(root/(prefix+"-ready"+std::to_string(i)));
      if (ready) break;
      if (clock_ns()>timeout) throw std::runtime_error("participant readiness timeout");
      std::this_thread::sleep_for(std::chrono::milliseconds(2));
    }
    auto tmp=root/(prefix+"-tmp");
    { std::ofstream out(tmp); out << clock_ns()+250000000ULL; }
    fs::rename(tmp,startfile);
  }
  while (!fs::exists(startfile)) {
    if (clock_ns()>timeout) throw std::runtime_error("shared window timeout");
    std::this_thread::sleep_for(std::chrono::milliseconds(2));
  }
  std::uint64_t start; std::ifstream(startfile)>>start;
  while (clock_ns()<start) std::this_thread::sleep_for(std::chrono::microseconds(20));
  (void)seconds; return start;
}

struct alignas(64) TileConfig {
  std::uint8_t palette_id=1, start_row=0, reserved[14]{};
  std::uint16_t colsb[16]{}; std::uint8_t rows[16]{};
};
static_assert(sizeof(TileConfig)==64);
struct alignas(64) Link { Link* next; char pad[56]; };

int main(int argc,char**argv) {
  try {
    std::string kind="triad"; std::size_t bytes=8ULL<<30;
    double seconds=1; int repetitions=5,k=1;
    for(int i=1;i<argc;++i) {
      std::string arg=argv[i]; if(i+1>=argc) return 2;
      if(arg=="--kind") kind=argv[++i];
      else if(arg=="--bytes") bytes=std::stoull(argv[++i]);
      else if(arg=="--seconds") seconds=std::stod(argv[++i]);
      else if(arg=="--repetitions") repetitions=std::stoi(argv[++i]);
      else if(arg=="--k") k=std::stoi(argv[++i]); else return 2;
    }
    if(seconds<=0 || repetitions<1 || k<1 || k>1024) return 2;
    bool triad=kind=="triad", sweep=kind=="sweep", latency=kind=="latency";
    bool fp32=kind=="fp32", fp64=kind=="fp64", amx=kind=="bf16";
    if(!(triad||sweep||latency||fp32||fp64||amx)) return 2;
    int workers=0; bool valid=true;
    #pragma omp parallel
    {
      #pragma omp single
      workers=omp_get_num_threads();
    }
    std::size_t n=0; double *a=nullptr,*b=nullptr,*c=nullptr; Link *links=nullptr,*cursor=nullptr;
    if(triad||sweep) {
      n=(bytes/((triad?3:2)*sizeof(double))/64)*64;
      if(n==0) return 2;
      bytes=n*(triad?3:2)*sizeof(double);
      a=static_cast<double*>(std::aligned_alloc(64,n*8));
      b=static_cast<double*>(std::aligned_alloc(64,n*8));
      if(triad) c=static_cast<double*>(std::aligned_alloc(64,n*8));
      if(!a||!b||(triad&&!c)) throw std::runtime_error("allocation failed");
      #pragma omp parallel for schedule(static)
      for(std::size_t i=0;i<n;++i) { a[i]=0; b[i]=1+(i%17)*.001; if(c) c[i]=2-(i%13)*.001; }
    }
    if(latency) {
      if(workers!=1) throw std::runtime_error("latency requires exactly one worker");
      n=bytes/sizeof(Link); bytes=n*sizeof(Link);
      if(n<2) return 2;
      links=static_cast<Link*>(std::aligned_alloc(64,bytes));
      if(!links) throw std::runtime_error("allocation failed");
      {
        std::vector<std::size_t> order(n); std::iota(order.begin(),order.end(),0);
        std::mt19937_64 random(7); std::shuffle(order.begin(),order.end(),random);
        for(std::size_t i=0;i<n;++i) links[order[i]].next=links+order[(i+1)%n];
        cursor=links;
      }
      // Traverse the entire single cycle before timing and verify every node is reachable.
      for(std::size_t i=0;i<n;++i) cursor=cursor->next;
      valid &= cursor==links;
    }
    double expected_compute=0;
    if(fp32||fp64) {
      for(int u=0;u<12;++u) {
        if(fp32) {float v=float(u+1);for(int j=0;j<3000000;++j) v=std::fma(1.0f,1e-7f,v);expected_compute+=v*16;}
        else {double v=double(u+1);for(int j=0;j<3000000;++j) v=std::fma(1.0,1e-12,v);expected_compute+=v*8;}
      }
      expected_compute*=workers;
    }
    double checksum=0;
    auto work=[&]() -> std::uint64_t {
      if(latency) { for(int j=0;j<65536;++j) cursor=cursor->next; return 65536; }
      if(triad) {
        #pragma omp parallel for schedule(static)
        for(std::size_t i=0;i<n;++i) a[i]=b[i]+3*c[i];
        return 2ULL*n;
      }
      if(sweep) {
        #pragma omp parallel for schedule(static)
        for(std::size_t i=0;i<n;i+=64) {
          __m512d x[8]; for(int u=0;u<8;++u) x[u]=_mm512_load_pd(b+i+u*8);
          const __m512d v=_mm512_set1_pd(1.000000000000001),z=_mm512_set1_pd(1e-12);
          for(int j=0;j<k;++j) for(int u=0;u<8;++u) x[u]=_mm512_fmadd_pd(x[u],v,z);
          for(int u=0;u<8;++u) _mm512_store_pd(a+i+u*8,x[u]);
        }
        return 2ULL*n*k;
      }
      double sum=0; int failed=0;
      #pragma omp parallel reduction(+:sum) reduction(|:failed)
      {
        if(amx) {
          thread_local bool permission=syscall(SYS_arch_prctl,ARCH_REQ_XCOMP_PERM,18)==0;
          if(!permission) failed=1;
          else {
            TileConfig cfg; for(int t=0;t<6;++t) {cfg.colsb[t]=64;cfg.rows[t]=16;}
            alignas(64) std::uint16_t x[16][32],y[16][32]; alignas(64) float out[4][16][16];
            for(auto &row:x) for(auto &v:row) v=0x3f80;
            for(auto &row:y) for(auto &v:row) v=0x3f80;
            _tile_loadconfig(&cfg); _tile_loadd(4,x,64);_tile_loadd(5,y,64);
            for(int block=0;block<1024;++block) {
              _tile_zero(0);_tile_zero(1);_tile_zero(2);_tile_zero(3);
              for(int j=0;j<256;++j) {
                _tile_dpbf16ps(0,4,5);_tile_dpbf16ps(1,4,5);_tile_dpbf16ps(2,4,5);_tile_dpbf16ps(3,4,5);
              }
            }
            _tile_stored(0,out[0],64);_tile_stored(1,out[1],64);_tile_stored(2,out[2],64);_tile_stored(3,out[3],64);
            for(auto &tile:out) for(auto &row:tile) for(float v:row) {failed|=(v!=8192.0f);sum+=v;}
            _tile_release();
          }
        } else if(fp32) {
          __m512 x[12]; for(int u=0;u<12;++u) x[u]=_mm512_set1_ps(float(u+1));
          const __m512 v=_mm512_set1_ps(1),z=_mm512_set1_ps(1e-7f);
          for(int j=0;j<3000000;++j) for(int u=0;u<12;++u) x[u]=_mm512_fmadd_ps(x[u],v,z);
          for(auto &value:x) sum+=_mm512_reduce_add_ps(value);
        } else {
          __m512d x[12]; for(int u=0;u<12;++u) x[u]=_mm512_set1_pd(double(u+1));
          const __m512d v=_mm512_set1_pd(1),z=_mm512_set1_pd(1e-12);
          for(int j=0;j<3000000;++j) for(int u=0;u<12;++u) x[u]=_mm512_fmadd_pd(x[u],v,z);
          for(auto &value:x) sum+=_mm512_reduce_add_pd(value);
        }
      }
      checksum=sum; valid &= !failed && std::isfinite(sum) && sum>0;
      if(fp32||fp64) valid &= std::abs(sum-expected_compute)<std::max(1e-6, std::abs(expected_compute)*1e-6);
      return workers*(amx?1024ULL*256*4*16384:3000000ULL*12*(fp32?16:8)*2);
    };
    if(!latency) {work();work();}
    std::string benchmark=triad?"stream_triad":sweep?"roofline_sweep":latency?"pointer_chase":amx?"amx_peak":"avx512_peak";
    std::string dtype=triad||latency?"":amx?"bf16":fp32?"fp32":"fp64";
    std::string implementation=amx?"native_amx_4_tiles":sweep?"avx512_8_independent_chains":latency?"random_dependent_cachelines":"native_avx512";
    std::cout<<std::setprecision(15)<<"{\"benchmark\":\""<<benchmark<<"\",\"kernel\":\""<<kind<<"\",\"dtype\":\""<<dtype
      <<"\",\"implementation\":\""<<implementation<<"\",\"threads\":"<<workers<<",\"working_set_bytes\":"<<((triad||sweep||latency)?bytes:0)
      <<",\"k\":"<<k<<",\"seed\":7,\"samples\":[";
    for(int rep=0;rep<repetitions;++rep) {
      auto planned=window(rep,seconds),deadline=planned+std::uint64_t(seconds*1e9);
      auto start=clock_ns(); std::uint64_t operations=0,loops=0;
      do {operations+=work();++loops;} while(clock_ns()<deadline);
      auto end=clock_ns();double elapsed=(end-start)*1e-9;
      if(rep) std::cout<<',';
      std::cout<<"{\"elapsed_seconds\":"<<elapsed<<",\"start_ns\":"<<start<<",\"end_ns\":"<<end<<",\"planned_start_ns\":"<<planned
        <<",\"operations\":"<<(latency?0:operations)<<",\"modeled_bytes\":"<<((triad||sweep)?bytes*loops:0)
        <<",\"loads\":"<<(latency?operations:0)<<'}';
    }
    if(triad||sweep) {
      for(std::size_t i=0;i<n;i+=std::max<std::size_t>(1,n/1024)) {
        double expected=b[i]; if(triad) expected+=3*c[i];
        else for(int j=0;j<k;++j) expected=std::fma(expected,1.000000000000001,1e-12);
        valid &= std::isfinite(a[i]) && std::abs(a[i]-expected)<1e-10;checksum+=a[i];
      }
    }
    if(latency) {valid &= cursor>=links && cursor<links+n;checksum=cursor-links;}
    std::cout<<"],\"checksum\":"<<checksum<<",\"valid\":"<<(valid?"true":"false")<<"}\n";
    std::free(a);std::free(b);std::free(c);std::free(links);
    return valid?0:1;
  } catch(const std::exception &e) { std::cerr<<e.what()<<'\n';return 1; }
}
