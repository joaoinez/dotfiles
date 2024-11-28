#!/bin/bash
set -euo pipefail

echo "Applying sddm theme"

sudo mkdir -p /etc/sddm.conf.d

sudo touch /etc/sddm.conf.d/theme.conf

sudo cp ~/.local/share/chezmoi/root/etc/sddm.conf.d/theme.conf /etc/sddm.conf.d/theme.conf

sudo touch /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo cp ~/.local/share/chezmoi/root/usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo systemctl enable sddm.service &>/dev/null

echo "Creating missing directories"

mkdir -p ~/.themes/rose-pine-gtk

mkdir -p ~/.icons/rose-pine-icons

mkdir -p ~/Pictures/Wallpapers

mkdir -p ~/Documents/Projects

echo "Extracting theme and wallpapers"

tar xf ~/.local/share/chezmoi/theme/theme.tar.gz --directory=/home/astherae/.themes/rose-pine-gtk

tar xf ~/.local/share/chezmoi/theme/icons.tar.gz --directory=/home/astherae/.icons/rose-pine-icons

tar xf ~/.local/share/chezmoi/theme/wallpapers.tar.gz --directory=/home/astherae/Pictures/Wallpapers
