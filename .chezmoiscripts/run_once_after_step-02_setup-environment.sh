#!/bin/bash
set -euo pipefail

echo "Applying sddm theme"

if [ ! -d /etc/sddm.conf.d ]; then
  sudo mkdir -p /etc/sddm.conf.d
fi

sudo touch /etc/sddm.conf.d/theme.conf

sudo cp ~/.local/share/chezmoi/root/etc/sddm.conf.d/theme.conf /etc/sddm.conf.d/theme.conf

sudo touch /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo cp ~/.local/share/chezmoi/root/usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user /usr/share/sddm/themes/tokyo-night-sddm/theme.conf.user

sudo systemctl enable sddm.service &>/dev/null

echo "Creating missing directories"

if [ ! -d ~/.themes/rose-pine-gtk ]; then
  mkdir -p ~/.themes/rose-pine-gtk
fi

if [ ! -d ~/.icons/rose-pine-icons ]; then
  mkdir -p ~/.icons/rose-pine-icons
fi

if [ ! -d ~/Pictures/Wallpapers ]; then
  mkdir -p ~/Pictures/Wallpapers
fi

if [ ! -d ~/Pictures/Screenshots ]; then
  mkdir -p ~/Pictures/Screenshots
fi

if [ ! -d ~/Documents/Projects ]; then
  mkdir -p ~/Documents/Projects
fi

echo "Extracting theme and wallpapers"

tar xf ~/.local/share/chezmoi/theme/theme.tar.gz --directory=/home/astherae/.themes/rose-pine-gtk

tar xf ~/.local/share/chezmoi/theme/icons.tar.gz --directory=/home/astherae/.icons/rose-pine-icons

tar xf ~/.local/share/chezmoi/theme/wallpapers.tar.gz --directory=/home/astherae/Pictures/Wallpapers

# echo "Downloading yazi plugins"
#
# ya pkg install
