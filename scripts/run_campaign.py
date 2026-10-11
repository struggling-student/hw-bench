#!/usr/bin/env python3
"""Targeted hardware campaign; execute only inside an exclusive Slurm allocation."""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'src'))
from hwbench.topology import discover


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('mode', choices=['flat', 'cache'])
    parser.add_argument('output', type=Path)
    parser.add_argument('--container', type=Path, required=True)
    parser.add_argument('--only', choices=['memory', 'compute', 'sweep', 'all'], default='all')
    args = parser.parse_args()
    if not os.environ.get('SLURM_JOB_ID'):
        raise SystemExit('An exclusive Slurm allocation is required.')
    topology = discover()
    if topology['memory_mode'] != args.mode:
        raise SystemExit(f"Expected {args.mode}, found {topology['memory_mode']}")
    sockets = topology['sockets']
    if len(sockets) != 2 or any(s['physical_cores'] != len(s['logical_cpus']) for s in sockets):
        raise SystemExit('Campaign requires two sockets and one logical CPU per physical core.')
    args.output.mkdir(parents=True, exist_ok=True)
    system = args.output / 'system'; system.mkdir(exist_ok=True)
    (system / 'topology.json').write_text(json.dumps(topology, indent=2, sort_keys=True)+'\n')
    (system / 'campaign.json').write_text(json.dumps({
        'schema_version': '2.0', 'campaign_id': args.output.name,
        'selection_role': 'primary', 'slurm_job_id': os.environ['SLURM_JOB_ID'],
        'seconds_per_sample': 1.0, 'repetitions': 5,
        'source_sha256': {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                          for base in ['benchmarks', 'src', 'scripts']
                          for p in (ROOT / base).rglob('*') if p.is_file() and '__pycache__' not in p.parts},
    }, indent=2, sort_keys=True)+'\n')
    subprocess.run(['bash', str(ROOT/'scripts/collect_system_info.sh'), args.mode, str(system)], check=True)
    with (system/'build.log').open('w') as log:
        subprocess.run(['bash', str(ROOT/'scripts/build_benchmarks.sh')], stdout=log, stderr=subprocess.STDOUT, check=True, env=dict(os.environ, HW_BENCH_BUILD_DIR=str(args.output/'build')))
    for name in ['build_metadata.json', 'hardware.asm']:
        (system/name).write_bytes((args.output/'build'/name).read_bytes())
    binary = args.output/'build/hardware'

    def spec(socket, kind, threads=None, target='registers', memory_socket=None,
             gib=0, shape=0, scope='single', label='', k=1):
        s=sockets[socket]; t=threads or s['physical_cores']; ms=sockets[socket if memory_socket is None else memory_socket]
        cpus=s['logical_cpus'][:t]
        tier='hbm' if target=='hbm' else 'ddr'
        mem=ms[tier+'_nodes'][0]
        return dict(socket=socket, kind=kind, threads=t, target=target, memory_socket=ms['socket'],
                    cpus=cpus, mem=mem, gib=gib, shape=shape, scope=scope, label=label, k=k)

    def execute(s, group=None, participant=0, count=1):
        name=f"{s['label']}-{s['scope']}-s{s['socket']}-{s['kind']}-{s['target']}-m{s['memory_socket']}-t{s['threads']}-g{s['gib']}-n{s['shape']}-k{s['k']}"
        dest=args.output/'records'/f'{name}.json'
        if dest.exists():
            old=json.loads(dest.read_text())
            if old.get('returncode')==0 and (old.get('result') or {}).get('valid'):
                return
            raise RuntimeError(f'Existing failed record must be retained in another campaign: {dest}')
        env=os.environ.copy();env.update(PYTHONPATH=str(ROOT/'src'),OMP_NUM_THREADS=str(s['threads']),OMP_PROC_BIND='close',OMP_PLACES='cores',HWBENCH_CAMPAIGN_ID=args.output.name)
        if group:
            env.update(HWBENCH_SYNC_DIR=str(args.output/'sync'/group),HWBENCH_PARTICIPANT=str(participant),HWBENCH_PARTICIPANTS=str(count))
        cpu_list=','.join(map(str,s['cpus']))
        command=['numactl',f'--physcpubind={cpu_list}',f"--membind={s['mem']}"]
        if s['kind']=='gemm':
            command+=['env','-u','OMP_PROC_BIND','-u','OMP_PLACES','apptainer','exec','--bind',f'{ROOT}:{ROOT}:ro',str(args.container),'python3',str(ROOT/'benchmarks/amx/torch_amx.py'),'--dtype','bf16','--size',str(s['shape']),'--seconds','1','--repetitions','5']
        else:
            command += [str(binary),'--kind',s['kind'],'--seconds','1','--repetitions','5','--k',str(s['k'])]
            if s['gib']:command += ['--bytes',str(int(s['gib']*2**30))]
        argv=['python3','-m','hwbench.record','--output',str(dest),'--memory-mode',args.mode,
              '--memory-target',s['target'],'--socket-scope',s['scope'],'--socket',str(s['socket']),
              '--memory-socket',str(s['memory_socket']),'--cpu-bind',cpu_list,'--mem-bind',str(s['mem']),
              '--threads',str(s['threads']),'--notes',s['label']]
        if group:argv += ['--pair-id',group]
        print(name,flush=True)
        subprocess.run(argv+['--']+command,env=env,check=True)

    def pair(specs, name):
        # Never mix partial prior pair measurements with newly timed participants.
        with ThreadPoolExecutor(max_workers=len(specs)) as pool:
            futures=[pool.submit(execute,s,name,i,len(specs)) for i,s in enumerate(specs)]
            for future in futures:future.result()

    targets=['ddr','hbm'] if args.mode=='flat' else ['effective_cache']
    if args.only in ['memory','all']:
        for socket in [0,1]:
            for target in targets:
                for t in [1,2,4,8,14,28,56]:execute(spec(socket,'triad',t,target,gib=8,label='core_scaling'))
            if args.mode=='cache':
                for gib in [16,32,48,64,96,128]:execute(spec(socket,'triad',target='effective_cache',gib=gib,label='capacity'))
            for target in targets:
                for ms in [socket,1-socket]:
                    if args.mode=='flat' and ms!=socket:execute(spec(socket,'triad',target=target,memory_socket=ms,gib=8,label='locality'))
                    execute(spec(socket,'latency',threads=1,target=target,memory_socket=ms,gib=1,label='idle_latency'))
        for target in targets:
            pair([spec(s,'triad',target=target,gib=8,scope='dual_component',label='dual') for s in [0,1]],'dual-'+target)
        if args.mode=='flat':
            for socket in [0,1]:
                d=spec(socket,'triad',threads=28,target='ddr',gib=8,scope='concurrent_tier_component',label='split')
                h=spec(socket,'triad',threads=28,target='hbm',gib=8,scope='concurrent_tier_component',label='split')
                h['cpus']=sockets[socket]['logical_cpus'][28:56]
                execute(dict(d,scope='single',label='split_control'))
                execute(dict(h,scope='single',label='split_control'))
                pair([d,h],'tiers-s'+str(socket))
    if args.only in ['compute','all']:
        for socket in [0,1]:
            for kind in ['fp32','fp64','bf16','gemm']:
                for t in [1,2,4,8,14,28,56]:execute(spec(socket,kind,t,shape=6144 if kind=='gemm' else 0,label='compute_scaling'))
            for shape in [4096,8192]:execute(spec(socket,'gemm',shape=shape,label='shape'))
        for kind in ['fp32','fp64','bf16','gemm']:
            pair([spec(s,kind,scope='dual_component',shape=6144 if kind=='gemm' else 0,label='dual') for s in [0,1]],'dual-'+kind)
    if args.only in ['sweep','all']:
        # Refreshed matched sweeps avoid combining ceilings across pre/post-maintenance nodes.
        cases=[(target,8) for target in targets] if args.mode=='flat' else [('effective_cache',16),('effective_cache',96)]
        for target,gib in cases:
            for k in [1,2,4,8,16,32,64,128,256]:execute(spec(0,'sweep',target=target,gib=gib,k=k,label='intensity'))
    (args.output/'COMPLETED').write_text('All requested measurements completed successfully.\n')

if __name__=='__main__':main()
