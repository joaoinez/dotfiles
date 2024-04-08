#!/bin/bash
set -euo pipefail

if [[ $(zsh -c 'nvm current') == "none" ]]; then
  echo "Installing node"

  zsh -c 'nvm install node'
fi