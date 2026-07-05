# CLAUDE.md

Guidance for AI agents working in this repository.

## What this is

A personal macOS dotfiles repository. Running `./install.sh` provisions a fresh
machine: Homebrew and its packages, Oh My Zsh, the zsh configuration, and the
Node and Python toolchains. It targets **macOS on Apple Silicon**, so Homebrew
lives at `/opt/homebrew` and shell paths must use that prefix (never
`/usr/local`).

## Structure

```
dotfiles/
├── Brewfile           # declarative list of Homebrew formulae and casks
├── install.sh         # entry point; runs the scripts below in order
├── website/           # VitePress docs site, deployed to GitHub Pages
└── scripts/
    ├── homebrew.sh    # installs Homebrew, then `brew bundle`
    ├── oh-my-zsh.sh   # installs the Xcode CLI tools and Oh My Zsh
    ├── shell.sh       # installs the zsh config and sources it from ~/.zshrc
    ├── zshrc          # the zsh config (nvm + pyenv); copied to ~/.dotfiles.zsh
    └── languages.sh   # installs Node (nvm) and Python (pyenv)
```

## Conventions

- **Add or remove packages by editing the `Brewfile`**, never by editing the
  scripts. Formulae use `brew "name"`; applications use `cask "name"`.
- **A package change lands in three places, in the same commit:** the
  `Brewfile`, the tool list in the `README.md`, and the website page
  (`website/guide/what-gets-installed.md`). Updating only one or two of them is
  an incomplete change — sweep all three before opening the PR.
- **Keep every list alphabetical.** The `Brewfile` sections (formulae sorted by
  tool name, ignoring a tap prefix), and the tool lists in the `README` and on
  the website, stay in alphabetical order within each section or category.
- **The website must actually ship.** The docs site (`website/`) deploys to
  <https://felippemauricio.github.io/dotfiles/> via the "Deploy docs to Pages"
  workflow (`.github/workflows/pages.yml`) on every push to `master`. A change
  is not done at merge time: confirm the workflow run for the merge commit
  succeeded (`gh run list --workflow=pages.yml`). The deploy step fails
  transiently ("Deployment failed, try again later") — when it does, re-run it
  with `gh run rerun <run-id> --failed` until the site is live.
- **Version managers:** Node is managed with nvm and Python with pyenv. Do not
  introduce asdf or mise.
- Every script must stay runnable on its own and is `set -euo pipefail`.
- The shell config is installed as `~/.dotfiles.zsh` and sourced from `~/.zshrc`.
- All generated content (docs, comments, commit messages) is written in
  Australian English.
