#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# Install the zsh configuration into the home directory
cp "$DOTFILES_DIR/scripts/zshrc" "$HOME/.dotfiles.zsh"

# Install the tmux configuration into the home directory
cp "$DOTFILES_DIR/scripts/tmux.conf" "$HOME/.tmux.conf"

# Source it from ~/.zshrc once
LINE="source ~/.dotfiles.zsh"
touch "$HOME/.zshrc"
if ! grep -qxF "$LINE" "$HOME/.zshrc"; then
  printf "\n%s\n" "$LINE" >> "$HOME/.zshrc"
fi
