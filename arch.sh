#!/bin/bash
set -euo pipefail

# Disable IPv6
nmcli connection modify "Wired connection 1" ipv6.method "disabled"
nmcli connection up "Wired connection 1"

# Update system
sudo pacman -Syu --noconfirm

# Install paru
sudo pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

# Install chezmoi
paru -S --noconfirm chezmoi

# Init dotfiles
chezmoi init --apply joaoinez