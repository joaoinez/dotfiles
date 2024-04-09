#!/bin/bash
set -euo pipefail

for file in *
do
  if [ -f "$file" ]; then
      convert $file -resize 2560x1440 "converted/$file"
  fi
done
