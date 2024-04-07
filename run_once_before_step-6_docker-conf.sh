#!/bin/bash
set -euo pipefail

sudo mkdir -p /etc/docker
sudo touch /etc/docker/daemon.json
sudo bash -c 'echo "{" >> /etc/docker/daemon.json'
sudo bash -c "echo '  "data-root": "/home/astherae/docker"' >> /etc/docker/daemon.json"
sudo bash -c 'echo "}" >> /etc/docker/daemon.json'
