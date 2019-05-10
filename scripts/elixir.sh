# Loads bash_profile
source ~/.bash_profile

# Install Elixir using asdf
if [ ! -z "$ERLANG_VERSION" ] && [ ! -z "$ELIXIR_VERSION" ]; then

  asdf plugin-add erlang
  asdf plugin-add elixir

  asdf install erlang $ERLANG_VERSION
  asdf global erlang $ERLANG_VERSION

  asdf install elixir $ELIXIR_VERSION
  asdf global elixir $ELIXIR_VERSION

fi
