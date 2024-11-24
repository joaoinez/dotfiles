#!/bin/bash
set -euo pipefail

if [ ! -d ~/.config/nvim ]; then
  echo "Cloning neovim config"

  git clone https://github.com/joaoinez/kickstart.nvim.git ~/.config/nvim
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "Cloning TPM"

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
