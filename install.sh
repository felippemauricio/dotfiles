# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Packages
brew install git \
  heroku/brew/heroku \
  jsonpp \
  nvm \
  pyenv \
  the_silver_searcher \
  watch \
  yarn

# Instal now
brew cask install now

# Remove unnecessary dependencies - Install by nvm and pyenv after
brew uninstall node --ignore-dependencies

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 