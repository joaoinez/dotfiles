#!/bin/bash
set -euo pipefail

echo "Applying sddm theme"

sudo mkdir -p /etc/sddm.conf.d

sudo touch /etc/sddm.conf.d/theme.conf

sudo cp ~/.local/share/chezmoi/root/etc/sddm.conf.d/theme.conf /etc/sddm.conf.d/theme.conf

sudo touch /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo cp ~/.local/share/chezmoi/root/usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo systemctl enable sddm.service &>/dev/null

echo "Creating filesystem"

mkdir -p ~/Documents/Projects

mkdir -p ~/Public
