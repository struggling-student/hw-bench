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
