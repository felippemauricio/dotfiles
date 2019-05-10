# Install Python using pyenv
if [ ! -z "$PYTHON_VERSION" ] then

  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION

  pip install awscli \
    awsebcli

fi
