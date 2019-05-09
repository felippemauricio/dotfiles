# Install node using nvm
if [ ! -z "$NODE_VERSION" ] then

  # Install node version
  nvm install $NODE_VERSION
  nvm alias default $NODE_VERSION

  # Install Create-React-App
  node install -g create-react-app

fi
