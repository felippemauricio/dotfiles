# What gets installed

`./install.sh` provisions a fresh macOS machine end to end: the **Homebrew**
package manager, a set of **command-line tools**, the **Oh My Zsh** shell
framework and config, a curated set of **desktop applications**, and the **Node**
and **Python** toolchains.

Everything except Homebrew and Oh My Zsh (which the install scripts bootstrap
first) is declared in the [`Brewfile`](/reference/brewfile) and applied with
`brew bundle`. To add or remove a package, edit that file and re-run
`brew bundle`.

## 🍺 Homebrew

- **[Homebrew](https://brew.sh/)** <img src="/images/tools/homebrew.png" width="18" align="top" /> — the macOS package manager that installs everything on this page. Formulae (`brew`) are command-line tools; casks (`cask`) are GUI applications.

## ⌨️ Developer command-line tools

Installed as Homebrew **formulae**.

- **[acli](https://developer.atlassian.com/cloud/acli/)** <img src="/images/tools/atlassian.png" width="18" align="top" /> — Atlassian command-line interface: Jira and Confluence from the terminal. Installed from the official `atlassian/acli` tap.
- **[gh](https://cli.github.com/)** <img src="/images/tools/github.png" width="18" align="top" /> — GitHub from the terminal: pull requests, issues and repositories.
- **[git](https://git-scm.com/)** <img src="/images/tools/git.png" width="18" align="top" /> — distributed version control.
- **[glab](https://gitlab.com/gitlab-org/cli)** <img src="/images/tools/gitlab.png" width="18" align="top" /> — GitLab from the terminal: merge requests, issues and pipelines.
- **[jq](https://jqlang.org/)** <img src="/images/tools/jq.png" width="18" align="top" /> — command-line JSON processor for slicing, filtering and transforming JSON.
- **[mitmproxy](https://mitmproxy.org/)** <img src="/images/tools/mitmproxy.png" width="18" align="top" /> — interactive HTTPS proxy for inspecting and debugging HTTP(S) traffic (`mitmproxy`, `mitmweb` and `mitmdump`). Command-line tool, but installed as a Homebrew cask (its only distribution).
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** 🔍 — extremely fast recursive search (`rg`) that respects `.gitignore`.
- **[terraform](https://developer.hashicorp.com/terraform)** <img src="/images/tools/terraform.png" width="18" align="top" /> — infrastructure as code; provisions and manages cloud resources declaratively. Installed from the official `hashicorp/tap`.
- **[tmux](https://github.com/tmux/tmux)** <img src="/images/tools/tmux.png" width="18" align="top" /> — terminal multiplexer: splits the terminal into panes and keeps sessions alive; used for the Claude Code teammate-pane workflow.

### ☁️ Cloud CLIs

- **[awscli](https://aws.amazon.com/cli/)** <img src="/images/tools/aws.png" width="18" align="top" /> — Amazon Web Services command-line interface.
- **[azure-cli](https://learn.microsoft.com/cli/azure/)** <img src="/images/tools/azure.png" width="18" align="top" /> — Microsoft Azure command-line interface.

### 🔄 Version managers

- **[nvm](https://github.com/nvm-sh/nvm)** <img src="/images/tools/nodejs.png" width="18" align="top" /> — Node Version Manager; install and switch between Node.js versions.
- **[pyenv](https://github.com/pyenv/pyenv)** <img src="/images/tools/python.png" width="18" align="top" /> — Python version manager; install and switch between Python versions.

## 🐳 Developer tools

Installed as Homebrew **casks**.

- **[Cursor](https://cursor.com/)** <img src="/images/tools/cursor.png" width="18" align="top" /> — AI-first code editor (a Visual Studio Code fork).
- **[DBeaver](https://dbeaver.io/)** <img src="/images/tools/dbeaver.png" width="18" align="top" /> — universal database client; browse schemas, run SQL and inspect data. Installed as the free Community Edition.
- **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** <img src="/images/tools/docker.png" width="18" align="top" /> — builds, runs and manages Docker containers locally.
- **[iTerm2](https://iterm2.com/)** <img src="/images/tools/iterm2.png" width="18" align="top" /> — feature-rich terminal emulator for macOS.
- **[Postman](https://www.postman.com/)** <img src="/images/tools/postman.png" width="18" align="top" /> — API client for building and testing HTTP requests.
- **[Visual Studio Code](https://code.visualstudio.com/)** <img src="/images/tools/vscode.png" width="18" align="top" /> — extensible code editor.
- **[Zed](https://zed.dev/)** <img src="/images/tools/zed.png" width="18" align="top" /> — high-performance, collaborative code editor.

## 🧠 AI & machine learning

Installed as Homebrew **formulae**.

- **[apfel](https://apfel.franzai.com)** 🍏 — Apple Intelligence from the command line, with an OpenAI-compatible API server.
- **[ollama](https://ollama.com/)** 🦙 — runs open large language models locally (Llama, Gemma, Qwen and more), with an OpenAI-compatible API server. Start the background service with `brew services start ollama`.

## 🤖 AI assistants & coding agents

Installed as Homebrew **casks**.

- **[ChatGPT Atlas](https://openai.com/)** <img src="/images/tools/openai.png" width="18" align="top" /> — OpenAI's ChatGPT desktop browser.
- **[Claude](https://claude.ai/)** <img src="/images/tools/claude-ai.png" width="18" align="top" /> — Anthropic's Claude desktop app.
- **[Claude Code](https://claude.com/product/claude-code)** <img src="/images/tools/claude.png" width="18" align="top" /> — Anthropic's agentic coding tool for the terminal.
- **[Codex](https://github.com/openai/codex)** <img src="/images/tools/openai.png" width="18" align="top" /> — OpenAI's command-line coding agent.
- **[Codex app](https://openai.com/codex)** <img src="/images/tools/openai.png" width="18" align="top" /> — OpenAI's Codex desktop app.

## 🐚 Shell — Oh My Zsh

- **[Oh My Zsh](https://ohmyz.sh/)** <img src="/images/tools/oh-my-zsh.png" width="18" align="top" /> — community framework for managing your zsh configuration (themes, plugins, sensible defaults).
- **The dotfiles zsh config** (`~/.dotfiles.zsh`) <img src="/images/tools/zsh.png" width="18" align="top" /> — loads Homebrew, initialises **nvm** (with automatic `.nvmrc` switching) and **pyenv**, and opens your `~/Workspace` on every new shell. See [The install scripts](/guide/scripts).

## 🌐 Browsers

Installed as Homebrew **casks**.

- **[Firefox](https://www.mozilla.org/firefox/)** <img src="/images/tools/firefox.png" width="18" align="top" /> — web browser.
- **[Google Chrome](https://www.google.com/chrome/)** <img src="/images/tools/google.png" width="18" align="top" /> — web browser.

## 💬 Messaging & communication

Installed as Homebrew **casks**.

- **[Discord](https://discord.com/)** <img src="/images/tools/discord.png" width="18" align="top" /> — voice, video and text chat for communities.
- **[Microsoft Teams](https://www.microsoft.com/microsoft-teams/)** <img src="/images/tools/msteams.png" width="18" align="top" /> — team chat, calls and meetings.
- **[Slack](https://slack.com/)** <img src="/images/tools/slack.png" width="18" align="top" /> — team messaging.
- **[WhatsApp](https://www.whatsapp.com/)** <img src="/images/tools/whatsapp.png" width="18" align="top" /> — messaging desktop app.
- **[Zoom](https://zoom.us/)** <img src="/images/tools/zoom.png" width="18" align="top" /> — video conferencing.

## 🧰 Productivity & utilities

Installed as Homebrew **casks**.

- **[1Password](https://1password.com/)** <img src="/images/tools/1password.png" width="18" align="top" /> — password manager and secure vault.
- **[1Password CLI](https://developer.1password.com/docs/cli/)** <img src="/images/tools/1password.png" width="18" align="top" /> — `op`, 1Password from the command line; injects secrets into scripts and tools (pairs with the desktop app's CLI integration).
- **[Clipy](https://clipy-app.com/)** <img src="/images/tools/clipy.png" width="18" align="top" /> — lightweight clipboard-history manager.
- **[Dropbox](https://www.dropbox.com/)** <img src="/images/tools/dropbox.png" width="18" align="top" /> — cloud file storage and sync.
- **[Microsoft Office](https://www.microsoft.com/microsoft-365)** <img src="/images/tools/microsoft.png" width="18" align="top" /> — office suite: Word, Excel, PowerPoint, Outlook and OneNote.
- **[Rectangle](https://rectangleapp.com/)** <img src="/images/tools/rectangle.png" width="18" align="top" /> — window manager; snap and resize windows with keyboard shortcuts.

## 🎵 Media

Installed as a Homebrew **cask**.

- **[Spotify](https://www.spotify.com/)** <img src="/images/tools/spotify.png" width="18" align="top" /> — music streaming.

## 🟢 Language toolchains

After Homebrew, `languages.sh` sets up the language runtimes through their
version managers:

- **[Node.js](https://nodejs.org/)** <img src="/images/tools/nodejs.png" width="18" align="top" /> — the latest LTS via **nvm**, set as the default.
- **[Python](https://www.python.org/)** <img src="/images/tools/python.png" width="18" align="top" /> — the latest stable release via **pyenv**, set globally.

See [Version managers](/guide/version-managers) for how these work day to day.
