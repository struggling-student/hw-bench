#!/usr/bin/env python3
"""One-shot follow-up: wait for selected results, retrieve, rebuild notebook 07.

Run locally with the private environment already sourced. No credentials are
requested, stored or retried. A stopped SSH master stops this follow-up.
"""
from __future__ import annotations

import argparse
import json
import os
import shlex
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument("--timeout-hours", type=float, default=8)
    args = parser.parse_args()
    alias = os.environ["HW_BENCH_LOGIN_ALIAS"]
    remote_root = os.environ["HW_BENCH_RESULTS_ROOT"]
    manifest = json.loads((ROOT / "configs/bandwidth_search.json").read_text())
    status = ROOT / "data/processed/bandwidth_search/followup.json"
    status.parent.mkdir(parents=True, exist_ok=True)

    def update(state, detail):
        status.write_text(json.dumps(dict(state=state, detail=detail, pid=os.getpid(),
                                         campaigns=manifest["campaigns"],
                                         updated_utc=datetime.now(timezone.utc).isoformat()), indent=2) + "\n")
        print(state + ": " + detail, flush=True)

    deadline = time.monotonic() + args.timeout_hours * 3600
    try:
        update("waiting", "Waiting for completed selected campaigns before retrieval")
        while True:
            master = subprocess.run(["ssh", "-O", "check", alias], capture_output=True)
            if master.returncode:
                raise RuntimeError("SSH master unavailable; establish the existing connection locally before restarting the follow-up")
            complete = True
            for campaign in manifest["campaigns"]:
                if Path(campaign).name != campaign:
                    raise ValueError("Campaign must be a directory name")
                marker = remote_root + "/" + campaign + "/COMPLETED"
                probe = subprocess.run(["ssh", "-o", "BatchMode=yes", alias,
                                        "test -f " + shlex.quote(marker)], capture_output=True)
                if probe.returncode not in (0, 1):
                    raise RuntimeError("Result check failed; no password retry attempted")
                complete &= probe.returncode == 0
            if complete:
                break
            if time.monotonic() >= deadline:
                raise TimeoutError("Selected campaigns did not complete within the follow-up time limit")
            time.sleep(60)
        update("retrieving", "Selected campaigns completed; fetching and scrubbing raw records")
        current = json.loads((ROOT / "configs/bandwidth_search.json").read_text())
        if current["campaigns"] != manifest["campaigns"]:
            raise RuntimeError("Campaign selection changed; restart the follow-up for the new selection")
        subprocess.run(["bash", "scripts/fetch_bandwidth_search.sh"], cwd=ROOT, check=True)
        update("rendering", "Rebuilding and executing notebook 07 from the completed measurements")
        subprocess.run([sys.executable, "scripts/build_notebooks.py", "07_bandwidth_configuration"], cwd=ROOT, check=True)
        subprocess.run([sys.executable, "scripts/execute_notebooks.py", "notebooks/07_bandwidth_configuration.ipynb"], cwd=ROOT, check=True)
        import pandas as pd
        ranked = pd.read_csv(ROOT / "data/processed/bandwidth_search/ranking.csv")
        eligible = ranked[ranked.family.isin(["split", "core_scaling", "asymmetric"])]
        if set(eligible.socket_set.astype(str)) != {"0", "1", "0,1"}:
            raise RuntimeError("No eligible local ranking for every socket scope; inspect the acceptance audit")
        update("complete", "Measured tables and notebook generated; inspect acceptance audit and observed ranges before choosing a configuration")
    except BaseException as exc:
        update("failed", str(exc))
        raise


if __name__ == "__main__":
    main()
