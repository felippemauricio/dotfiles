# Install and configure homebrew
./scripts/homebrew.sh

# Install oh-my-zsh
./scripts/oh-my-zsh.sh

# Configure .bash_profile
cp .bash_profile ~/
printf "\nsource ~/.bash_profile" >> ~/.zshrc
source ~/.bash_profile

# Install node using nvm
./scripts/node.sh

# Install Python using pyenv
./scripts/python.sh

# Configure asdf

