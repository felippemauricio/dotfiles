#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# 1. Install Homebrew and everything in the Brewfile
./scripts/homebrew.sh

# 2. Install Oh My Zsh
./scripts/oh-my-zsh.sh

# 3. Install the zsh configuration
./scripts/shell.sh

# 4. Install Node (nvm) and Python (pyenv)
./scripts/languages.sh

echo "Done. Restart your terminal to load the new shell configuration."
