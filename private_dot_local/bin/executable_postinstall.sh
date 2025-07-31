#!/bin/bash
set -euo pipefail

fnm install --latest

bat cache --build

tldr --update
