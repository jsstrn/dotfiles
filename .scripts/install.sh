#!/usr/bin/env bash

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

# List dependencies to uninstall, apend --force to actually uninstall
brew bundle cleanup # --force

# Upgrade installed dependencies
brew upgrade

# Check and installs dependencies in Brewfile
brew bundle check || brew bundle install
