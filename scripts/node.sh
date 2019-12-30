# Loads bash_profile
source ~/.bash_profile

if [ ! -z "$NODE_VERSION" ]; then

  # Install node version
  nvm install $NODE_VERSION
  nvm alias default $NODE_VERSION

  # Loads bash_profile
  source ~/.bash_profile

  # Install node dependencies
  npm install -g create-react-app \
    npm \
    npm-check-updates

fi
