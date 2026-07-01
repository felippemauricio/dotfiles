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

- <img src="https://www.google.com/s2/favicons?domain=brew.sh&sz=64" width="18" align="top" /> **[Homebrew](https://brew.sh/)** — the macOS package manager that installs everything on this page. Formulae (`brew`) are command-line tools; casks (`cask`) are GUI applications.

## ⌨️ Command-line tools

Installed as Homebrew **formulae**.

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

## 🐚 Shell — Oh My Zsh

- <img src="https://www.google.com/s2/favicons?domain=ohmyz.sh&sz=64" width="18" align="top" /> **[Oh My Zsh](https://ohmyz.sh/)** — community framework for managing your zsh configuration (themes, plugins, sensible defaults).
- <img src="https://www.google.com/s2/favicons?domain=zsh.org&sz=64" width="18" align="top" /> **The dotfiles zsh config** (`~/.dotfiles.zsh`) — loads Homebrew, initialises **nvm** (with automatic `.nvmrc` switching) and **pyenv**, and opens your `~/Workspace` on every new shell. See [The install scripts](/guide/scripts).

## 🖥️ Applications

Installed as Homebrew **casks**.

### 🧑‍💻 Code editors & terminals

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

## 🟢 Language toolchains

After Homebrew, `languages.sh` sets up the language runtimes through their
version managers:

- <img src="https://www.google.com/s2/favicons?domain=nodejs.org&sz=64" width="18" align="top" /> **[Node.js](https://nodejs.org/)** — the latest LTS via **nvm**, set as the default.
- <img src="https://www.google.com/s2/favicons?domain=python.org&sz=64" width="18" align="top" /> **[Python](https://www.python.org/)** — the latest stable release via **pyenv**, set globally.

See [Version managers](/guide/version-managers) for how these work day to day.
