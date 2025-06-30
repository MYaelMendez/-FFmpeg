#!/usr/bin/env bash
set -e

# Simple helper script to install ImageMagick using common package managers.
# FFmpeg does not require ImageMagick, but some examples and tests may use it.

if command -v apt-get >/dev/null 2>&1; then
  echo "Installing ImageMagick using apt-get" >&2
  sudo apt-get update
  sudo apt-get install -y imagemagick
elif command -v brew >/dev/null 2>&1; then
  echo "Installing ImageMagick using Homebrew" >&2
  brew install imagemagick
elif command -v yum >/dev/null 2>&1; then
  echo "Installing ImageMagick using yum" >&2
  sudo yum install -y ImageMagick
else
  echo "Please install ImageMagick using your system's package manager." >&2
  exit 1
fi
