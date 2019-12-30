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
brew cask install docker \
  google-backup-and-sync \
  google-chrome \
  iterm2 \
  postman \
  skype \
  slack \
  spotify \
  visual-studio-code \
  whatsapp
