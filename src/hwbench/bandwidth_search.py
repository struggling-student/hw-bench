"""Explicit core/memory placements and auditable simultaneous read bandwidth.

This study has its own raw schema and selection manifest; historical campaigns
are not relabelled as measurements of the new matrix.
"""
from __future__ import annotations

import json
import math
from pathlib import Path

GIB = 2**30
SPLITS = (0, 8, 14, 20, 28, 36, 42, 48, 52, 54, 56)


def placements(topology, sockets, hbm_cores, gib=8, layout="blocked", remote=False):
    """Disjoint, explicit CPU sets; memory nodes come from discovered topology."""
    if not 0 <= hbm_cores <= 56:
        raise ValueError("HBM core count must be in 0..56")
    members = []
    for sid in sockets:
        sock = next(s for s in topology["sockets"] if s["socket"] == sid)
        cpus = sock["logical_cpus"]
        if len(cpus) != 56 or sock["physical_cores"] != 56:
            raise ValueError("This experiment requires 56 physical cores per socket, SMT off")
        if layout == "striped":
            # Evenly spaced HBM cores, with an exactly complementary DDR set.
            indices = {math.floor(i * 56 / hbm_cores) for i in range(hbm_cores)}
        elif layout == "blocked":
            indices = set(range(hbm_cores))
        else:
            raise ValueError(layout)
        memsock = next(s for s in topology["sockets"] if s["socket"] == (1 - sid if remote else sid))
        for tier, selected in (("hbm", [c for i, c in enumerate(cpus) if i in indices]),
                               ("ddr", [c for i, c in enumerate(cpus) if i not in indices])):
            if selected:
                nodes = memsock[tier + "_nodes"]
                if len(nodes) != 1:
                    raise ValueError("Expected one NUMA node per socket/tier")
                members.append(dict(socket=sid, tier=tier, cpus=selected,
                                    memory_socket=memsock["socket"], nodes=nodes,
                                    policy="membind", bytes=int(gib * GIB * len(selected) / 56)))
    return members


def matrix(topology):
    if topology["memory_mode"] != "flat" or topology["threads_per_core"] != 1:
        raise ValueError("Explicit HBM/DDR search requires Flat mode with SMT off")
    cases = []

    def add(name, members, family, h=None, layout="blocked"):
        cases.append(dict(name=name, family=family, hbm_cores=h, layout=layout, members=members))

    for sockets in ([0], [1], [0, 1]):
        scope = "s" + "".join(map(str, sockets))
        for h in SPLITS:
            add(f"{scope}_split_h{h:02d}", placements(topology, sockets, h), "split", h)
        for h in (14, 28, 42, 48, 52):
            add(f"{scope}_striped_h{h:02d}", placements(topology, sockets, h, layout="striped"),
                "split", h, "striped")
        for tier, cores in (("hbm", (14, 28, 42, 48, 52)), ("ddr", (8, 14, 28))):
            for n in cores:
                members = placements(topology, sockets, 56 if tier == "hbm" else 0)
                for m in members:
                    m["cpus"] = m["cpus"][:n]
                add(f"{scope}_{tier}_cores{n:02d}", members, "core_scaling")
        for h in (0, 56):
            add(f"{scope}_remote_{'hbm' if h else 'ddr'}",
                placements(topology, sockets, h, remote=True), "remote", h)
        for gib in (32, 56):
            add(f"{scope}_hbm_capacity{gib}", placements(topology, sockets, 56, gib=gib), "capacity", 56)
        for h in (0, 56):
            add(f"{scope}_legacy_{'hbm' if h else 'ddr'}", placements(topology, sockets, h), "kernel_control", h)
            cases[-1]["read_chunk_bytes"] = 0

    for h0, h1 in ((42, 48), (48, 42), (48, 52), (52, 48), (52, 56), (56, 52),
                   (48, 56), (56, 48), (56, 0), (0, 56), (56, 28), (28, 56)):
        add(f"s01_asymmetric_h{h0}_{h1}", placements(topology, [0], h0) + placements(topology, [1], h1),
            "asymmetric")

    # Single process: first touch within the allowed local-tier nodes versus interleaving.
    for tier in ("hbm", "ddr"):
        members = placements(topology, [0, 1], 56 if tier == "hbm" else 0)
        for policy in ("membind", "interleave"):
            m = dict(socket=None, memory_socket=None, tier=tier,
                     cpus=sum((x["cpus"] for x in members), []),
                     nodes=sum((x["nodes"] for x in members), []), policy=policy, bytes=16 * GIB)
            add(f"span_{tier}_{policy}", [m], "span", 56 if tier == "hbm" else 0)
    # Same 112 GiB HBM resident pool; DDR expands node working set above HBM capacity.
    for total in (160, 256):
        for h in (28, 42, 48, 52):
            members = placements(topology, [0, 1], h)
            for m in members:
                m["bytes"] = int((56 if m["tier"] == "hbm" else total / 2 - 56) * GIB)
            add(f"s01_capacity{total}_h{h}", members, "capacity_mixed", h)
    return cases


