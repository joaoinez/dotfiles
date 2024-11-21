#!/bin/bash
set -euo pipefail

echo "Applying sddm theme"

sudo cp -r ~/.local/share/chezmoi/root/etc/sddm.conf.d/theme.conf /etc/sddm.conf.d/theme.conf

sudo cp ~/.local/share/chezmoi/root/usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo systemctl enable sddm.service &>/dev/null

echo "Creating filesystem"

mkdir -p ~/Documents/Projects

mkdir -p ~/Public
