#!/usr/bin/env bash
set -euo pipefail
command -v dnf >/dev/null 2>&1 || { echo "Error: dnf is required." >&2; exit 1; }
sudo dnf install -y python3 python3-pip python3-virtualenv
exec "$(dirname "${BASH_SOURCE[0]}")/install-generic.sh" --generic "$@"
