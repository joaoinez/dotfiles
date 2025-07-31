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

echo "Applying GTK theme"

gsettings set org.gnome.desktop.interface gtk-theme 'rose-pine-gtk'
gsettings set org.gnome.desktop.interface icon-theme 'rose-pine-icons'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
# gsettings set org.gnome.desktop.interface cursor-theme 'BreezeX-RosePineDawn-Linux' &

echo "Enabling autostart service"

sudo cp ~/.local/share/chezmoi/root/etc/systemd/system/autostart.service /etc/systemd/system/autostart.service

systemctl --user daemon-reload &>/dev/null
systemctl --user enable autostart-script.service &>/dev/null

# echo "Changing docker images location"
#
# sudo mkdir -p /etc/docker
# sudo touch /etc/docker/daemon.json
# sudo cp ~/.local/share/chezmoi/etc/docker/daemon.json /etc/docker/daemon.json

# echo "Downloading yazi plugins"
#
# ya pkg install
