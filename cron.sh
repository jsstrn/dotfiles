#!/bin/bash

# Update brew
brew update

# Upgrade all brew packages
brew upgrade

# Remove old versions of packages
brew cleanup
brew cask cleanup

# Upgrade all Atom packages
apm upgrade -c false
