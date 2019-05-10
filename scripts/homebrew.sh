# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Packages
brew install git \
  asdf \
  heroku/brew/heroku \
  jsonpp \
  nvm \
  pyenv \
  the_silver_searcher \
  watch \
  watchman

# Install Packages ignore dependencies
brew install yarn --ignore-dependencies
