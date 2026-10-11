import math

import pandas as pd
import pytest

from hwbench.llm_adapter import MODEL_SPECS, from_online_points, to_frame


def fixture():
    return pd.DataFrame(
        [
            dict(
                model="llama31_8b",
                configuration_id="vllm_bf16",
                backend="vllm",
                concurrency=4,
                isl=512,
                osl=512,
                output_tok_s_mean=20.0,
                mem_total_gbs_mean=400.0,
                amx_busy_frac_mean=0.3,
                ghz_effective_per_core_mean=2.0,
            ),
            dict(
                model="llama32_1b",
                configuration_id="llama_cpp_bf16",
                backend="llama_cpp",
                concurrency=1,
                isl=128,
                osl=128,
                output_tok_s_mean=100.0,
                mem_total_gbs_mean=0.0,
                amx_busy_frac_mean=0.0,
                ghz_effective_per_core_mean=float("nan"),
            ),
        ]
    )


def test_llama31_8b_decode_operations_are_about_two_per_parameter():
    spec = MODEL_SPECS["llama31_8b"]
    assert math.isclose(spec.linear_params / 1e9, 6.98, abs_tol=0.01)
    assert math.isclose(spec.decode_ops_per_token / 1e9, 2 * 7.50, abs_tol=0.05)


def test_points_use_the_matching_isa_path_and_pmu_bytes():
    vllm, cpp = from_online_points(fixture())
    assert (vllm.isa_path, vllm.precision) == ("amx_bf16", "bf16")
    assert cpp.isa_path == "avx512_bf16"  # llama.cpp has no BF16 AMX kernel
    assert vllm.bytes_source == "pmu_l3miss" and vllm.cores == 55
    expected_gops = 20 * MODEL_SPECS["llama31_8b"].decode_ops_per_token / 1e9
    assert math.isclose(vllm.gops, expected_gops)
    assert math.isclose(vllm.intensity, expected_gops / 400)
    assert math.isnan(cpp.intensity)  # no traffic -> undefined, not zero or inf
    assert cpp.ghz_effective is None and vllm.amx_busy_frac == 0.3


def test_frame_and_validation():
    frame = to_frame(from_online_points(fixture()))
    assert list(frame.isa_path) == ["amx_bf16", "avx512_bf16"]
    with pytest.raises(ValueError, match="unknown configuration"):
        from_online_points(fixture().assign(configuration_id="mystery"))
    with pytest.raises(ValueError, match="lack columns"):
        from_online_points(fixture().drop(columns=["mem_total_gbs_mean"]))
