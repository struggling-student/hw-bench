#!/usr/bin/env bash
set -euo pipefail

SCRIPT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${SCRIPT_ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
BUILD_DIR="${SCRIPT_ROOT}/build"

die() { printf 'ERROR: %s\n' "$*" >&2; exit 2; }
stamp() { date -u +%Y%m%dT%H%M%SZ; }

require_binaries() {
  for binary in stream_triad compute_peak amx_peak intensity; do
    [[ -x "${BUILD_DIR}/${binary}" ]] || die "missing ${BUILD_DIR}/${binary}; run scripts/build_benchmarks.sh"
  done
}

topology_value() {
  local topology=$1 expression=$2
  python3 - "$topology" "$expression" <<'PY'
import json, sys
data=json.load(open(sys.argv[1]))
print(eval(sys.argv[2], {"__builtins__": {}}, {"d": data}))
PY
}

cpu_list_for() {
  local topology=$1 socket=$2 count=$3
  python3 - "$topology" "$socket" "$count" <<'PY'
import json, sys
d=json.load(open(sys.argv[1])); socket=int(sys.argv[2]); count=int(sys.argv[3])
cpus=next(s["logical_cpus"] for s in d["sockets"] if s["socket"]==socket)[:count]
print(",".join(map(str,cpus)))
PY
}

socket_field() {
  local topology=$1 socket=$2 field=$3
  python3 - "$topology" "$socket" "$field" <<'PY'
import json, sys
d=json.load(open(sys.argv[1])); socket=int(sys.argv[2]); field=sys.argv[3]
s=next(s for s in d["sockets"] if s["socket"]==socket)
value=s[field]
print(value[0] if isinstance(value,list) and value else value)
PY
}

record_run() {
  python3 -m hwbench.record "$@"
}
