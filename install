#!/bin/bash

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
	xcode-select --install
	exit 0
fi

# Install Homebrew
which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor || exit $?

# Install Homebrew Bundle
brew tap 'homebrew/bundle'

# Run Homebrew Bundle (installs items in Brewfile)
brew bundle check || brew bundle install
