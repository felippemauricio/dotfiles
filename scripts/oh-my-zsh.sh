#!/usr/bin/env bash
set -euo pipefail

# Install the Xcode command-line tools (skips if already installed)
xcode-select --install 2>/dev/null || true

# Install Oh My Zsh unattended (do not change the shell or launch zsh)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
