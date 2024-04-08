#!/usr/bin/zsh
set -euo pipefail

if [[ $(nvm current) == "none" ]]; then
  echo "Installing node"

  nvm install node
fi