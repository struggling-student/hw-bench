"""The visual language: one meaning per colour, and figures that build from minimal data."""

from hwbench import plotting
from hwbench.roofline import Ceiling, MemoryCeiling, WorkloadPoint


def test_every_colour_has_one_meaning():
    families = {
        "memory": {v for k, v in plotting.CONFIG_COLORS.items() if k != "theory"},
        "compute": set(plotting.PATH_COLORS.values()),
        "shape": set(plotting.SHAPE_COLORS.values()),
    }
    seen: dict[str, str] = {}
    for family, colours in families.items():
        for colour in colours:
            assert colour not in seen, f"{colour} used for both {seen[colour]} and {family}"
            seen[colour] = family
    assert len(plotting.PATH_COLORS) == len(set(plotting.PATH_COLORS.values())) == 6


def test_roofline_labels_ceilings_on_the_line_and_keeps_symbols_per_series():
    memory = [
        MemoryCeiling("measured_peak", "hbm", "read", 500.0, "1S", "flat"),
        MemoryCeiling("measured_peak", "ddr", "read", 250.0, "1S", "flat"),
    ]
    compute = [
        Ceiling("measured_peak", "bf16", "amx_bf16", 100_000.0, "GOP/s", "1S", "flat", 56),
        Ceiling("theoretical", "bf16", "amx_bf16", 95_000.0, "GOP/s", "1S", "flat", 56, ghz=1.9),
    ]
    points = [
        WorkloadPoint("a", "bf16", "amx_bf16", 100.0, 1.0, mode="flat", memory_target=t, provenance={"series": "s"})
        for t in ("hbm", "ddr")
    ]
    fig = plotting.roofline_figure(compute, memory, points)
    texts = [a.text for a in fig.layout.annotations]
    assert any("AMX BF16 100.0 TOP/s" in t for t in texts) and any("vendor at 1.9 GHz" in t for t in texts)
    symbols = {t.name: t.marker.symbol for t in fig.data if t.mode == "markers" and t.name}
    assert len(set(symbols.values())) == 1  # same series, same symbol on both tiers
    unnamed = [t for t in fig.data if t.mode == "lines" and t.name is None]
    assert unnamed and all(t.showlegend is False for t in unnamed)
