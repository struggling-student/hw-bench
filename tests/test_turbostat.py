"""The privileged turbostat sampler: its output, the clock offset and per-sample windows."""

from __future__ import annotations

import pytest

from hwbench import process, turbostat

HEADER = "Time_Of_Day_Seconds\tPackage\tCPU\tBzy_MHz\tPkgWatt\tRAMWatt\tUncMHz\tPkgTmp"


def _run(t0: float, n: int, pkg0: float = 300.0, ram0: float = 40.0, unc0: int = 1600) -> list[str]:
    """One turbostat run: n intervals of 0.1 s, each a summary row and one row per package."""

    lines = [HEADER]
    for j in range(1, n + 1):
        t = t0 + 0.1 * j
        lines.append(f"{t:.6f}\t-\t-\t1900\t{pkg0 + 100:.2f}\t{ram0 + 20:.2f}\t{unc0}\t50")
        lines.append(f"{t:.6f}\t0\t0\t1900\t{pkg0:.2f}\t{ram0:.2f}\t{unc0}\t55")
        lines.append(f"{t + 0.00004:.6f}\t1\t56\t800\t100.00\t20.00\t800\t40")
    return lines


def _turbo(offset_s: float = 1000.0) -> dict:
    # Two runs of 2 s with a 0.3 s gap between them; monotonic = time of day - offset.
    text = "\n".join(_run(offset_s + 10.0, 20) + _run(offset_s + 12.3, 20, pkg0=350.0, unc0=1500)) + "\n"
    return dict(interval_s=0.1, offset_ns=int(offset_s * 1e9), rows=turbostat.parse(text))


def test_parse_keeps_package_rows_only():
    rows = turbostat.parse("\n".join(_run(0.0, 3)))
    assert len(rows) == 6
    assert {r["package"] for r in rows} == {0, 1}
    first = rows[0]
    assert first["pkg_w"] == pytest.approx(300.0) and first["uncore_mhz"] == 1600 and first["pkg_c"] == 55


def test_parse_ignores_noise_and_partial_rows():
    text = "turbostat version 2023.11.07\n" + HEADER + "\n1.0\t0\t0\t1900\n" + "\n".join(_run(0.0, 1)[1:])
    assert len(turbostat.parse(text)) == 2


def test_intervals_inside_a_sample_and_the_gap_between_runs():
    turbo = _turbo()
    # Sample from monotonic 10.0 s to 11.0 s: intervals ending 10.2..10.9 lie inside
    # (10.1 starts at 10.0, inside the 5 ms edge margin; 11.0 ends on the edge).
    sample = dict(start_ns=int(10.0e9), end_ns=int(11.0e9))
    (w,) = turbostat.windows(turbo, dict(samples=[sample]))
    own = [r for r in w["rows"] if r["package"] == 0]
    assert len(own) == 8
    fields = turbostat.sample_fields(w, 1.0, 0)
    assert fields["ts_pkg_power_w"] == pytest.approx(300.0)
    assert fields["ts_uncore_ghz"] == pytest.approx(1.6)
    assert fields["ts_energy_pkg_j"] == pytest.approx(400.0)  # both packages, over 1 s
    assert fields["ts_system_power_w"] == pytest.approx(460.0)
    assert fields["ts_intervals"] == 8
    assert fields["ts_coverage"] == pytest.approx(0.8, abs=0.01)


def test_per_package_columns():
    (w,) = turbostat.windows(_turbo(), dict(samples=[dict(start_ns=int(10.0e9), end_ns=int(11.0e9))]))
    fields = turbostat.sample_fields(w, 1.0, 0)
    assert fields["ts_pkg_power_w_s0"] == pytest.approx(300.0) and fields["ts_pkg_power_w_s1"] == pytest.approx(100.0)
    assert fields["ts_ram_power_w_s1"] == pytest.approx(20.0)
    assert fields["ts_uncore_ghz_s0"] == pytest.approx(1.6) and fields["ts_uncore_ghz_s1"] == pytest.approx(0.8)
    assert fields["ts_bzy_mhz_s0"] == pytest.approx(1900) and fields["ts_bzy_mhz_s1"] == pytest.approx(800)
    # The computing package's columns are the per-package ones of that package.
    assert fields["ts_pkg_power_w"] == fields["ts_pkg_power_w_s0"]
    assert fields["ts_system_power_w"] == pytest.approx(sum(fields[f"ts_{n}_power_w_s{p}"] for n in ("pkg", "ram") for p in (0, 1)))
    assert set(fields) <= set(turbostat.FIELDS)


