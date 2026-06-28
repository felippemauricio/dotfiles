# Version managers

Node is managed with **nvm** and Python with **pyenv**. Both are installed by
Homebrew and loaded by the zsh configuration, so they are ready in every shell.

## Node — nvm

The installer installs the latest LTS and sets it as the default:

```sh
nvm install --lts
nvm alias default 'lts/*'
```

The shell config adds a `chpwd` hook that runs whenever you change directory: if
the folder has an `.nvmrc`, it switches to that Node version automatically;
otherwise it reverts to the default.

```sh
cd my-project   # contains .nvmrc → nvm use runs for you
```

To install and use another version by hand:

```sh
nvm install 20
nvm use 20
```

## Python — pyenv

The installer installs the latest stable release and sets it globally:

```sh
pyenv install 3.x.y
pyenv global 3.x.y
```

To switch versions:

```sh
pyenv install 3.12.0
pyenv global 3.12.0     # or: pyenv local 3.12.0 inside a project
```

## Why not asdf or mise?

These dotfiles deliberately keep the two focused tools most people already know —
nvm for Node and pyenv for Python — rather than a single multi-language manager.
