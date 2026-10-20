#!/usr/bin/env python3
"""Cache-node (hbm13) uncore probe: which events count the memory-side cache.

Runs on the node inside a Slurm allocation, as the user.  For each event set and
workload: one `sudo -n perf stat -a --per-socket --no-merge -D -1 --control fifo` session
whose workload is `tail --pid=<holder>` (never the benchmark as root); the benchmark
enables the counters before its warm-up and disables them after its last sample through
HWBENCH_PERF_CTL/ACK, so first touch is not counted.
"""

import json
import os
import subprocess
import sys
import tempfile
import time
from pathlib import Path

HW = sys.argv[1]  # built hardware binary
OUT = Path(sys.argv[2])
OUT.mkdir(parents=True, exist_ok=True)
GIB = 2**30

COMMON = [
    "power/energy-pkg/", "power/energy-ram/",
    "uncore_cha_0/event=0x01,name=cha_clockticks/",
    "uncore_imc/event=0x05,umask=0xcf,name=ddr_cas_rd/",
    "uncore_imc/event=0x05,umask=0xf0,name=ddr_cas_wr/",
    "uncore_type_14/event=0x05,umask=0xcf,name=hbm_cas_rd/",
    "uncore_type_14/event=0x05,umask=0xf0,name=hbm_cas_wr/",
]
SETS = {
    "A": COMMON + [
        "uncore_m2m/event=0x1f,umask=0x1,name=m2m_nm_rd_hit_clean/",
        "uncore_m2m/event=0x1f,umask=0x2,name=m2m_nm_rd_hit_dirty/",
        "uncore_m2m/event=0x4b,umask=0x3,name=m2m_tag_miss/",
        "uncore_m2m/event=0x24,umask=0x304,name=m2m_imc_reads_all/",
        "uncore_imc/event=0xd3,umask=0x1,name=imc_tagchk_hit/",
        "uncore_imc/event=0xd3,umask=0x2,name=imc_tagchk_miss_clean/",
        "uncore_type_14/event=0xd3,umask=0x1,name=hbm_tagchk_hit/",
        "uncore_type_14/event=0xd3,umask=0x2,name=hbm_tagchk_miss_clean/",
    ],
    "B": COMMON + [
        "uncore_m2m/event=0x1f,umask=0x4,name=m2m_nm_ufill_hit_clean/",
        "uncore_m2m/event=0x24,umask=0x308,name=m2m_imc_reads_ddr_as_mem/",
        "uncore_m2m/event=0x24,umask=0x310,name=m2m_imc_reads_ddr_as_cache/",
        "uncore_m2m/event=0x25,umask=0x1810,name=m2m_imc_writes_all/",
        "uncore_imc/event=0xd3,umask=0x4,name=imc_tagchk_miss_dirty/",
        "uncore_imc/event=0xd3,umask=0x8,name=imc_tagchk_nm_rd_hit/",
        "uncore_type_14/event=0xd3,umask=0x4,name=hbm_tagchk_miss_dirty/",
        "uncore_type_14/event=0xd3,umask=0x8,name=hbm_tagchk_nm_rd_hit/",
    ],
}
WORKLOADS = [("read", 8), ("read", 96), ("triad", 8), ("triad", 96)]


def session(events, log):
    d = Path(tempfile.mkdtemp(prefix="probe-", dir="/tmp"))
    ctl, ack = d / "ctl", d / "ack"
    os.mkfifo(ctl, 0o600)
    os.mkfifo(ack, 0o600)
    fds = [os.open(ack, os.O_RDONLY | os.O_NONBLOCK)]
    holder = subprocess.Popen(["sleep", "86400"])
    cmd = ["sudo", "-n", "/usr/bin/perf", "stat", "-a", "--per-socket", "--no-merge", "-D", "-1", "-x", ",",
           "--control", f"fifo:{ctl},{ack}", "-e", ",".join(events),
           "--", "tail", "-s", "0.1", f"--pid={holder.pid}", "-f", "/dev/null"]
    fh = log.open("w")
    p = subprocess.Popen(cmd, stdout=fh, stderr=subprocess.STDOUT)
    deadline = time.monotonic() + 60
    while "Events disabled" not in log.read_text(errors="replace"):
        if p.poll() is not None or time.monotonic() > deadline:
            raise RuntimeError(log.read_text()[-3000:])
        time.sleep(0.05)
    fds.append(os.open(ctl, os.O_WRONLY | os.O_NONBLOCK))

    def stop():
        holder.kill()
        holder.wait()
        p.wait(timeout=60)
        fh.close()
        for fd in fds:
            os.close(fd)
        for f in (ctl, ack):
            f.unlink()
        d.rmdir()

    return dict(HWBENCH_PERF_CTL=str(ctl), HWBENCH_PERF_ACK=str(ack)), stop


def idle(events, log, seconds=3.0):
    """Background over a fixed window: enable, sleep, disable through the FIFOs."""
    env, stop = session(events, log)
    with open(env["HWBENCH_PERF_CTL"], "w") as c, open(env["HWBENCH_PERF_ACK"]) as a:
        c.write("enable\n"); c.flush(); a.readline()
        t0 = time.monotonic(); time.sleep(seconds); t1 = time.monotonic()
        c.write("disable\n"); c.flush(); a.readline()
    stop()
    return t1 - t0


summary = {}
for name, events in SETS.items():
    summary[f"{name}_idle_s"] = idle(events, OUT / f"{name}_idle.csv")
    for kind, gib in WORKLOADS:
        tag = f"{name}_{kind}_{gib}"
        env, stop = session(events, OUT / f"{tag}.csv")
        run_env = dict(os.environ, OMP_NUM_THREADS="56", OMP_PROC_BIND="close", OMP_PLACES="cores", **env)
        cmd = ["numactl", "--physcpubind=0-55", "--membind=0", HW, "--kind", kind, "--seconds", "1",
               "--repetitions", "3", "--k", "1", "--bytes", str(gib * GIB)]
        t0 = time.time()
        r = subprocess.run(cmd, env=run_env, capture_output=True, text=True)
        stop()
        (OUT / f"{tag}.json").write_text(r.stdout)
        summary[tag] = dict(rc=r.returncode, wall_s=time.time() - t0, err=r.stderr[-500:])
        print(tag, summary[tag], flush=True)
(OUT / "summary.json").write_text(json.dumps(summary, indent=2))
print("PROBE DONE", flush=True)
