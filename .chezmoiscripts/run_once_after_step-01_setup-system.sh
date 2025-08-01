#!/bin/bash
set -euo pipefail

echo "Changing default shell to zsh"

sudo chsh -s /usr/bin/zsh $USER

echo "Enabling pacman colors"

sudo sed -i 's/#Color/Color/' /etc/pacman.conf

echo "Enabling cache timer"

sudo systemctl enable paccache.timer

echo "Applying NVIDIA configs"

sudo sed -i 's/MODULES=()/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)/' /etc/mkinitcpio.conf

if [ ! -f /etc/modprobe.d/nvidia.conf ]; then
  sudo touch /etc/modprobe.d/nvidia.conf
  sudo bash -c 'echo "options nvidia-drm modeset=1" >> /etc/modprobe.d/nvidia.conf'
fi

sudo mkinitcpio -P

echo "Applying GRUB theme"

if [ ! -d /boot/grub/themes ]; then
  sudo mkdir -p /boot/grub/themes
fi

sudo cp -r ~/.local/share/chezmoi/root/boot/grub2/themes/bigsur /boot/grub/themes

sudo cp /etc/default/grub /etc/default/grub.bak

sudo cp ~/.local/share/chezmoi/root/etc/default/grub /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg
