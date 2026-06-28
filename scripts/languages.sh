#!/usr/bin/env bash
set -euo pipefail

# Load the shell configuration so nvm and pyenv are available
source "$HOME/.dotfiles.zsh"

# Node — install the latest LTS via nvm and set it as the default
nvm install --lts
nvm alias default 'lts/*'

# Python — install the latest stable version via pyenv and set it globally
PYTHON_VERSION="$(pyenv install --list | grep -E '^\s*3\.[0-9]+\.[0-9]+$' | tail -1 | tr -d ' ')"
pyenv install --skip-existing "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"
