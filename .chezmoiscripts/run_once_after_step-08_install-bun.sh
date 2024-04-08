#!/bin/bash
set -euo pipefail


if ! [ -d ~/.bun ]; then
  echo "Installing bun"

  curl -fsSL https://bun.sh/install | bash
fi