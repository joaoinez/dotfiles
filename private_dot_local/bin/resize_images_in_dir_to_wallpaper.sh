#!/bin/bash
set -euo pipefail

mkdir -p wallpapers

for file in *
do
  if [ -f "$file" ]; then
      echo "converting $file"

      convert $file -resize 2560x1440 "wallpapers/$file"
  fi
done