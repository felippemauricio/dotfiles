# .dotfiles

[![Docs](https://github.com/felippemauricio/dotfiles/actions/workflows/pages.yml/badge.svg)](https://github.com/felippemauricio/dotfiles/actions/workflows/pages.yml)
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://github.com/felippemauricio/dotfiles/blob/master/LICENSE.md)
[![Platform](https://img.shields.io/badge/platform-macOS-black.svg?logo=apple&logoColor=white)](https://www.apple.com/macos/)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?logo=github&logoColor=white)](https://github.com/felippemauricio/dotfiles/pulls)

Sensible developer defaults for macOS. One command provisions a fresh machine:
Homebrew and a curated set of command-line tools and applications, Oh My Zsh, the
shell configuration, and the Node and Python toolchains.

📖 **Full documentation:** **<https://felippemauricio.github.io/dotfiles/>**

## Prerequisites

- macOS on Apple Silicon (Homebrew is expected at `/opt/homebrew`)
- The Xcode command-line tools (the installer triggers their installation)

## Install

```sh
git clone https://github.com/felippemauricio/dotfiles.git
cd dotfiles
./install.sh
```

Then restart your terminal.

## What the installer does

`install.sh` runs each step below in order. Every script is `set -euo pipefail`
and is also runnable on its own.

| Step | Script                 | What it does                                                                                                |
| ---- | ---------------------- | ----------------------------------------------------------------------------------------------------------- |
| 1    | `scripts/homebrew.sh`  | Installs Homebrew (if missing), then installs everything in the `Brewfile`.                                 |
| 2    | `scripts/oh-my-zsh.sh` | Triggers the Xcode command-line tools install and installs Oh My Zsh.                                       |
| 3    | `scripts/shell.sh`     | Copies the zsh config to `~/.dotfiles.zsh` (sourced from `~/.zshrc`) and the tmux config to `~/.tmux.conf`. |
| 4    | `scripts/languages.sh` | Installs Node (latest LTS via nvm) and Python (latest stable via pyenv).                                    |

## What gets installed

Everything except Homebrew and Oh My Zsh is declared in the [`Brewfile`](Brewfile)
and applied with `brew bundle` — formulae (`brew`) are command-line tools, casks
(`cask`) are GUI applications. To add or remove a package, edit that file and
re-run `brew bundle`.

### 🍺 Homebrew

- <img src="website/public/images/tools/homebrew.png" width="18" align="top" /> **[Homebrew](https://brew.sh/)** — the macOS package manager that installs everything below.

### ⌨️ Developer command-line tools

- <img src="website/public/images/tools/atlassian.png" width="18" align="top" /> **[acli](https://developer.atlassian.com/cloud/acli/)** — Atlassian command-line interface: Jira and Confluence from the terminal. Installed from the official `atlassian/acli` tap.
- <img src="website/public/images/tools/github.png" width="18" align="top" /> **[gh](https://cli.github.com/)** — GitHub from the terminal: pull requests, issues and repositories.
- <img src="website/public/images/tools/git.png" width="18" align="top" /> **[git](https://git-scm.com/)** — distributed version control.
- <img src="website/public/images/tools/gitlab.png" width="18" align="top" /> **[glab](https://gitlab.com/gitlab-org/cli)** — GitLab from the terminal: merge requests, issues and pipelines.
- <img src="website/public/images/tools/jq.png" width="18" align="top" /> **[jq](https://jqlang.org/)** — command-line JSON processor for slicing, filtering and transforming JSON.
- <img src="website/public/images/tools/mitmproxy.png" width="18" align="top" /> **[mitmproxy](https://mitmproxy.org/)** — interactive HTTPS proxy for inspecting and debugging HTTP(S) traffic (`mitmproxy`, `mitmweb` and `mitmdump`). Command-line tool, but installed as a Homebrew cask (its only distribution).
- 🔍 **[ripgrep](https://github.com/BurntSushi/ripgrep)** — extremely fast recursive search (`rg`) that respects `.gitignore`.
- <img src="website/public/images/tools/terraform.png" width="18" align="top" /> **[terraform](https://developer.hashicorp.com/terraform)** — infrastructure as code; provisions and manages cloud resources declaratively. Installed from the official `hashicorp/tap`.
- <img src="website/public/images/tools/terragrunt.png" width="18" align="top" /> **[terragrunt](https://terragrunt.gruntwork.io/)** — thin wrapper around terraform that keeps configurations DRY across environments.
- <img src="website/public/images/tools/tmux.png" width="18" align="top" /> **[tmux](https://github.com/tmux/tmux)** — terminal multiplexer: splits the terminal into panes and keeps sessions alive; powers the `claudio` command and the Claude Code agent-team split-pane workflow.

#### ☁️ Cloud CLIs

- <img src="website/public/images/tools/aws.png" width="18" align="top" /> **[awscli](https://aws.amazon.com/cli/)** — Amazon Web Services command-line interface.
- <img src="website/public/images/tools/azure.png" width="18" align="top" /> **[azure-cli](https://learn.microsoft.com/cli/azure/)** — Microsoft Azure command-line interface.

#### 🔄 Version managers

- <img src="website/public/images/tools/nodejs.png" width="18" align="top" /> **[nvm](https://github.com/nvm-sh/nvm)** — Node Version Manager; install and switch between Node.js versions.
- <img src="website/public/images/tools/python.png" width="18" align="top" /> **[pyenv](https://github.com/pyenv/pyenv)** — Python version manager; install and switch between Python versions.

### 🐳 Developer tools

- <img src="website/public/images/tools/cursor.png" width="18" align="top" /> **[Cursor](https://cursor.com/)** — AI-first code editor (a Visual Studio Code fork).
- <img src="website/public/images/tools/dbeaver.png" width="18" align="top" /> **[DBeaver](https://dbeaver.io/)** — universal database client; browse schemas, run SQL and inspect data. Installed as the free Community Edition.
- <img src="website/public/images/tools/docker.png" width="18" align="top" /> **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** — builds, runs and manages Docker containers locally.
- <img src="website/public/images/tools/iterm2.png" width="18" align="top" /> **[iTerm2](https://iterm2.com/)** — feature-rich terminal emulator for macOS.
- <img src="website/public/images/tools/postman.png" width="18" align="top" /> **[Postman](https://www.postman.com/)** — API client for building and testing HTTP requests.
- <img src="website/public/images/tools/vscode.png" width="18" align="top" /> **[Visual Studio Code](https://code.visualstudio.com/)** — extensible code editor.

### 🤖 AI — models, assistants & coding agents

- <img src="website/public/images/tools/antigravity.png" width="18" align="top" /> **[Antigravity CLI](https://antigravity.google/)** — Google's Gemini-powered agentic coding tool for the terminal.
- 🍏 **[apfel](https://apfel.franzai.com)** — Apple Intelligence from the command line, with an OpenAI-compatible API server.
- <img src="website/public/images/tools/openai.png" width="18" align="top" /> **[ChatGPT Atlas](https://openai.com/)** — OpenAI's ChatGPT desktop browser.
- <img src="website/public/images/tools/claude-ai.png" width="18" align="top" /> **[Claude](https://claude.ai/)** — Anthropic's Claude desktop app.
- <img src="website/public/images/tools/claude.png" width="18" align="top" /> **[Claude Code](https://claude.com/product/claude-code)** — Anthropic's agentic coding tool for the terminal.
- <img src="website/public/images/tools/codex.png" width="18" align="top" /> **[Codex](https://github.com/openai/codex)** — OpenAI's command-line coding agent.
- <img src="website/public/images/tools/codex.png" width="18" align="top" /> **[Codex app](https://openai.com/codex)** — OpenAI's Codex desktop app.
- <img src="website/public/images/tools/gemini.png" width="18" align="top" /> **[Gemini](https://gemini.google/)** — Google's native Gemini desktop assistant.
- 🦙 **[ollama](https://ollama.com/)** — runs open large language models locally (Llama, Gemma, Qwen and more), with an OpenAI-compatible API server. Start the background service with `brew services start ollama`.
- <img src="website/public/images/tools/opencode.png" width="18" align="top" /> **[opencode](https://opencode.ai/)** — model-agnostic AI coding agent for the terminal (works with Claude, GPT, Gemini or local models). Installed from the `anomalyco/tap` tap.
- <img src="website/public/images/tools/opencode.png" width="18" align="top" /> **[opencode desktop](https://opencode.ai/)** — the opencode desktop client.

### 🐚 Shell — Oh My Zsh

- <img src="website/public/images/tools/oh-my-zsh.png" width="18" align="top" /> **[Oh My Zsh](https://ohmyz.sh/)** — community framework for managing your zsh configuration (themes, plugins, sensible defaults). The dotfiles zsh config is layered on top — see [Shell configuration](#shell-configuration).

### 🌐 Browsers

- <img src="website/public/images/tools/chrome.png" width="18" align="top" /> **[Google Chrome](https://www.google.com/chrome/)** — web browser.

### 💬 Messaging & communication

- <img src="website/public/images/tools/discord.png" width="18" align="top" /> **[Discord](https://discord.com/)** — voice, video and text chat for communities.
- <img src="website/public/images/tools/msteams.png" width="18" align="top" /> **[Microsoft Teams](https://www.microsoft.com/microsoft-teams/)** — team chat, calls and meetings.
- <img src="website/public/images/tools/slack.png" width="18" align="top" /> **[Slack](https://slack.com/)** — team messaging.
- <img src="website/public/images/tools/whatsapp.png" width="18" align="top" /> **[WhatsApp](https://www.whatsapp.com/)** — messaging desktop app.
- <img src="website/public/images/tools/zoom.png" width="18" align="top" /> **[Zoom](https://zoom.us/)** — video conferencing.

### 🧰 Productivity & utilities

- <img src="website/public/images/tools/1password.png" width="18" align="top" /> **[1Password](https://1password.com/)** — password manager and secure vault.
- <img src="website/public/images/tools/1password.png" width="18" align="top" /> **[1Password CLI](https://developer.1password.com/docs/cli/)** — `op`, 1Password from the command line; injects secrets into scripts and tools (pairs with the desktop app's CLI integration).
- <img src="website/public/images/tools/clipy.png" width="18" align="top" /> **[Clipy](https://clipy-app.com/)** — lightweight clipboard-history manager.
- <img src="website/public/images/tools/dropbox.png" width="18" align="top" /> **[Dropbox](https://www.dropbox.com/)** — cloud file storage and sync.
- <img src="website/public/images/tools/microsoft.png" width="18" align="top" /> **[Microsoft Office](https://www.microsoft.com/microsoft-365)** — office suite: Word, Excel, PowerPoint, Outlook and OneNote.
- <img src="website/public/images/tools/rectangle.png" width="18" align="top" /> **[Rectangle](https://rectangleapp.com/)** — window manager; snap and resize windows with keyboard shortcuts.

### 🎵 Media

- <img src="website/public/images/tools/spotify.png" width="18" align="top" /> **[Spotify](https://www.spotify.com/)** — music streaming.

## Shell configuration

`scripts/shell.sh` installs the zsh config as `~/.dotfiles.zsh` (sourced from
`~/.zshrc`) and the tmux config as `~/.tmux.conf` (mouse on, plus a large
scrollback so you can scroll far up to re-read output). On every new shell it:

- loads Homebrew into the environment (Apple Silicon `/opt/homebrew` prefix);
- initialises **nvm** and automatically switches to the Node version in a
  project's `.nvmrc` when you `cd` into it (reverting to the default otherwise);
- initialises **pyenv**;
- defines the `ag` alias for **ripgrep** (`rg`) — muscle memory from
  the_silver_searcher;
- defines the `claudio` command, which launches Claude Code inside a fresh
  **tmux** session each time (so agent-team teammates open in side-by-side panes,
  and several sessions in the same folder stay isolated); and
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
