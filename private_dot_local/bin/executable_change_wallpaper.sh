#!/bin/bash
set -euo pipefail

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix
#
# https://github.com/LGFae/swww/blob/main/example_scripts/swww_randomize.sh

if [[ $# -lt 1 ]] || [[ ! -d $1 ]]; then
  echo "Usage:
	$0 <dir containing images>"
  exit 1
fi

# This controls (in seconds) when to switch to the next image
INTERVAL=900

while true; do
  find "$1" -type f |
    while read -r img; do
      echo "$((RANDOM % 1000)):$img"
    done |
    sort -n | cut -d':' -f2- |
    while read -r img; do
      swww img --transition-type grow --transition-pos top-right --transition-fps 120 "$img"
      sleep $INTERVAL
    done
done
