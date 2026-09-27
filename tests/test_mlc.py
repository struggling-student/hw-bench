from hwbench.mlc import parse_matrix


def test_parse_matrix() -> None:
    text = """Numa node       0       1\n0 45000 21000\n1 20800 45500\n"""
    assert parse_matrix(text)["1"]["0"] == 20800
