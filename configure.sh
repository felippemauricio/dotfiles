# Install and configure homebrew
./scripts/homebrew.sh

# Install oh-my-zsh
./scripts/oh-my-zsh.sh

# Configure .bash_profile
cp .bash_profile ~/.bash_profile
printf "\nsource ~/.bash_profile\n" >> ~/.zshrc
