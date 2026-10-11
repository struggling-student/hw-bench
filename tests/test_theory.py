import math

from hwbench.theory import Theory


def test_published_peaks_follow_from_the_toml():
    t = Theory.load()
    assert t.cores_per_socket == 56 and t.sockets == 2
    # 56 cores at the 1.9 GHz base clock.
    assert math.isclose(t.peak_gops("fp64", 56), 56 * 32 * 1.9)
    assert math.isclose(t.peak_gops("amx_bf16", 56) / 1000, 109.0, rel_tol=0.01)
    assert t.peak_gops("amx_int8", 56) == 2 * t.peak_gops("amx_bf16", 56)
    assert t.peak_gops("fp32", 56) == 2 * t.peak_gops("fp64", 56)
    assert math.isclose(t.memory_gbs("ddr"), 307.2)
    assert t.memory_gbs("hbm", 2) == 2000


def test_every_path_states_where_its_number_came_from():
    t = Theory.load()
    for key in t.data["isa"]:
        peak = t.isa(key)
        assert peak.status in {"vendor", "derived"} and peak.basis
    assert t.isa_for("int8_amx_peak", "int8").key == "amx_int8"
