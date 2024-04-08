#!/usr/bin/zsh
set -euo pipefail

source ~/.zshrc

if [[ $(nvm current) == "none" ]]; then
  echo "Installing node"

  nvm install node
fi