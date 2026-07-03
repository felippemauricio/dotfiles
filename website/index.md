---
layout: home

hero:
  name: felippemauricio/dotfiles
  text: A fresh Mac, set up in one command
  tagline: Sensible developer defaults for macOS on Apple Silicon — Homebrew, Oh My Zsh, a tidy zsh config, and the Node and Python toolchains. Declarative and easy to maintain.
  actions:
    - theme: brand
      text: Get started
      link: /guide/getting-started
    - theme: alt
      text: Installation
      link: /guide/installation
    - theme: alt
      text: GitHub
      link: https://github.com/felippemauricio/dotfiles

features:
  - title: One command
    details: Run ./install.sh and walk away. It installs Homebrew, Oh My Zsh, the shell config and the language toolchains in order.
  - title: Declarative packages
    details: Every formula and app lives in a Brewfile installed with brew bundle. Add or remove a package by editing one file.
  - title: Apple Silicon native
    details: Paths target /opt/homebrew, not the Intel /usr/local. Built for the Mac you actually have.
  - title: Version managers
    details: Node via nvm and Python via pyenv. The shell auto-switches to a project's .nvmrc when you enter its directory.
  - title: Just shell scripts
    details: No framework, no magic. Each step is a small script you can read and run on its own.
  - title: Yours to fork
    details: A starting point, not a straightjacket. Clone it, trim the Brewfile and make it your own.
---
