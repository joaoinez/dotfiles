#!/bin/bash
set -euo pipefail


if ! [ -d ~/.bin ]; then
  echo "Installing bun"

  curl -fsSL https://bun.sh/install | bash
fi