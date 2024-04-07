#!/bin/bash
set -euo pipefail

echo "Applying sddm theme"

sudo mkdir -p /etc/sddm.conf.d
sudo touch /etc/sddm.conf.d/theme.conf
sudo cp ~/.local/share/chezmoi/.etc/sddm.conf.d/theme.conf /etc/sddm.conf.d/theme.conf
