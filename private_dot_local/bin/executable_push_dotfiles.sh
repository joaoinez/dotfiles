#!/bin/bash
set -euo pipefail

chezmoi git add .
chezmoi git -- commit -m "Update ${1:-dotfiles}"
chezmoi git push