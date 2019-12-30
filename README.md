# .dotfiles

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/felippemauricio/dotfiles/blob/master/LICENSE.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/felippemauricio/dotfiles/pulls)
[![Platform](https://img.shields.io/badge/platform-macos-lightgrey.svg)](https://www.apple.com/lae/macos/mojave/)

.files — Sensible hacker defaults for macOS. This configures:

- [Homebrew](https://github.com/Homebrew/brew)
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Vim](https://github.com/felippemauricio/vimrc)

<img src="https://raw.githubusercontent.com/felippemauricio/dotfiles/master/docs/images/dotfiles.png?token=ABGSCLLGMXT3TODIYNK3ZYK44CVIG" width="600" />

## How to configure?

```sh
./configure.sh
```

## How to configure vimrc?

```sh
git submodule init
git submodule update
./lib/vimrc/install.sh
```

## How to configure languages?

You can configure same languages, with this project.

### Elixir
```sh
ERLANG_VERSION=<number> 
ELIXIR_VERSION=<number>
./scripts/elixir.sh
```

### Node
```sh
NODE_VERSION=<number> 
./scripts/node.sh
```

### Python
```sh
PYTHON_VERSION=<number> 
./scripts/python.sh
```

## Packages details

### Homebrew Packages at this project

- [asdf](https://github.com/asdf-vm/asdf)
- [git](https://git-scm.com/)
- [heroku-cli](https://devcenter.heroku.com/articles/heroku-cli)
- [jsonpp](https://jmhodges.github.io/jsonpp/)
- [nvm](https://github.com/creationix/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [silver searcher](https://github.com/ggreer/the_silver_searcher)
- [watch](http://osxdaily.com/2010/08/22/install-watch-command-on-os-x/)
- [yarn](https://yarnpkg.com/en/)

### Node Packages at this project

- [create-react-app](https://www.npmjs.com/package/create-react-app)
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)

### Python Packages at this project

- [awscli](https://pypi.org/project/awscli)
- [awsebcli](https://pypi.org/project/awsebcli)

## Programs details

- [docker](https://www.docker.com/)
- [google-backup-and-sync](https://www.google.com/drive/)
- [google-chrome](https://www.google.com/chrome/)
- [iterm2](https://iterm2.com/)
- [postman](https://www.getpostman.com/)
- [skype](https://www.skype.com/en/)
- [slack](https://slack.com/intl/pt-br/)
- [spotify](https://www.spotify.com/br/)
- [visual-studio-code](https://code.visualstudio.com/)
- [whatsapp](https://www.whatsapp.com/)

## License

Licensed under the MIT License, Copyright © 2019-present Felippe Maurício.
