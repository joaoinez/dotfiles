#!/bin/bash
set -euo pipefail

sudo systemctl enable sddm.service
sudo systemctl enable docker.socket
