#!/bin/bash
set -euo pipefail

if [[ $(zsh -c 'source ~/.zshrc && nvm current') == "none" ]]; then
  echo "Installing node"

  zsh -c 'source ~/.zshrc && nvm install node'
fi