"""The privileged uncore session: perf's CSV, the disable anchor and per-sample windows."""

from __future__ import annotations

import pytest

from hwbench import uncore

EVENTS = uncore.EVENT_SETS["base"]


def _interval(t: float, run_ms: float, hbm_rd: float, pkg: float, scale: float = 1.0) -> list[str]:
    """One interval of a two-socket session; socket 1 is idle."""

    lines = []
    for socket, factor in (("S0", 1.0), ("S1", 0.0)):
        values = dict(
            ddr_cas_rd=1000 * factor, ddr_cas_wr=1000 * factor, hbm_cas_rd=hbm_rd * factor,
            hbm_cas_wr=0, cha_clockticks=200e6 * run_ms / 100, pcu_clockticks=100e6,
        )
        for name, value in values.items():
            lines.append(f"{t:.9f},{socket},1,{value},,{name},{run_ms * 1e6:.0f},100.00,,")
        lines.append(f"{t:.9f},{socket},1,{pkg * scale:.2f},Joules,power/energy-pkg/,{run_ms * 1e6:.0f},100.00,,")
    return lines


def _log(n: int = 12, tail_run_ms: float = 40.0) -> str:
    """Disabled at start, enabled for n intervals of 100 ms, then the tail."""

    lines = ["Events disabled", "0.100000000,S0,1,<not counted>,,ddr_cas_rd,0,100.00,,", "Events enabled"]
    for j in range(n):
        lines += _interval(0.5 + 0.1 * j, 100.0, 1e9, 30.0)
    lines.append("Events disabled")
    lines += _interval(0.5 + 0.1 * n, tail_run_ms, 0.4e9, 12.0)
    lines += [f"{0.6 + 0.1 * n:.9f},S0,1,<not counted>,,ddr_cas_rd,0,100.00,,"]
    return "\n".join(lines) + "\n"


def test_parse_keeps_the_enabled_period_and_the_tail():
    parsed = uncore.parse(_log(), EVENTS)
    assert parsed["complete"]
    assert len(parsed["times"]) == 13
    assert parsed["counts"]["0"]["hbm_cas_rd"][-1] == pytest.approx(0.4e9)
    assert parsed["run_ns"]["0"]["cha_clockticks"][-1] == pytest.approx(40e6)
    assert parsed["counts"]["0"]["energy_pkg_j"][0] == pytest.approx(30.0)


def test_anchor_places_the_disable_on_the_monotonic_clock():
    parsed = uncore.parse(_log(), EVENTS)
    # perf clock 0 = monotonic 10 s; disable at perf 0.5 + 1.1 + 0.04 = 1.64 s.
    disable = 10e9 + 1.64e9
    offset = uncore.anchor_offset_ns(parsed, [int(disable - 2e6), int(disable + 2e6)])
    assert offset == pytest.approx(10e9, abs=1e3)


def test_samples_take_only_intervals_entirely_inside():
    parsed = uncore.parse(_log(), EVENTS)
    disable = 10e9 + 1.64e9
    result = dict(
        uncore_disable_ns=[int(disable), int(disable)],
        # Intervals end at perf 0.5, 0.6, ... 1.6; the sample covers perf 0.62-1.13.
        samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)],
    )
    (window,) = uncore.windows(parsed, result)
    assert window["intervals"] == 4  # 0.7-0.8, 0.8-0.9, 0.9-1.0, 1.0-1.1
    assert window["seconds"] == pytest.approx(0.4)
    fields = uncore.sample_fields(window, 0.51, 0, 0)
    # 1e9 HBM CAS of 32 bytes and 2000 DDR CAS of 64 bytes per 100 ms.
    assert fields["ctrl_hbm_read_bytes"] == pytest.approx(4e9 * 32 * 0.51 / 0.4)
    assert fields["ctrl_bandwidth_gbs"] == pytest.approx((1e9 * 32 + 2000 * 64) / 0.1 / 1e9)
    assert fields["pkg_power_w"] == pytest.approx(300.0)
    assert fields["uncore_ghz"] == pytest.approx(2.0)