def summarize_record(record, minimum_overlap=.95):
    """Use matched steady windows, never sum peaks from different windows.

    Work counts cover each participant's full actual window. Divide their sum
    by the enclosing window, with >=95% common overlap, rather than attributing
    work outside the intersection to it.
    """
    import statistics as st

    case = record["case"]
    results = record["results"]
    if len(results) != len(case["members"]) or any(not r.get("valid") for r in results):
        raise ValueError("Invalid or incomplete participant group")
    resident_pages = record.get("resident_pages", [])
    if len(resident_pages) != len(results):
        raise ValueError("Missing resident-page observation for a participant")
    for pages, member in zip(resident_pages, case["members"]):
        total = sum(pages.values())
        allowed = sum(count for node, count in pages.items() if int(node) in member["nodes"])
        if not total or allowed / total < .99:
            raise ValueError("Observed anonymous pages violate the requested memory-node binding")
    counts = {len(r["samples"]) for r in results}
    if len(counts) != 1 or min(counts) < 6:
        raise ValueError("Need one discarded window and at least five steady windows")
    for result in results:
        if sum(s["modeled_bytes"] for s in result["samples"][1:]) < 2 * result["working_set_bytes"]:
            raise ValueError("Insufficient work to stream the complete allocated shard twice")
    rates, tier_rates, fractions, fixed_rates = [], [], [], []
    for i in range(1, min(counts)):
        samples = [r["samples"][i] for r in results]
        planned = {s["planned_start_ns"] for s in samples}
        lo, hi = min(s["start_ns"] for s in samples), max(s["end_ns"] for s in samples)
        inner = min(s["end_ns"] for s in samples) - max(s["start_ns"] for s in samples)
        overlap = inner / (hi - lo)
        if len(planned) != 1 or overlap < minimum_overlap:
            raise ValueError("Unmatched or insufficiently overlapping windows")
        duration = (hi - lo) / 1e9
        rates.append(sum(s["modeled_bytes"] for s in samples) / duration / 1e9)
        tier_rates.append({t: sum(s["modeled_bytes"] for s, m in zip(samples, case["members"])
                                    if m["tier"] == t) / duration / 1e9 for t in ("hbm", "ddr")})
        total = sum(r["working_set_bytes"] for r in results)
        fixed_rates.append(min((s["modeled_bytes"] / duration / 1e9) /
                               (r["working_set_bytes"] / total) for s, r in zip(samples, results)))
        fractions.append(overlap)
    row = dict(name=case["name"], family=case["family"], layout=case["layout"],
               hbm_cores=case["hbm_cores"], launch=record["launch"],
               sockets=len({s for m in case["members"] for s in
                            ([m["socket"]] if m["socket"] is not None else [0, 1])}),
               socket_set=",".join(map(str, sorted({s for m in case["members"]
                                                   for s in ([m["socket"]] if m["socket"] is not None else [0, 1])}))),
               gbs=st.median(rates), low=min(rates), high=max(rates),
               hbm_gbs=st.median(r["hbm"] for r in tier_rates),
               ddr_gbs=st.median(r["ddr"] for r in tier_rates),
               overlap=min(fractions), windows=len(rates),
               working_set_gib=sum(r["working_set_bytes"] for r in results) / GIB)
    # A fixed shard must finish on every tier. Its completion rate differs from
    # aggregate work/sec when the tier work fractions differ from stored bytes.
    row["fixed_shard_gbs"] = st.median(fixed_rates)
    if record.get("uncore"):
        from hwbench import uncore
        fields = [uncore.sample_fields(w, s["elapsed_seconds"], 0, None)
                  for w, s in zip(uncore.windows(record["uncore"], results[0]), results[0]["samples"])][1:]
        for key in ("ctrl_bandwidth_gbs", "system_power_w", "pkg_power_w_s0", "pkg_power_w_s1",
                    "uncore_ghz_s0", "uncore_ghz_s1", "pcu_power_limit_frac_s0", "pcu_power_limit_frac_s1",
                    "uncore_coverage", "upi_tx_data_flits"):
            values = [f[key] for f in fields if f.get(key) is not None]
            if values:
                row[key] = st.median(values)
        if row.get("ctrl_bandwidth_gbs"):
            row["controller_over_useful"] = row["ctrl_bandwidth_gbs"] / row["gbs"]
    return row


