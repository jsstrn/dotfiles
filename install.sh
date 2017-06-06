#!/bin/bash

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

# Uninstall dependencies not listed in Brewfile
brew bundle cleanup --force

# Upgrade installed dependencies
brew upgrade --all

# Check and installs dependencies in Brewfile
brew bundle check || brew bundle install

# Install Oh My Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Change shell to Zsh
chsh -s /bin/zsh