def test_per_socket_columns_keep_the_idle_socket_visible():
    parsed = uncore.parse(_log(), EVENTS)
    disable = 10e9 + 1.64e9
    result = dict(
        uncore_disable_ns=[int(disable), int(disable)],
        samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)],
    )
    (window,) = uncore.windows(parsed, result)
    # Socket 1 draws the same package energy in the fixture and moves no controller bytes.
    window["counts"][1]["pcu_clockticks"] = 100e6 * 4
    window["counts"][1]["pcu_power_limit_cycles"] = 100e6
    fields = uncore.sample_fields(window, 0.51, 0, 0)
    assert fields["pkg_power_w_s0"] == pytest.approx(300.0)
    assert fields["pkg_power_w_s1"] == pytest.approx(300.0)
    assert fields["uncore_ghz_s0"] == pytest.approx(2.0) and fields["uncore_ghz_s1"] == pytest.approx(2.0)
    assert fields["ctrl_bytes_s1"] == 0  # the fixture moves no bytes on socket 1
    assert fields["ctrl_bytes_s0"] == pytest.approx(fields["ctrl_bytes"])
    assert fields["pcu_power_limit_frac_s1"] == pytest.approx(0.25)
    assert "pcu_power_limit_frac_s0" not in fields
    assert set(uncore.SOCKET_FIELDS) >= {k for k in fields if k.endswith(("_s0", "_s1"))}
    # The computing-socket columns are the per-socket ones of that socket.
    assert fields["pkg_power_w"] == fields["pkg_power_w_s0"]
    assert fields["uncore_ghz"] == fields["uncore_ghz_s0"]
    on_one = uncore.sample_fields(window, 0.51, 1, 0)
    assert on_one["pkg_power_w"] == on_one["pkg_power_w_s1"]


def test_no_anchor_no_attribution():
    parsed = uncore.parse(_log(), EVENTS)
    result = dict(samples=[dict(start_ns=1, end_ns=2)])
    assert uncore.windows(parsed, result) == [None]
    assert uncore.sample_fields(None, 1.0, 0, 0) == {}


def test_an_incomplete_session_is_not_anchored():
    text = _log().split("Events disabled\n", 2)
    truncated = "Events disabled\n" + text[1]  # never disabled
    parsed = uncore.parse(truncated, EVENTS)
    assert not parsed["complete"]
    assert uncore.anchor_offset_ns(parsed, [1, 2]) is None


def _cache_log(hit=900.0, clean=80.0, dirty=20.0, n=12):
    """The base session's log with the HBM tag-lookup events of the Cache set on socket 0 (socket 1 idle)."""

    text = []
    for line in _log(n).splitlines():
        text.append(line)
        fields = line.split(",")
        if len(fields) > 5 and fields[5] == "hbm_cas_wr":
            for name, value in (("hbm_tag_hit", hit), ("hbm_tag_miss_clean", clean), ("hbm_tag_miss_dirty", dirty)):
                fields = list(fields)
                fields[3], fields[5] = str(value if fields[1] == "S0" else 0), name
                text.append(",".join(fields))
    return "\n".join(text) + "\n"


def test_cache_event_set_adds_only_the_hbm_tag_lookups_to_the_base_set():
    base, cache = uncore.EVENT_SETS["base"], uncore.EVENT_SETS["cache"]
    assert set(cache) - set(base) == {"hbm_tag_hit", "hbm_tag_miss_clean", "hbm_tag_miss_dirty"}
    assert all(cache[k] == base[k] for k in base)
    # M2M tag events counted nothing on hbm13 (probe 2026-10-31): none of them is in the set.
    assert not any("m2m" in e and "tag" in e for e in cache.values())
    assert uncore.INTERVAL_MS["cache"] == 100
    command = uncore.perf_command(cache, uncore.Path("/tmp/c"), uncore.Path("/tmp/a"), 1, 100)
    assert "uncore_type_14/event=0xd3,umask=0x4,name=hbm_tag_miss_dirty/" in command[command.index("-e") + 1]


def test_cache_fields_follow_the_probe_accounting():
    events = uncore.EVENT_SETS["cache"]
    parsed = uncore.parse(_cache_log(), events)
    assert parsed["counts"]["0"]["hbm_tag_hit"][0] == 900.0
    disable = 10e9 + 1.64e9
    result = dict(uncore_disable_ns=[int(disable), int(disable)],
                  samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)])
    (window,) = uncore.windows(parsed, result)
    fields = uncore.sample_fields(window, 0.51, 0, 0)
    scale = 0.51 / 0.4
    assert fields["served_bytes"] == pytest.approx(4 * 1000 * 64 * scale)
    assert fields["nm_hit_bytes"] == pytest.approx(4 * 900 * 64 * scale)
    assert fields["nm_hit_rate"] == pytest.approx(0.9)
    # Far traffic is the DDR reads (2 x 1000 CAS of 64 B per 100 ms, socket 0), the fills the HBM writes (0 here).
    assert fields["far_bytes"] == pytest.approx(4 * 1000 * 64 * scale)
    assert fields["nm_fill_bytes"] == 0
    assert set(uncore.CACHE_FIELDS) <= set(fields)


