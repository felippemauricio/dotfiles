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
  watch

# Install Packages ignore dependencies
brew install yarn --ignore-dependencies

# Install Programs
brew cask install 1password \
  autoconf \
  clipy \
  discord \
  docker \
  dropbox \
  gitkraken \
  google-chrome \
  iterm2 \
  microsoft-office \
  postman \
  rectangle \
  slack \
  spotify \
  visual-studio-code \
  whatsapp \
  wxmac \
  zoomus
