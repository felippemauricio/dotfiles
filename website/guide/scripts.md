# The install scripts

`install.sh` is a thin orchestrator — it runs the scripts in `scripts/` in order.
Each one is small, `set -euo pipefail`, and safe to run on its own.

## `scripts/homebrew.sh`

Installs Homebrew with the official install script if it is not already present,
makes `brew` available on the current shell, then runs `brew bundle` against the
[`Brewfile`](/reference/brewfile).

## `scripts/oh-my-zsh.sh`

Installs the Xcode command-line tools and then Oh My Zsh, unattended — it does
not change your shell or launch a nested zsh.

## `scripts/shell.sh`

Copies `scripts/zshrc` to `~/.dotfiles.zsh` (sourced from `~/.zshrc`, once) and
`scripts/tmux.conf` to `~/.tmux.conf` (mouse on, plus a large scrollback buffer).
The zsh config sets up Homebrew, nvm and pyenv, defines the `ag` alias for ripgrep
(`rg`) and the `claudio` command (launches Claude Code inside a tmux session for
agent-team split panes), and opens your `~/Workspace` folder on a new shell.

## `scripts/languages.sh`

Loads the shell config so nvm and pyenv are available, then installs the latest
Node LTS and the latest stable Python, setting each as the default.

## Running a single step

Because each script stands alone, you can re-run just one part:

```sh
./scripts/homebrew.sh    # re-sync packages from the Brewfile
./scripts/languages.sh   # reinstall the language runtimes
```
