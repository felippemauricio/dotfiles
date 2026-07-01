# What gets installed

Everything Homebrew installs is declared in the [`Brewfile`](/reference/brewfile)
and applied with `brew bundle`. To add or remove something, edit that file and
re-run `brew bundle`.

## Command-line tools

- [git](https://git-scm.com/)
- [gh](https://cli.github.com/) — GitHub CLI
- [nvm](https://github.com/nvm-sh/nvm) — Node version manager
- [pyenv](https://github.com/pyenv/pyenv) — Python version manager
- [awscli](https://aws.amazon.com/cli/) — AWS command-line interface
- [azure-cli](https://learn.microsoft.com/cli/azure/) — Azure command-line interface
- [jq](https://jqlang.github.io/jq/) — JSON processor
- [ripgrep](https://github.com/BurntSushi/ripgrep) — fast recursive search
- [watch](https://formulae.brew.sh/formula/watch) — run a command periodically

## Applications

1Password, ChatGPT Atlas, Claude, Claude Code, Clipy, Codex, Codex app, Cursor,
Docker Desktop, Dropbox, Firefox, Google Chrome, iTerm2, Microsoft Teams,
Postman, Rectangle, Slack, Spotify, Visual Studio Code, WhatsApp, Zed and Zoom.

## Languages

After Homebrew, the installer sets up the language runtimes through their version
managers:

- **Node** — the latest LTS via nvm, set as the default.
- **Python** — the latest stable release via pyenv, set globally.

See [Version managers](/guide/version-managers) for how these work day to day.
