#!/usr/bin/env bash
set -euo pipefail

# Install Homebrew if it is not already present
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make brew available in the current shell (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install everything listed in the Brewfile
brew bundle --file="$(dirname "$0")/../Brewfile"
