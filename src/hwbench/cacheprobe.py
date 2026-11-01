"""Reading the Cache-node probe (``data/probes/uncore-cache-*/``): which events count the memory-side cache.

The probe (``probe.py``) runs one ``perf stat -a --per-socket --no-merge -x,`` session per event
set and workload, so every PMU instance is its own line::

    S0,1,745173224,,ddr_cas_rd,5440458535,100.00,,

The line carries the event's ``name=`` alias but not its instance, so the instances of one
event appear in perf's order (``uncore_m2m_0..3`` then ``_14..17``, ``uncore_imc_0..7``,
``uncore_type_14_0..31``).  ``parse_no_merge`` keeps them as a list per socket and event;
``accounting`` sums them and checks the identities the Cache event set rests on.
"""

from __future__ import annotations

import json
from collections import defaultdict
from pathlib import Path
from typing import Any

DDR_CAS, HBM_CAS, LINE = 64, 32, 64


def parse_no_merge(text: str) -> dict[tuple[str, str], list[float | None]]:
    """Per-instance counts, ``{(socket, event): [instance 0, instance 1, ...]}``; ``None`` is not counted."""

    out: dict[tuple[str, str], list[float | None]] = defaultdict(list)
    for line in text.splitlines():
        fields = line.strip().split(",")
        if len(fields) < 7 or not fields[0].startswith("S"):
            continue
        try:
            value: float | None = float(fields[2])
        except ValueError:
            value = None
        out[(fields[0], fields[4])].append(value)
    return dict(out)


def total(counts: dict[tuple[str, str], list[float | None]], event: str, socket: str = "S0") -> float:
    return sum(v for v in counts.get((socket, event), []) if v is not None)


def instances(counts: dict[tuple[str, str], list[float | None]], event: str, socket: str = "S0") -> dict[str, int]:
    """How many instances of an event exist and how many counted anything."""

    values = counts.get((socket, event), [])
    return dict(instances=len(values), nonzero=sum(1 for v in values if v), uncounted=sum(1 for v in values if v is None))


def accounting(set_a: dict, set_b: dict | None, record: dict[str, Any]) -> dict[str, float]:
    """The identities behind the Cache event set for one workload, socket 0.

    ``set_a`` is the parsed session of event set A (tag hit and clean miss on the HBM controllers),
    ``set_b`` that of set B (dirty miss) from a second launch of the same workload, ``record`` the
    benchmark's JSON.  Lookups are hit + clean miss + dirty miss; all the ratios should be 1:

    * ``lookups_over_hbm_read``: lookups x 64 B over the HBM read CAS x 32 B;
    * ``far_over_misses``: DDR read CAS x 64 B over (clean + dirty misses) x 64 B;
    * ``victims_over_dirty``: DDR write CAS over dirty misses (each is written back);
    * ``lookups_over_modeled``: lookups x 64 B over the kernel's modeled bytes of its samples plus
      ``warmup_passes`` more working sets (the counters run through the warm-up).
    """

    dirty = total(set_b, "hbm_tagchk_miss_dirty") if set_b else float("nan")
    hit, clean = total(set_a, "hbm_tagchk_hit"), total(set_a, "hbm_tagchk_miss_clean")
    lookups = hit + clean + dirty
    ddr_rd, ddr_wr, hbm_rd = total(set_a, "ddr_cas_rd"), total(set_a, "ddr_cas_wr"), total(set_a, "hbm_cas_rd")
    modeled = sum(s["modeled_bytes"] for s in record["samples"])
    ws = record["working_set_bytes"]
    return dict(
        hit_rate=hit / lookups,
        hit_rate_from_ddr=1 - ddr_rd / lookups,
        lookups_over_hbm_read=lookups * LINE / (hbm_rd * HBM_CAS),
        far_over_misses=ddr_rd * DDR_CAS / ((clean + dirty) * LINE),
        victims_over_dirty=ddr_wr / dirty if dirty else float("nan"),
        lookups_over_modeled=lookups * LINE / modeled,
        lookups_over_modeled_with_warmup=lookups * LINE / (modeled + 2 * ws),
    )


def summarize(probe_dir: Path) -> dict[str, Any]:
    """Event-instance table and the accounting for every workload of a probe directory (``out/``)."""

    out: dict[str, Any] = {"events": {}, "workloads": {}}
    for path in sorted(probe_dir.glob("A_*_*.csv")) + sorted(probe_dir.glob("B_*_*.csv")):
        counts = parse_no_merge(path.read_text())
        for (socket, event), values in counts.items():
            if socket == "S0" and path.name in ("A_read_96.csv", "B_read_96.csv"):
                out["events"][event] = instances(counts, event)
    for path in sorted(probe_dir.glob("A_*_*.json")):
        tag = path.stem.removeprefix("A_")
        if tag == "idle":
            continue
        a = parse_no_merge((probe_dir / f"A_{tag}.csv").read_text())
        b_path = probe_dir / f"B_{tag}.csv"
        b = parse_no_merge(b_path.read_text()) if b_path.exists() else None
        out["workloads"][tag] = accounting(a, b, json.loads(path.read_text()))
    return out
