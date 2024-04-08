#!/bin/bash
set -euo pipefail

exec /usr/bin/zsh
source ~/.zshrc

if [[ $(nvm current) == "none" ]]; then
  echo "Installing node"

  nvm install node
fi