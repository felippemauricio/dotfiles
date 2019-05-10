# Loads bash_profile
source ~/.bash_profile

# Install Elixir using asdf
if [ ! -z "$ERLANG_VERSION" ] && [ ! -z "$ELIXIR_VERSION" ]; then

  asdf plugin-add erlang
  asdf plugin-add elixir

  # Loads bash_profile
  source ~/.bash_profile

  asdf install erlang $ERLANG_VERSION
  asdf install elixir $ELIXIR_VERSION

fi
