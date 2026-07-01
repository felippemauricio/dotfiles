# .dotfiles

[![GitHub licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://github.com/felippemauricio/dotfiles/blob/master/LICENSE.md)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/felippemauricio/dotfiles/pulls)
[![Platform](https://img.shields.io/badge/platform-macOS-lightgrey.svg)](https://www.apple.com/macos/)

Sensible developer defaults for macOS. One command provisions a fresh machine:
Homebrew and a curated set of command-line tools and applications, Oh My Zsh, the
shell configuration, and the Node and Python toolchains.

📖 **Full documentation:** **<https://felippemauricio.github.io/dotfiles/>**

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

`install.sh` runs each step below in order. Every script is `set -euo pipefail`
and is also runnable on its own.

| Step | Script                 | What it does                                                                |
| ---- | ---------------------- | --------------------------------------------------------------------------- |
| 1    | `scripts/homebrew.sh`  | Installs Homebrew (if missing), then installs everything in the `Brewfile`. |
| 2    | `scripts/oh-my-zsh.sh` | Triggers the Xcode command-line tools install and installs Oh My Zsh.       |
| 3    | `scripts/shell.sh`     | Copies the zsh config to `~/.dotfiles.zsh` and sources it from `~/.zshrc`.  |
| 4    | `scripts/languages.sh` | Installs Node (latest LTS via nvm) and Python (latest stable via pyenv).    |

## What gets installed

Everything except Homebrew and Oh My Zsh is declared in the [`Brewfile`](Brewfile)
and applied with `brew bundle` — formulae (`brew`) are command-line tools, casks
(`cask`) are GUI applications. To add or remove a package, edit that file and
re-run `brew bundle`.

### 🍺 Homebrew

- <img src="https://www.google.com/s2/favicons?domain=brew.sh&sz=64" width="18" align="top" /> **[Homebrew](https://brew.sh/)** — the macOS package manager that installs everything below.

### ⌨️ Command-line tools

- <img src="https://www.google.com/s2/favicons?domain=apfel.franzai.com&sz=64" width="18" align="top" /> **[apfel](https://apfel.franzai.com)** — Apple Intelligence from the command line, with an OpenAI-compatible API server.
- <img src="https://www.google.com/s2/favicons?domain=git-scm.com&sz=64" width="18" align="top" /> **[git](https://git-scm.com/)** — distributed version control.
- <img src="https://www.google.com/s2/favicons?domain=github.com&sz=64" width="18" align="top" /> **[gh](https://cli.github.com/)** — GitHub from the terminal: pull requests, issues and repositories.
- <img src="https://www.google.com/s2/favicons?domain=nodejs.org&sz=64" width="18" align="top" /> **[nvm](https://github.com/nvm-sh/nvm)** — Node Version Manager; install and switch between Node.js versions.
- <img src="https://www.google.com/s2/favicons?domain=python.org&sz=64" width="18" align="top" /> **[pyenv](https://github.com/pyenv/pyenv)** — Python version manager; install and switch between Python versions.
- <img src="https://www.google.com/s2/favicons?domain=aws.amazon.com&sz=64" width="18" align="top" /> **[awscli](https://aws.amazon.com/cli/)** — Amazon Web Services command-line interface.
- <img src="https://www.google.com/s2/favicons?domain=azure.microsoft.com&sz=64" width="18" align="top" /> **[azure-cli](https://learn.microsoft.com/cli/azure/)** — Microsoft Azure command-line interface.
- <img src="https://www.google.com/s2/favicons?domain=jqlang.github.io&sz=64" width="18" align="top" /> **[jq](https://jqlang.github.io/jq/)** — command-line JSON processor for slicing, filtering and transforming JSON.
- <img src="https://www.google.com/s2/favicons?domain=github.com&sz=64" width="18" align="top" /> **[ripgrep](https://github.com/BurntSushi/ripgrep)** — extremely fast recursive search (`rg`) that respects `.gitignore`.
- <img src="https://www.google.com/s2/favicons?domain=formulae.brew.sh&sz=64" width="18" align="top" /> **[watch](https://formulae.brew.sh/formula/watch)** — re-runs a command on a fixed interval and shows its latest output.

### 🐚 Shell — Oh My Zsh

- <img src="https://www.google.com/s2/favicons?domain=ohmyz.sh&sz=64" width="18" align="top" /> **[Oh My Zsh](https://ohmyz.sh/)** — community framework for managing your zsh configuration (themes, plugins, sensible defaults). The dotfiles zsh config is layered on top — see [Shell configuration](#shell-configuration).

### 🧑‍💻 Applications — code editors & terminals

- <img src="https://www.google.com/s2/favicons?domain=cursor.com&sz=64" width="18" align="top" /> **[Cursor](https://cursor.com/)** — AI-first code editor (a Visual Studio Code fork).
- <img src="https://www.google.com/s2/favicons?domain=code.visualstudio.com&sz=64" width="18" align="top" /> **[Visual Studio Code](https://code.visualstudio.com/)** — extensible code editor.
- <img src="https://www.google.com/s2/favicons?domain=zed.dev&sz=64" width="18" align="top" /> **[Zed](https://zed.dev/)** — high-performance, collaborative code editor.
- <img src="https://www.google.com/s2/favicons?domain=iterm2.com&sz=64" width="18" align="top" /> **[iTerm2](https://iterm2.com/)** — feature-rich terminal emulator for macOS.

### 🤖 AI assistants & coding agents

- <img src="https://www.google.com/s2/favicons?domain=claude.ai&sz=64" width="18" align="top" /> **[Claude](https://claude.ai/)** — Anthropic's Claude desktop app.
- <img src="https://www.google.com/s2/favicons?domain=claude.com&sz=64" width="18" align="top" /> **[Claude Code](https://claude.com/product/claude-code)** — Anthropic's agentic coding tool for the terminal.
- <img src="https://www.google.com/s2/favicons?domain=openai.com&sz=64" width="18" align="top" /> **[ChatGPT Atlas](https://openai.com/)** — OpenAI's ChatGPT desktop browser.
- <img src="https://www.google.com/s2/favicons?domain=openai.com&sz=64" width="18" align="top" /> **[Codex](https://github.com/openai/codex)** — OpenAI's command-line coding agent.
- <img src="https://www.google.com/s2/favicons?domain=openai.com&sz=64" width="18" align="top" /> **[Codex app](https://openai.com/codex)** — OpenAI's Codex desktop app.

### 🐳 Developer tools

- <img src="https://www.google.com/s2/favicons?domain=docker.com&sz=64" width="18" align="top" /> **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** — builds, runs and manages Docker containers locally.
- <img src="https://www.google.com/s2/favicons?domain=postman.com&sz=64" width="18" align="top" /> **[Postman](https://www.postman.com/)** — API client for building and testing HTTP requests.

### 🌐 Browsers

- <img src="https://www.google.com/s2/favicons?domain=google.com&sz=64" width="18" align="top" /> **[Google Chrome](https://www.google.com/chrome/)** — web browser.
- <img src="https://www.google.com/s2/favicons?domain=firefox.com&sz=64" width="18" align="top" /> **[Firefox](https://www.mozilla.org/firefox/)** — web browser.

### 💬 Messaging & communication

- <img src="https://www.google.com/s2/favicons?domain=slack.com&sz=64" width="18" align="top" /> **[Slack](https://slack.com/)** — team messaging.
- <img src="https://www.google.com/s2/favicons?domain=teams.microsoft.com&sz=64" width="18" align="top" /> **[Microsoft Teams](https://www.microsoft.com/microsoft-teams/)** — team chat, calls and meetings.
- <img src="https://www.google.com/s2/favicons?domain=discord.com&sz=64" width="18" align="top" /> **[Discord](https://discord.com/)** — voice, video and text chat for communities.
- <img src="https://www.google.com/s2/favicons?domain=whatsapp.com&sz=64" width="18" align="top" /> **[WhatsApp](https://www.whatsapp.com/)** — messaging desktop app.
- <img src="https://www.google.com/s2/favicons?domain=zoom.us&sz=64" width="18" align="top" /> **[Zoom](https://zoom.us/)** — video conferencing.

### 🧰 Productivity & utilities

- <img src="https://www.google.com/s2/favicons?domain=1password.com&sz=64" width="18" align="top" /> **[1Password](https://1password.com/)** — password manager and secure vault.
- <img src="https://www.google.com/s2/favicons?domain=microsoft.com&sz=64" width="18" align="top" /> **[Microsoft Office](https://www.microsoft.com/microsoft-365)** — office suite: Word, Excel, PowerPoint, Outlook and OneNote.
- <img src="https://www.google.com/s2/favicons?domain=rectangleapp.com&sz=64" width="18" align="top" /> **[Rectangle](https://rectangleapp.com/)** — window manager; snap and resize windows with keyboard shortcuts.
- <img src="https://www.google.com/s2/favicons?domain=clipy-app.com&sz=64" width="18" align="top" /> **[Clipy](https://clipy-app.com/)** — lightweight clipboard-history manager.
- <img src="https://www.google.com/s2/favicons?domain=dropbox.com&sz=64" width="18" align="top" /> **[Dropbox](https://www.dropbox.com/)** — cloud file storage and sync.

### 🎵 Media

- <img src="https://www.google.com/s2/favicons?domain=spotify.com&sz=64" width="18" align="top" /> **[Spotify](https://www.spotify.com/)** — music streaming.

## Shell configuration

`scripts/shell.sh` installs the zsh config as `~/.dotfiles.zsh` and sources it
from `~/.zshrc`. On every new shell it:

- loads Homebrew into the environment (Apple Silicon `/opt/homebrew` prefix);
- initialises **nvm** and automatically switches to the Node version in a
  project's `.nvmrc` when you `cd` into it (reverting to the default otherwise);
- initialises **pyenv**; and
- opens your `~/Workspace` directory.

## Version managers

Node is managed with **nvm** and Python with **pyenv** — the two version
managers loaded by the shell configuration above. `languages.sh` installs the
latest Node LTS and the latest stable Python and sets both as the global
defaults.

## Documentation

The full guide and reference live on the docs site, built with VitePress and
published to GitHub Pages on every push to `master`:

**<https://felippemauricio.github.io/dotfiles/>**

- **Guide** — getting started, installation, the scripts, the version managers,
  and what gets installed.
- **Reference** — the annotated `Brewfile`.

## Licence

Licensed under the MIT Licence, Copyright © 2019-present Felippe Maurício.
