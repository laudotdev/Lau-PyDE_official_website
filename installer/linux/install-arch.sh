#!/usr/bin/env bash
set -euo pipefail
command -v pacman >/dev/null 2>&1 || { echo "Error: pacman is required." >&2; exit 1; }
sudo pacman -S --needed --noconfirm python python-pip python-virtualenv python-pyside6
exec "$(dirname "${BASH_SOURCE[0]}")/install-generic.sh" --generic "$@"
