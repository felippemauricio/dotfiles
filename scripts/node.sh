# Install node using nvm
if [ ! -z "$NODE_VERSION" ] then

  # Install node version
  nvm install $NODE_VERSION
  nvm alias default $NODE_VERSION

  # Install node dependencies
  node install -g create-react-app \
    expo-cli \
    now \
    npm \
    npm-check-updates \
    react-native-cli

fi
