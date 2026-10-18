#!/usr/bin/env bash
set -euo pipefail
command -v apt-get >/dev/null 2>&1 || { echo "Error: apt-get is required." >&2; exit 1; }
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv
exec "$(dirname "${BASH_SOURCE[0]}")/install-generic.sh" --generic "$@"
