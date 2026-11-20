"""Reviewable source for notebook 07, imported by build_notebooks.py."""
from nbformat.v4 import new_code_cell as code
from nbformat.v4 import new_markdown_cell as md


def cells(setup):
    return [
        md("""# 07 — Bandwidth configuration for a socket-local inference engine

**Question.** Which core allocation and memory placement gives the highest useful read bandwidth on one socket and on two? When does DDR add useful capacity at an acceptable scan rate?

Here **HBM-only** means explicit HBM allocation in **Flat mode**, not the BIOS HBM-only mode. All rates are decimal GB/s; capacity is binary GiB. Read-only results are compared with read-only results. The older 28/28 experiment is Triad and is shown separately. Historical evidence, new measurements and inference bounds have separate labels. No power limits, clocks or firmware settings are changed.

**Status.** The new study uses an exclusive Slurm allocation on the dedicated Flat node. Until the manifest contains a completed campaign with three accepted launches per configuration, this notebook reports the existing evidence and labels the core-split optimum **unmeasured**. The current selection and acceptance status appear below."""),
        code(setup("07_bandwidth_configuration")),
        code("""import json
import plotly.express as px
import plotly.graph_objects as go
from plotly.subplots import make_subplots
from hwbench import bandwidth_search as search
OUT = ROOT / 'data/processed/bandwidth_search'
OUT.mkdir(parents=True, exist_ok=True)
manifest = json.loads((ROOT / 'configs/bandwidth_search.json').read_text())
runs, audit = search.load_study(ROOT)
ranked = search.ranking(runs, manifest['minimum_launches'])
runs.to_csv(OUT / 'launches.csv', index=False)
audit.to_csv(OUT / 'acceptance.csv', index=False)
ranked.to_csv(OUT / 'ranking.csv', index=False)
say('**New study:** ' + (f'{len(runs)} accepted launch records; {len(ranked)} configurations have at least three accepted launches.'
    if len(runs) else 'no completed campaign selected; the split optimum remains unmeasured.'))
if len(audit):
    table(audit.groupby(['campaign', 'accepted', 'reason'], dropna=False).size().reset_index(name='records'))
"""),
        md("""## 1. What the existing measurements establish

The counted `udual` campaign measures both sockets simultaneously and includes one-socket controls. The spanning-process campaign tests first-touch placement against page interleaving. Its NUMA policy permits both local HBM nodes; each pinned worker initializes its private buffer, so first touch can place that buffer near the worker. Interleaving distributes pages without preserving that ownership.

These historical runs predate this new search and have their original launch methods. They establish a placement baseline, not a newly measured split optimum."""),
        code("""u = report.load_uncore(mode='flat')
hist = []
for tier in ('hbm', 'ddr'):
    for scope, note, label, sockets in [
        ('single', f'u5_dual_read_{tier}_control', '1S local', 1),
        ('dual', f'u5_dual_read_{tier}', '2S local workers', 2)]:
        q = u[u.notes.eq(note) & u.socket_scope.eq(scope) & u.kernel.eq('read')]
        assert len(q), (note, scope)
        hist.append(dict(configuration=label, tier=tier, gbs=q.bandwidth_gbs.median(),
                         low=q.bandwidth_gbs.min(), high=q.bandwidth_gbs.max(),
                         installed_hbm_gib=64*sockets if tier == 'hbm' else 0,
                         tested_pool_gib=8*sockets,
                         campaign=';'.join(sorted(q.campaign_id.unique()))))
for tier in ('hbm', 'ddr'):
    for placement in ('firsttouch', 'interleave'):
        q = ext[ext.memory_mode.eq('flat') & ext.socket_scope.eq('span') & ext.kernel.eq('read')
                & ext.memory_target.eq(tier) & ext.notes.eq('span_' + placement)]
        assert len(q)
        hist.append(dict(configuration='2S one process · ' + placement, tier=tier,
                         gbs=q.bandwidth_gbs.median(), low=q.bandwidth_gbs.min(), high=q.bandwidth_gbs.max(),
                         installed_hbm_gib=128 if tier == 'hbm' else 0, tested_pool_gib=16,
                         campaign=';'.join(sorted(q.campaign_id.unique()))))
history = pd.DataFrame(hist)
history.to_csv(OUT / 'historical_read.csv', index=False)
table(history, 2)
fig = px.bar(history, x='configuration', y='gbs', color='tier', barmode='group',
             color_discrete_map={'hbm': '#e07828', 'ddr': '#2878b5'}, template='plotly_white',
             error_y=history.high-history.gbs, error_y_minus=history.gbs-history.low,
             labels={'gbs': 'Useful read bandwidth (GB/s)'},
             hover_data=['campaign', 'tested_pool_gib'], title='Historical read bandwidth · simultaneous workers and placement')
figure(fig, 'historical_placement')
h1 = history.query("tier == 'hbm' and configuration == '1S local'").iloc[0]
h2 = history.query("tier == 'hbm' and configuration == '2S local workers'").iloc[0]
hi = history.query("tier == 'hbm' and configuration == '2S one process · interleave'").iloc[0]
say(f'**Finding.** Local HBM sustains {h1.gbs:.0f} GB/s on the one-socket control and {h2.gbs:.0f} GB/s with both sockets active. '
    f'The two-socket interleaved process sustains {hi.gbs:.0f} GB/s. The local two-socket result is {h2.gbs/hi.gbs:.2f}× faster; '
    'two sockets do not inherently require remote HBM reads.')
"""),
        code("""remote = report.local_remote_table(ext, thesis)
table(remote[['label', 'local', 'remote', 'remote_over_local', 'source']], 3)
split = thesis[thesis.memory_mode.eq('flat') & thesis.notes.eq('split') & thesis.kernel.eq('triad')]
split_table = split.groupby(['socket', 'socket_scope', 'memory_target', 'threads'], dropna=False).bandwidth_gbs.agg(['median', 'min', 'max']).reset_index()
table(split_table, 2)
split_table.to_csv(OUT / 'historical_triad_split.csv', index=False)
say('**Scope.** The 28 HBM + 28 DDR core result above measures Triad traffic, including stores. It cannot determine the optimum for read-only weight streaming. '
    'Notebook 06 provides the counted evidence of the 350 W package limit and remote-HBM read amplification; this search measures power, clocks and controller traffic for each allocation. Its heavy-load package medians are higher and this campaign has no recorded PL1 readback.')
"""),
        md("""## 2. Experiment matrix and acceptance

The matrix tests both sockets separately, then both together. Each socket has 56 physical cores, with disjoint HBM and DDR worker sets. HBM core counts are 0, 8, 14, 20, 28, 36, 42, 48, 52, 54 and 56; DDR takes the complement. A second placement spreads selected HBM workers across the socket. Pure-tier runs vary active core count. Asymmetric dual-socket allocations include dedicating one socket to HBM and the other to DDR. Local and swapped-remote controls, one spanning process, and large pools are separate cases.

Each configuration has **three independent launches**, with rotated/reversed order. Each launch contains six synchronized two-second windows; the first is discarded, leaving five steady windows. Byte counts are summed over the same matched window and divided by its enclosing actual duration. At least 95% common overlap is required; observed overlap is exported. The full observed range across windows and launches is shown, not a confidence interval. Configurations with fewer than three accepted launches cannot win. An overlapping range does not establish superiority. A final dense search near a candidate winner is needed if the coarse grid leaves the choice unresolved.

Each worker streams a private, initialized allocation, with strict NUMA binding. `/proc/<pid>/numa_maps` checks anonymous-page residency; at least 99% must be on the allowed memory nodes. The new read variant checks the deadline every 4 MiB and retains its cursor across windows, so large DDR shards cannot inflate the timing tail or repeatedly read a small prefix. Checksums cover the visited bytes. Both legacy and chunked variants run fresh pure-tier controls. At least two allocated-shard traversals must occur during the retained windows. Controller traffic, package power, uncore clocks, UPI traffic and power-limit cycles are collected with the existing base perf event set. A controller rate is a physical traffic diagnostic; useful bytes determine the bandwidth ranking, particularly for duplicated remote reads.

Small-pool runs allocate 8 GiB per socket, divided in proportion to worker count. HBM-only capacity checks use 32 and 56 GiB per socket (up to **112 GiB actually allocated**). Mixed runs allocate 160 and 256 GiB across the node, with 56 GiB HBM per socket and the remainder in DDR. The installed 128 GiB HBM is not all available to model weights: KV cache, activations and runtime allocations need headroom. No claim of full-capacity performance is made from an 8 GiB buffer."""),
        code("""topology_path = ROOT / 'data/raw/flat/flat-udual-20261031T182202Z/system/topology.json'
topology = json.loads(topology_path.read_text())
plan = search.matrix(topology)
preview = pd.DataFrame([dict(name=c['name'], family=c['family'], layout=c['layout'],
    placement='; '.join(f"S{m['socket']} {len(m['cpus'])} cores → {m['tier']} on memory socket {m['memory_socket']} ({m['bytes']/2**30:.1f} GiB)" for m in c['members'])) for c in plan])
preview.to_csv(OUT / 'planned_matrix.csv', index=False)
table(preview.groupby('family').size().reset_index(name='configurations'))
say(f"**Planned:** {len(plan)} configurations × 3 launches × 5 retained windows. Each node allocation is exclusive and topology must verify Flat mode and SMT off. The CPU/NUMA mapping comes from discovery, not assumed node numbers.")
"""),
        md("""## 3. Single-socket and dual-socket split results

The ranking below uses medians of independent launch medians. The component curves are measured concurrently; adding two separately measured maxima would ignore their shared power budget. Pure HBM and pure DDR are endpoints. The capacity tests and the deliberately remote/interleaved cases do not participate in the small-pool local split ranking."""),
        code("""if ranked.empty:
    say('**Pending measurements.** No read-only core-split winner is claimed. The historical 28/28 Triad point is not substituted for this experiment.')
else:
    candidates = ranked[ranked.family.isin(['split', 'core_scaling', 'asymmetric'])]
    table(candidates[['name', 'socket_set', 'gbs', 'low', 'high', 'hbm_gbs', 'ddr_gbs', 'fixed_shard_gbs', 'overlap', 'launches']])
    sp = ranked[ranked.family.eq('split')].copy()
    sp['scope'] = sp.socket_set.map({'0': 'socket 0', '1': 'socket 1', '0,1': 'both sockets'})
    fig = px.line(sp.sort_values('hbm_cores'), x='hbm_cores', y='gbs', color='scope', line_dash='layout', markers=True,
                  error_y=sp.sort_values('hbm_cores').high-sp.sort_values('hbm_cores').gbs,
                  error_y_minus=sp.sort_values('hbm_cores').gbs-sp.sort_values('hbm_cores').low,
                  labels={'hbm_cores': 'HBM cores per socket (DDR = 56 − HBM)', 'gbs': 'Useful read bandwidth (GB/s)'})
    figure(fig, 'core_split')
    winners = candidates.sort_values('gbs', ascending=False).groupby('socket_set', as_index=False).first()
    table(winners[['name', 'socket_set', 'gbs', 'low', 'high', 'fixed_shard_gbs']])
    for winner in winners.itertuples():
        peers = candidates[(candidates.socket_set == winner.socket_set) & (candidates.name != winner.name)]
        tied = peers[peers.high >= winner.low]
        baseline = sp[(sp.socket_set == winner.socket_set) & sp.hbm_cores.eq(56) & sp.layout.eq('blocked')]
        gain = winner.gbs/baseline.gbs.iloc[0]-1 if len(baseline) else np.nan
        say(f'**Best observed, sockets {winner.socket_set}:** `{winner.name}`, {winner.gbs:.1f} GB/s '
            f'[{winner.low:.1f}, {winner.high:.1f}], {gain:+.1%} relative to the matched pure-HBM endpoint. '
            f'{len(tied)} alternatives overlap its observed range. This is the best tested allocation, not proof of a global optimum.')
    controls = ranked[ranked.family.eq('kernel_control')]
    checks = []
    for control in controls.itertuples():
        q = sp[(sp.socket_set == control.socket_set) & sp.hbm_cores.eq(control.hbm_cores) & sp.layout.eq('blocked')]
        if len(q):
            checks.append(dict(control=control.name, chunked_over_legacy=q.gbs.iloc[0]/control.gbs))
    table(pd.DataFrame(checks))
    say('The legacy/chunked ratios above bound the kernel change for the fresh pure-tier endpoints. A material change requires interpretation before comparing these rates with historical figures.')
"""),
        md(r"""## 4. Capacity and complete-shard scan rate

Summed work per second can hide an imbalanced model partition. For simultaneously processed shards with byte fractions $f_i$ and measured useful rates $B_i$, the optimistic completion rate is

$$ B_{\rm parallel}=\min_i B_i/f_i. $$

For stages executed serially, it is $B_{\rm serial}=1/\sum_i(f_i/B_i)$. The new table calculates the parallel bound using every worker group's actual allocated byte fraction and rates from the **same window**, including socket asymmetry. This is a modeled fixed-shard completion rate inferred from concurrent streams, not a measured inference result. An inference engine needs a complete, balanced partition of every streamed tensor to approach aggregate bandwidth. With HBM and DDR read together, the optimal byte fraction follows their simultaneous useful rates, subject to each tier's capacity; a 50/50 core split does not imply a good 50/50 byte split.

The large-pool points test allocated capacity directly. They use 8 GiB headroom per HBM socket for this benchmark; the inference engine's actual headroom must be budgeted separately."""),
        code("""cap = ranked[ranked.family.isin(['capacity', 'capacity_mixed'])] if len(ranked) else pd.DataFrame()
if cap.empty:
    say('**Capacity measurements pending.** The 128 GiB installed HBM capacity is known from topology; sustained streaming over 112 GiB is not yet established by this study.')
else:
    table(cap[['name', 'working_set_gib', 'gbs', 'fixed_shard_gbs', 'hbm_gbs', 'ddr_gbs', 'overlap']])
    long = cap.melt(id_vars=['name', 'working_set_gib', 'socket_set'], value_vars=['gbs', 'fixed_shard_gbs'], var_name='metric', value_name='GB/s')
    fig = px.scatter(long, x='working_set_gib', y='GB/s', color='socket_set', symbol='metric', hover_data=['name'],
                     labels={'working_set_gib': 'Actually allocated working set (GiB)'},
                     title='Capacity versus aggregate traffic and complete-shard bound')
    figure(fig, 'capacity_bandwidth')
"""),
        md("""## 5. Power and remote-traffic diagnostics

Power/clock correlation explains a measured tradeoff but does not by itself establish causation. A mixed allocation competes for the same socket package budget; its bandwidth cannot be predicted by adding pure HBM and pure DDR runs. The controller/useful ratio can rise for remote HBM because repeated physical reads do not add useful model bytes. Node power includes both packages and DDR energy, including the static floor; it is not wall power."""),
        code("""if len(ranked) and 'system_power_w' in ranked:
    diagnostic = ranked[ranked.family.isin(['split', 'asymmetric', 'remote'])].copy()
    diagnostic['node_pj_per_useful_byte'] = diagnostic.system_power_w / diagnostic.gbs * 1000
    cols = ['name', 'gbs', 'system_power_w', 'node_pj_per_useful_byte', 'controller_over_useful',
            'uncore_ghz_s0', 'uncore_ghz_s1', 'pcu_power_limit_frac_s0', 'pcu_power_limit_frac_s1', 'uncore_coverage']
    table(diagnostic[[c for c in cols if c in diagnostic]])
    if 'controller_over_useful' in diagnostic:
        fig = px.scatter(diagnostic, x='system_power_w', y='gbs', color='family', symbol='socket_set',
                         hover_data=['name', 'controller_over_useful'],
                         labels={'system_power_w': 'Node package + DDR power (W)', 'gbs': 'Useful read GB/s'})
        figure(fig, 'power_bandwidth')
else:
    say('New per-configuration power and controller diagnostics are pending; notebook 06 contains the historical evidence.')
"""),
        md("""## 6. How to use this in the inference engine

**Recommended baseline from the existing measurements:** pin workers to their socket, allocate and initialize each worker's weight shard in that socket's HBM, and preserve ownership when reading it. Two processes are an easy way to make ownership explicit; a single process can also work when its pinned workers initialize and access their own shards. Do not initialize a shared weight pool on one socket and then have both sockets stream it. Discover the CPU/NUMA mapping on each node. Intel's [Xeon Max tuning guide](https://cdrdv2-public.intel.com/787743/354227-intel-xeon-cpu-max-series-configuration-and-tuning-guide-rev3.pdf) describes Flat-mode NUMA placement; the rates here come from this repository's measurements.

There are three distinct deployment cases:

| Engine layout | Weight capacity | What two sockets can improve |
|---|---|---|
| Two independent replicas, one per socket | Each model must fit one socket; weights are duplicated | Aggregate request throughput; a single request stays on one socket |
| Tensor shards processed in parallel, socket-local weights | Up to the combined HBM pool after runtime/KV reservations | Per-step streaming rate can approach the concurrent sum if shards are balanced; activation exchange/reductions cost time |
| Different layers assigned to different sockets | Combined HBM pool after reservations | Capacity; one request executes the layers sequentially, so its latency does not automatically halve. Multiple requests may fill a pipeline |

The mixed-tier cases retain useful aggregate bandwidth at larger working sets. Their fixed-shard rates can be much lower when worker throughput differs from the stored byte fractions. For a fixed model, choose the tested configuration that maximizes **complete-shard rate**, meets its per-tier/per-socket capacity constraints and leaves room for KV cache and activations. The fastest aggregate configuration is a separate answer. Overlapping ranges limit what this allocation establishes about the ordering of close candidates.

Streaming is a hardware ceiling. Validate the selected candidates in the engine with the intended model, quantization, batch and context length, reporting tokens/s, per-token latency and communication time. This study does not measure layer scheduling, tensor-parallel collectives, dynamic page migration, DDR-to-HBM staging copies, or inference overlap. Local placement avoids remote **weight** reads; it does not remove necessary cross-socket activation communication."""),
        code("""components = u[u.notes.eq('u5_dual_read_hbm') & u.socket_scope.eq('dual_component')].groupby('socket').bandwidth_gbs.median()
serial_bound = 1 / sum(0.5/components.loc[s] for s in (0., 1.))
say(f'**Existing-data inference bounds (not tokens/s measurements):** balanced parallel HBM streaming reaches the measured concurrent ceiling of '
    f'{h2.gbs:.0f} GB/s; equal-weight serial layer stages have an optimistic equivalent scan rate of {serial_bound:.0f} GB/s. '
    'Both layouts may use the two sockets’ combined capacity, but they have different per-request latency implications.')
if ranked.empty:
    say('**Decision status:** use socket-local HBM as the deployment baseline. The single-socket split optimum, dual-socket mixed optimum and full-pool capacity results remain pending. No numerical core split is invented.')
else:
    say('**Decision status:** the tables rank the completed tested configurations and show their observed envelopes. Select capacity-compatible candidates for an engine experiment; overlapping candidates or untested neighboring splits require confirmation before claiming a unique optimum.')
"""),
    ]
