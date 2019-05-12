# .files

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/felippemauricio/dotfiles/pulls)
[![Platform](https://img.shields.io/badge/platform-macos-lightgrey.svg)](https://www.apple.com/lae/macos/mojave/)

.files — Sensible hacker defaults for macOS. This configures:

- [Homebrew](https://github.com/Homebrew/brew)
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Vim](https://github.com/felippemauricio/vimrc)

![](https://raw.githubusercontent.com/felippemauricio/dotfiles/master/docs/images/dotfiles.png?token=ABGSCLLGMXT3TODIYNK3ZYK44CVIG)

## What do you need?

- git

## How to configure?

```
git submodule init
git submodule update
./configure.sh
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
- [watchman](https://facebook.github.io/watchman)
- [yarn](https://yarnpkg.com/en/)

### Node Packages at this project

- [create-react-app](https://www.npmjs.com/package/create-react-app)
- [expo-cli](https://www.npmjs.com/package/expo-cli)
- [now](https://www.npmjs.com/package/now)
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)
- [react-native-cli](https://www.npmjs.com/package/react-native-cli)

### Python Packages at this project

- [awscli](https://pypi.org/project/awscli)
- [awsebcli](https://pypi.org/project/awsebcli)