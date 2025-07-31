#!/bin/bash
set -euo pipefail

syshud -p 'bottom-center'-i 24 &

sleep 1 && /home/astherae/.local/bin/change_wallpaper.sh "/home/astherae/Pictures/Wallpapers" &

wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

exec wlsunset -l 51.9 -L 4.5
