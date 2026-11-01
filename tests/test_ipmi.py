"""The BMC's wall power: listing parser, log windows, and the join into the records."""

from __future__ import annotations

import gzip
import json

import pytest

from hwbench import ipmi, process

LISTING = """\
Host Power               | 0x0        | discrete   | 0x0080| na        | na        | na        | na        | na        | na
Sys Power                | 400.000    | Watts      | ok    | na        | na        | na        | na        | na        | na
CPU Power                | 270.000    | Watts      | ok    | na        | na        | na        | na        | na        | na
Mem Power                | 43.000     | Watts      | ok    | na        | na        | na        | na        | na        | na
Chassis Power            | 2950.000   | Watts      | ok    | na        | na        | na        | na        | na        | na
CPU 1 Temp               | 40.000     | degrees C  | ok    | na        | na        | na        | na        | na        | na
"""


def test_parse_keeps_sys_cpu_and_mem_power_only():
    assert ipmi.parse_sensor(LISTING) == {"sys": 400.0, "cpu": 270.0, "mem": 43.0}
    assert ipmi.parse_sensor("Sys Power | na | Watts | ns\nMem Power | 12 | Watts |") == {"mem": 12.0}
    assert ipmi.parse_sensor("") == {}


def test_command_is_the_one_listing_sudoers_allows():
    assert ipmi.command() == ["sudo", "-n", "/usr/bin/ipmitool", "sensor"]


def _readings(start=100.0, n=10, sys=400.0):
    # Six-second listings, each taking 1 s.
    return [dict(t0=start + 6 * i, t1=start + 6 * i + 1, sys=sys + i, cpu=270.0, mem=43.0) for i in range(n)]


def test_window_takes_the_listings_entirely_inside_and_needs_two():
    readings = _readings()
    fields = ipmi.window_fields(readings, 100.0, 140.0)  # listings 0..6 (the seventh ends at 137)
    assert fields["ipmi_readings"] == 7 and fields["ipmi_sys_power_w"] == pytest.approx(403.0)
    assert fields["ipmi_cpu_power_w"] == 270.0 and fields["ipmi_mem_power_w"] == 43.0
    assert ipmi.window_fields(readings, 100.0, 104.0) == {}  # only one listing fits
    assert ipmi.window_fields(readings, 100.5, 112.5) == {}  # the first starts before it, one fits
    # A listing partly outside the window is not used.
    assert ipmi.window_fields(readings, 100.5, 120.0)["ipmi_readings"] == 3


def test_log_roundtrip_plain_gzip_and_damaged_lines(tmp_path):
    rows = _readings(n=3)
    text = "\n".join(json.dumps(r) for r in rows) + '\n{"broken\n'
    plain = tmp_path / "ipmi.log"
    plain.write_text(text)
    gz = tmp_path / "ipmi.log.gz"
    gz.write_bytes(gzip.compress(text.encode()))
    assert ipmi.read_log(plain) == rows and ipmi.read_log(gz) == rows
    assert ipmi.read_log(tmp_path / "missing.log") == []


def _record(offset_ns):
    return dict(realtime_offset_ns=offset_ns)


def test_process_joins_the_log_on_the_wall_clock_of_the_record():
    offset = 1_000_000_000_000  # CLOCK_REALTIME minus CLOCK_MONOTONIC, ns
    # start and end are monotonic ns; the wall time of 100 s .. 140 s is start + offset.
    row = dict(start_ns=int(100e9 - offset), end_ns=int(140e9 - offset))
    out = process._ipmi_fields(row, _record(offset), _readings())
    assert out["ipmi_readings"] == 7
    assert process._ipmi_fields(row, {}, _readings()) == {}  # a record without the offset
    assert process._ipmi_fields(row, _record(offset), None) == {}


def test_every_ipmi_column_is_in_the_measurement_schema_and_the_aggregates():
    for name in ipmi.FIELDS:
        assert name in process.FIELDS and name in process.SYSTEM_RATES


def test_record_span_gives_a_wall_figure_to_samples_shorter_than_two_listings():
    offset = 1_000_000_000_000
    readings = _readings(start=100.0, n=10)
    # Five back-to-back 10 s samples (a real listing takes about 6 s, so one sample rarely holds two).
    span = (int(100e9 - offset), int(150e9 - offset))
    out = process._ipmi_record_fields(span, _record(offset), readings)
    assert out["ipmi_record_readings"] == 9 and "ipmi_record_sys_power_w" in out
    assert process._ipmi_record_fields(None, _record(offset), readings) == {}
    for name in ipmi.RECORD_FIELDS:
        assert name in process.FIELDS and name in process.SYSTEM_RATES
