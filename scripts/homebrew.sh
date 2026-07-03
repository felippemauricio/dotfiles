#!/usr/bin/env bash
set -euo pipefail

# Install Homebrew if it is not already present
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make brew available in the current shell (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Newer Homebrew refuses formulae from untrusted third-party taps, which would
# stall the unattended bundle below; tap and trust the ones the Brewfile uses.
if brew trust --help >/dev/null 2>&1; then
  for tap in atlassian/acli hashicorp/tap; do
    brew tap "$tap"
    brew trust "$tap"
  done
fi

# Install everything listed in the Brewfile
brew bundle --file="$(dirname "$0")/../Brewfile"
