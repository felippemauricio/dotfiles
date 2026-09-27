#!/usr/bin/env bash
set -euo pipefail

# Install Homebrew if it is not already present
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make brew available in the current shell (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

BREWFILE="$(cd "$(dirname "$0")/.." && pwd)/Brewfile"

# Newer Homebrew refuses formulae from untrusted third-party taps, which would
# stall the unattended bundle below; tap and trust every tap the Brewfile
# declares (read from the file, so a new tap never needs a script change).
if brew trust --help >/dev/null 2>&1; then
  sed -nE 's/^tap "([^"]+)".*/\1/p' "$BREWFILE" | while read -r tap; do
    brew tap "$tap" </dev/null
    brew trust "$tap" </dev/null
  done
fi

# Install everything listed in the Brewfile
brew bundle --file="$BREWFILE"