def test_base_set_leaves_the_cache_columns_empty():
    parsed = uncore.parse(_log(), uncore.EVENT_SETS["base"])
    disable = 10e9 + 1.64e9
    result = dict(uncore_disable_ns=[int(disable), int(disable)],
                  samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)])
    (window,) = uncore.windows(parsed, result)
    assert not set(uncore.CACHE_FIELDS) & set(uncore.sample_fields(window, 0.51, 0, 0))


def test_cache_probe_accounting_identities():
    from hwbench import cacheprobe

    def lines(event, values, socket="S0"):
        return "\n".join(f"{socket},1,{v},,{event},1000,100.00,," for v in values)

    # 1000 lookups per hit/miss mix: 900 hits, 80 clean and 20 dirty misses, spread over 4 controllers.
    a = "\n".join([lines("hbm_tagchk_hit", [225] * 4), lines("hbm_tagchk_miss_clean", [20] * 4), lines("ddr_cas_rd", [25] * 4),
                   lines("ddr_cas_wr", [5] * 4), lines("hbm_cas_rd", [1000 * 64 / 32 / 4] * 4)])
    b = lines("hbm_tagchk_miss_dirty", [5] * 4)
    record = dict(samples=[dict(modeled_bytes=1000 * 64)], working_set_bytes=0)
    acc = cacheprobe.accounting(cacheprobe.parse_no_merge(a), cacheprobe.parse_no_merge(b), record)
    assert acc["hit_rate"] == pytest.approx(0.9) and acc["hit_rate_from_ddr"] == pytest.approx(0.9)
    for key in ("lookups_over_hbm_read", "far_over_misses", "victims_over_dirty", "lookups_over_modeled"):
        assert acc[key] == pytest.approx(1.0), key
    parsed = cacheprobe.parse_no_merge(a + "\nS0,1,<not counted>,,m2m_tag_miss,0,100.00,,")
    assert cacheprobe.instances(parsed, "hbm_tagchk_hit") == dict(instances=4, nonzero=4, uncounted=0)
    assert cacheprobe.instances(parsed, "m2m_tag_miss") == dict(instances=1, nonzero=0, uncounted=1)


def test_cache_mode_fields_from_the_base_counters_alone():
    parsed = uncore.parse(_log(), uncore.EVENT_SETS["base"])
    disable = 10e9 + 1.64e9
    result = dict(uncore_disable_ns=[int(disable), int(disable)],
                  samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)])
    (window,) = uncore.windows(parsed, result)
    fields = uncore.sample_fields(window, 0.51, 0, 0, cache_mode=True)
    scale = 0.51 / 0.4
    # HBM reads are 1e9 CAS of 32 B per 100 ms, DDR reads 1000 CAS of 64 B (socket 0; socket 1 is idle in the fixture).
    assert fields["served_bytes"] == pytest.approx(4 * 1e9 * 32 * scale)
    assert fields["far_bytes"] == pytest.approx(4 * 1000 * 64 * scale)
    assert fields["nm_hit_rate"] == pytest.approx(1 - 1000 * 64 / (1e9 * 32))
    assert fields["nm_hit_bytes"] == pytest.approx(fields["served_bytes"] - fields["far_bytes"])
    assert fields["nm_fill_bytes"] == pytest.approx(4 * 0 * scale)
    # Flat mode never gets the memory-side-cache columns.
    assert not set(uncore.CACHE_FIELDS) & set(uncore.sample_fields(window, 0.51, 0, 0))


def test_tag_events_win_over_the_base_counters_when_both_exist():
    parsed = uncore.parse(_cache_log(hit=900.0, clean=80.0, dirty=20.0), uncore.EVENT_SETS["cache"])
    disable = 10e9 + 1.64e9
    result = dict(uncore_disable_ns=[int(disable), int(disable)],
                  samples=[dict(start_ns=int(10.62e9), end_ns=int(11.13e9), elapsed_seconds=0.51)])
    (window,) = uncore.windows(parsed, result)
    assert uncore.sample_fields(window, 0.51, 0, 0, cache_mode=True)["nm_hit_rate"] == pytest.approx(0.9)
