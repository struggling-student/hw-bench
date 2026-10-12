#!/usr/bin/env bash
# Intel MLC is proprietary and is downloaded from Intel rather than vendored.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
URL="${MLC_URL:-https://downloadmirror.intel.com/926327/mlc_v3.13.tgz}"
DEST="${MLC_DEST:-${ROOT}/build/mlc}"
while [[ $# -gt 0 ]]; do case "$1" in --url) URL=$2; shift 2;; --dest) DEST=$2; shift 2;; *) exit 2;; esac; done
mkdir -p "${DEST}"
archive="$(mktemp -t mlc-download.XXXXXX.tgz)"
trap 'rm -f "${archive}"' EXIT
curl -fsSL --max-time 60 -A 'Mozilla/5.0' -o "${archive}" "${URL}"
tar tzf "${archive}" >/dev/null
tar xzf "${archive}" -C "${DEST}"
binary="$(find "${DEST}" -type f -name mlc -path '*Linux*' | head -1)"
[[ -n "${binary}" ]] || { echo 'MLC Linux binary not found' >&2; exit 1; }
chmod +x "${binary}"
printf '%s\n' "${binary}"
