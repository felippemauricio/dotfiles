# Customising the Brewfile

The `Brewfile` is the single source of truth for everything Homebrew installs.
It is applied by `scripts/homebrew.sh` with `brew bundle`.

## Syntax

```ruby
brew "git"            # a command-line formula
cask "google-chrome"  # a GUI application
```

## Add a package

1. Find the name:

   ```sh
   brew search <name>
   ```

2. Add a `brew "…"` (CLI) or `cask "…"` (app) line to the `Brewfile`.
3. Apply it:

   ```sh
   brew bundle --file=Brewfile
   ```

## Remove a package

Delete its line from the `Brewfile`, then remove anything no longer listed:

```sh
brew bundle cleanup --file=Brewfile        # preview what would be removed
brew bundle cleanup --file=Brewfile --force # actually remove it
```

## Check what is missing

```sh
brew bundle check --file=Brewfile
```

::: tip
Edit the `Brewfile` — never the install scripts — when changing what gets
installed. The scripts only read it.
:::
