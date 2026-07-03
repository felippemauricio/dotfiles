# Installation

## Prerequisites

- macOS on Apple Silicon (Homebrew is expected at `/opt/homebrew`).
- The Xcode command-line tools — the installer triggers their installation for
  you.

## Install

```sh
git clone https://github.com/felippemauricio/dotfiles.git
cd dotfiles
./install.sh
```

Then restart your terminal so the new shell configuration loads.

## What `install.sh` runs

The installer calls each script in order. Every script is also runnable on its
own if you only want one part.

| Step | Script                 | What it does                                                   |
| ---- | ---------------------- | -------------------------------------------------------------- |
| 1    | `scripts/homebrew.sh`  | Installs Homebrew, then installs everything in the `Brewfile`. |
| 2    | `scripts/oh-my-zsh.sh` | Installs the Xcode command-line tools and Oh My Zsh.           |
| 3    | `scripts/shell.sh`     | Installs the zsh configuration and sources it from `~/.zshrc`. |
| 4    | `scripts/languages.sh` | Installs Node (nvm LTS) and Python (latest stable via pyenv).  |

See [The install scripts](/guide/scripts) for a closer look at each one.
