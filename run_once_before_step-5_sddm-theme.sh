#!/bin/bash
set -euo pipefail

sudo mkdir -p /etc/sddm.conf.d
sudo touch /etc/sddm.conf.d/theme.conf
sudo bash -c 'echo "[Theme]" >> /etc/sddm.conf.d/theme.conf'
sudo bash -c 'echo "Current=tokyo-night-sddm" >> /etc/sddm.conf.d/theme.conf'
