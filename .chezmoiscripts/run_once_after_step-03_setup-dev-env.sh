#!/bin/bash
set -euo pipefail

if [[ $(zsh -c "source ~/.zshrc && nvm current") == "system" ]]; then
  echo "Installing node"

  zsh -c 'source ~/.zshrc && nvm install node && nvm use node' &>/dev/null
fi

if [ ! -d ~/.config/nvim ]; then
  echo "Cloning neovim config"

  git clone https://github.com/joaoinez/kickstart.nvim.git ~/.config/nvim
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "Cloning TPM"

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
