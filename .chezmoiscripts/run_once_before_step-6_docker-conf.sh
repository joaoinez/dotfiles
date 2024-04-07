#!/bin/bash
set -euo pipefail

echo "Changing docker images location"

sudo mkdir -p /etc/docker
sudo touch /etc/docker/daemon.json
sudo cp ~/.local/share/chezmoi/.etc/docker/daemon.json /etc/docker/daemon.json
