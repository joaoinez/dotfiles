#!/user/bin/env bash
set -euo pipefail

sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nvidia_drm.modeset=1"' /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo sed -i 's/MODULES=()/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)' /etc/mkinitcpio.conf

sudo mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img

sudo touch /etc/modprobe.d/nvidia.conf

sudo echo 'options nvidia-drm modeset=1' >> /etc/modprobe.d/nvidia.conf
