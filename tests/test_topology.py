from hwbench.topology import _expand_cpu_list


def test_expand_cpu_list() -> None:
    assert _expand_cpu_list("0-2,8,10-11") == [0, 1, 2, 8, 10, 11]
