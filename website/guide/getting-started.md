# What & why

These dotfiles turn a fresh macOS machine into a ready-to-work setup with a
single command. They install Homebrew and a curated set of packages, Oh My Zsh,
a small zsh configuration, and the Node and Python toolchains.

## Design goals

- **One command.** `./install.sh` provisions everything in order, and each step
  is also runnable on its own.
- **Declarative packages.** Everything Homebrew installs lives in a
  [`Brewfile`](/reference/brewfile), applied with `brew bundle`. To change what
  is installed, you edit one file — never the scripts.
- **Apple Silicon first.** Paths target `/opt/homebrew`, the Homebrew prefix on
  Apple Silicon Macs.
- **No framework.** Each step is a short, readable shell script. There is nothing
  to learn beyond `sh`.

## What you end up with

- Homebrew, plus the command-line tools and apps in the `Brewfile`.
- Oh My Zsh and a zsh configuration that loads your version managers.
- **Node** managed by [nvm](https://github.com/nvm-sh/nvm) and **Python** managed
  by [pyenv](https://github.com/pyenv/pyenv).

Ready? Head to [Installation](/guide/installation).
