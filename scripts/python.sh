# Loads bash_profile
source ~/.bash_profile

# Install Python using pyenv
if [ ! -z "$PYTHON_VERSION" ]; then

  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION

  # Loads bash_profile
  source ~/.bash_profile

  pip install awscli \
    awsebcli

  pip install --upgrade pip

fi
