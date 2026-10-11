#!/usr/bin/env python3
"""Verified warmed BF16 GEMM, measured separately from native AMX throughput."""
from __future__ import annotations
import argparse
import hashlib
import tempfile
import json
import os
from pathlib import Path
import time
import torch


def window(rep):
    directory=os.environ.get('HWBENCH_SYNC_DIR')
    if not directory:return time.monotonic_ns()
    root=Path(tempfile.gettempdir())/('hwbench-sync-'+hashlib.sha256(directory.encode()).hexdigest()[:24]);root.mkdir(parents=True,exist_ok=True)
    participant=int(os.environ['HWBENCH_PARTICIPANT']);count=int(os.environ['HWBENCH_PARTICIPANTS'])
    prefix=f'rep{rep}';(root/f'{prefix}-ready{participant}').write_text('1')
    startfile=root/f'{prefix}-start';timeout=time.monotonic()+120
    if participant==0:
        while not all((root/f'{prefix}-ready{i}').exists() for i in range(count)):
            if time.monotonic()>timeout:raise RuntimeError('participant readiness timeout')
            time.sleep(.002)
        tmp=root/f'{prefix}-tmp';tmp.write_text(str(time.monotonic_ns()+250_000_000));tmp.replace(startfile)
    while not startfile.exists():
        if time.monotonic()>timeout:raise RuntimeError('shared window timeout')
        time.sleep(.002)
    start=int(startfile.read_text())
    while time.monotonic_ns()<start:time.sleep(.00002)
    return start


def main():
    p=argparse.ArgumentParser();p.add_argument('--dtype',choices=['bf16'],required=True)
    p.add_argument('--size',type=int,default=6144);p.add_argument('--seconds',type=float,default=1)
    p.add_argument('--repetitions',type=int,default=5);p.add_argument('--warmups',type=int,default=3)
    args=p.parse_args()
    if args.seconds<=0 or args.repetitions<1 or args.size<1:raise ValueError('invalid measurement dimensions')
    threads=int(os.environ['OMP_NUM_THREADS']);torch.set_num_threads(threads);torch.manual_seed(7)
    n=args.size;a=torch.randn((n,n),dtype=torch.bfloat16);b=torch.randn((n,n),dtype=torch.bfloat16)
    # Only the verification warm-up prints primitive execution evidence.
    with torch.backends.mkldnn.verbose(torch.backends.mkldnn.VERBOSE_ON):result=torch.mm(a,b)
    for _ in range(args.warmups):result=torch.mm(a,b)
    samples=[]
    for rep in range(args.repetitions):
        planned=window(rep);deadline=planned+int(args.seconds*1e9);start=time.monotonic_ns();count=0
        while True:
            result=torch.mm(a,b);count+=1
            if time.monotonic_ns()>=deadline:break
        end=time.monotonic_ns()
        samples.append(dict(start_ns=start,end_ns=end,planned_start_ns=planned,
                            elapsed_seconds=(end-start)/1e9,operations=2*n**3*count))
    valid=bool(torch.isfinite(result).all())
    for i,j in [(0,0),(n-1,n-1),(0,n-1),(n//2,n//2)]:
        expected=float(torch.dot(a[i].float(),b[:,j].float()));observed=float(result[i,j])
        valid &= abs(observed-expected)<=max(.5,.02*abs(expected))
    print(json.dumps(dict(benchmark='amx_onednn_gemm',kernel='gemm',dtype='bf16',
          implementation='onednn_numactl_only_omp_affinity_unset',threads=torch.get_num_threads(),
          m=n,n=n,k=n,working_set_bytes=3*n*n*2,torch_version=torch.__version__,
          torch_configuration=torch.__config__.show(),samples=samples,valid=valid,
          checksum=float(result[0,0])+float(result[-1,-1]),
          source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())))
    return 0 if valid else 1

if __name__=='__main__':raise SystemExit(main())
