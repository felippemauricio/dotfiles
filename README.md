# .dotfiles

[![GitHub licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://github.com/felippemauricio/dotfiles/blob/master/LICENSE.md)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/felippemauricio/dotfiles/pulls)
[![Platform](https://img.shields.io/badge/platform-macOS-lightgrey.svg)](https://www.apple.com/macos/)

Sensible developer defaults for macOS. One command sets up Homebrew, Oh My Zsh,
the shell configuration, and the Node and Python toolchains.

📖 **Documentation:** https://felippemauricio.github.io/dotfiles/

<img src="https://raw.githubusercontent.com/felippemauricio/dotfiles/master/docs/images/dotfiles.png" width="600" />

## Prerequisites

- macOS on Apple Silicon (Homebrew is expected at `/opt/homebrew`)
- The Xcode command-line tools (the installer triggers their installation)

## Install

```sh
git clone git@github.com:felippemauricio/dotfiles.git
cd dotfiles
./install.sh
```

Then restart your terminal.

## What the installer does

`install.sh` runs each step below in order. Every script is also runnable on its
own.

| Step | Script                 | What it does                                                   |
| ---- | ---------------------- | -------------------------------------------------------------- |
| 1    | `scripts/homebrew.sh`  | Installs Homebrew, then installs everything in the `Brewfile`. |
| 2    | `scripts/oh-my-zsh.sh` | Installs the Xcode command-line tools and Oh My Zsh.           |
| 3    | `scripts/shell.sh`     | Installs the zsh configuration and sources it from `~/.zshrc`. |
| 4    | `scripts/languages.sh` | Installs Node (nvm LTS) and Python (latest stable via pyenv).  |

## What gets installed

Packages live in the `Brewfile`. To add or remove something, edit that file and
re-run `brew bundle`.

### Command-line tools

- [git](https://git-scm.com/)
- [gh](https://cli.github.com/) — GitHub CLI
- [nvm](https://github.com/nvm-sh/nvm) — Node version manager
- [pyenv](https://github.com/pyenv/pyenv) — Python version manager
- [awscli](https://aws.amazon.com/cli/) — AWS command-line interface
- [azure-cli](https://learn.microsoft.com/cli/azure/) — Azure command-line interface
- [jq](https://jqlang.github.io/jq/) — JSON processor
- [ripgrep](https://github.com/BurntSushi/ripgrep) — fast recursive search
- [watch](https://formulae.brew.sh/formula/watch) — run a command periodically

### Applications

1Password, ChatGPT Atlas, Claude, Claude Code, Clipy, Codex, Codex app, Cursor,
Docker Desktop, Dropbox, Firefox, Google Chrome, iTerm2, Microsoft Teams,
Postman, Rectangle, Slack, Spotify, Visual Studio Code, WhatsApp, Zed and Zoom.

## Version managers

Node is managed with **nvm** and Python with **pyenv**. The shell configuration
loads both, and automatically switches to the Node version in a project's
`.nvmrc` when you enter its directory.

## Licence

Licensed under the MIT Licence, Copyright © 2019-present Felippe Maurício.
