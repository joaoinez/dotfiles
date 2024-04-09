#!/bin/bash
set -euo pipefail

mkdir wallpapers

for file in *
do
  if [ -f "$file" ]; then
      convert $file -resize 2560x1440 "wallpapers/$file"
  fi
done
