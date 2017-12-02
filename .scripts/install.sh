 #!/bin/bash

set -e

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
	xcode-select --install
	exit 0
fi

# Install Homebrew
which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor || exit $?

# Update Homebrew
brew update

# Install Homebrew Bundle
brew tap 'homebrew/bundle'

# List dependencies to uninstall, apend --force to actually uninstall
brew bundle cleanup # --force

# Upgrade installed dependencies
brew upgrade

# Check and installs dependencies in Brewfile
brew bundle check || brew bundle install

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change shell to Zsh
chsh -s $(which zsh)
