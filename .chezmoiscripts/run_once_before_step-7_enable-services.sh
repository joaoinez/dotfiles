#!/bin/bash
set -euo pipefail

echo "Enabling services"

sudo systemctl enable sddm.service
sudo systemctl enable docker.socket