def load_study(root: Path):
    import pandas as pd

    manifest = json.loads((root / "configs/bandwidth_search.json").read_text())
    rows, audit = [], []
    for campaign in manifest["campaigns"]:
        base = root / "data/raw/bandwidth_search" / campaign
        if not (base / "COMPLETED").exists():
            audit.append(dict(campaign=campaign, record="", accepted=False, reason="campaign incomplete"))
            continue
        metadata = json.loads((base / "campaign.json").read_text())
        expected = {f"{case['name']}_r{launch}.json": (case, launch)
                    for case in metadata["matrix"] for launch in range(1, metadata["launches"] + 1)}
        actual = {p.name for p in (base / "records").glob("*.json")}
        if actual != expected.keys():
            raise ValueError(f"{campaign}: record set differs from declared matrix")
        for path in sorted((base / "records").glob("*.json")):
            record = json.loads(path.read_text())
            try:
                if (record.get("case"), record.get("launch")) != expected[path.name]:
                    raise ValueError("Recorded case or launch differs from the campaign manifest")
                row = summarize_record(record)
            except ValueError as exc:
                audit.append(dict(campaign=campaign, record=path.name, accepted=False, reason=str(exc)))
            else:
                rows.append(dict(campaign=campaign, source=str(path.relative_to(root)), **row))
                audit.append(dict(campaign=campaign, record=path.name, accepted=True, reason=""))
    return pd.DataFrame(rows), pd.DataFrame(audit, columns=["campaign", "record", "accepted", "reason"])


def ranking(rows, minimum_launches=3):
    """Median of independent launch medians, with the full observed envelope."""
    import pandas as pd

    if rows.empty:
        return pd.DataFrame()
    summary = rows.groupby(["campaign", "name"], as_index=False).agg(
        gbs=("gbs", "median"), low=("low", "min"), high=("high", "max"),
        launches=("launch", "nunique"), hbm_gbs=("hbm_gbs", "median"), ddr_gbs=("ddr_gbs", "median"),
        fixed_shard_gbs=("fixed_shard_gbs", "median"), overlap=("overlap", "min"),
        working_set_gib=("working_set_gib", "median"), family=("family", "first"),
        socket_set=("socket_set", "first"), sockets=("sockets", "first"),
        layout=("layout", "first"), hbm_cores=("hbm_cores", "first"))
    for key in ("ctrl_bandwidth_gbs", "controller_over_useful", "system_power_w",
                "pkg_power_w_s0", "pkg_power_w_s1", "uncore_ghz_s0", "uncore_ghz_s1",
                "pcu_power_limit_frac_s0", "pcu_power_limit_frac_s1", "uncore_coverage"):
        if key in rows:
            summary = summary.merge(rows.groupby(["campaign", "name"], as_index=False)[key].median(),
                                    on=["campaign", "name"])
    return summary[summary.launches >= minimum_launches].sort_values("gbs", ascending=False).reset_index(drop=True)