def test_process_node_power_and_per_socket_fallback():
    per_socket = {f"ts_{n}_power_w_s{p}": v for (n, p), v in {("pkg", 0): 300.0, ("pkg", 1): 150.0, ("ram", 0): 40.0, ("ram", 1): 10.0}.items()}
    ts = dict(ts_pkg_power_w=300.0, ts_ram_power_w=40.0, ts_uncore_ghz=1.6, ts_uncore_ghz_s0=1.6, ts_uncore_ghz_s1=1.4, **per_socket)
    filled = process._power_source(ts)
    assert filled["power_source"] == "turbostat"
    assert filled["pkg_power_w_s1"] == 150.0 and filled["uncore_ghz_s1"] == 1.4
    assert filled["node_power_w"] == pytest.approx(500.0)
    # perf rows keep their own per-socket columns and get the node power from them.
    perf = process._power_source(dict(pkg_power_w=310.0, pkg_power_w_s0=310.0, pkg_power_w_s1=140.0, ram_power_w_s0=30.0, ram_power_w_s1=5.0))
    assert perf == dict(power_source="perf", node_power_w=pytest.approx(485.0))
    # Missing DRAM power on one socket: no node figure rather than a partial sum.
    assert "node_power_w" not in process._power_source(dict(pkg_power_w=310.0, pkg_power_w_s0=310.0, pkg_power_w_s1=140.0))


def test_first_row_of_a_run_starts_one_interval_before_its_end():
    turbo = _turbo()
    # The second run's first interval ends at 12.4 s; it must not reach back across the gap.
    rows = [r for r in turbostat._intervals(turbo) if r["package"] == 0]
    second = [r for r in rows if r["end_ns"] > 12.35e9][0]
    assert second["start_ns"] == pytest.approx(12.3e9, abs=1e3)


def test_sample_spanning_two_runs_averages_by_time():
    turbo = _turbo()
    sample = dict(start_ns=int(11.5e9), end_ns=int(13.0e9))
    (w,) = turbostat.windows(turbo, dict(samples=[sample]))
    fields = turbostat.sample_fields(w, 1.5, 0)
    # 4 intervals at 300 W (11.6-12.0 ending inside), 6 at 350 W (12.4-12.9 inside).
    assert 300.0 < fields["ts_pkg_power_w"] < 350.0
    assert fields["ts_pkg_power_w"] == pytest.approx((4 * 300 + 6 * 350) / 10, rel=0.01)


def test_no_sampler_no_fields():
    assert turbostat.windows(None, dict(samples=[{}])) == [None]
    assert turbostat.sample_fields(None, 1.0, 0) == {}


def test_process_fills_power_from_turbostat_only_without_perf():
    ts = dict(ts_pkg_power_w=300.0, ts_ram_power_w=40.0, ts_uncore_ghz=1.6, ts_energy_pkg_j=400.0,
              ts_energy_ram_j=60.0, ts_system_power_w=460.0)
    filled = process._power_source(dict(ts))
    assert filled["power_source"] == "turbostat"
    assert filled["pkg_power_w"] == 300.0 and filled["uncore_ghz"] == 1.6
    perf = process._power_source(dict(ts, pkg_power_w=310.0))
    assert perf == dict(power_source="perf")
    assert process._power_source({}) == {}


def test_command_never_runs_a_workload_as_root():
    cmd = turbostat.command()
    assert cmd[:3] == ["sudo", "-n", "/usr/bin/turbostat"]
    assert "--num_iterations" in cmd and "--interval" in cmd
    # Every argument is an option or an option's value: no command for turbostat to fork.
    values = {cmd[i + 1] for i, a in enumerate(cmd) if a in ("-c", "--interval", "--num_iterations", "--show")}
    assert all(a.startswith("-") or a in values for a in cmd[3:])
