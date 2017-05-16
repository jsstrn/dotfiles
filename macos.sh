#!/bin/bash

echo 'Setting up preferences...'

# Close System Preferences to prevent overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for administrator password upfront
sudo --validate

# User accounts: disable guest login
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

# Autocorrect: disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Autocorrect: disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Autocorrect: disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Autocorrect: disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Autocorrect: disable automatic spelling correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Languages: set preferred language to US English
defaults write NSGlobalDomain AppleLanguages -array 'en-US'

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Dock: place dock on the left
defaults write com.apple.dock orientation -string "left"

# Dock: automatically hide the dock
defaults write com.apple.dock autohide -bool true

# Dock: hidden applications appear as faint icons in the dock
defaults write com.apple.dock showhidden -bool true

# Dock: kill the dock to apply changes
killall Dock

# Finder: show ~/Library folder
chflags nohidden ~/Library

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Keyboard: set a reasonably fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Trackpad: set a reasonably fast trackpad speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 1

# Trackpad: set three-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Hot corner: bottom left screen corner → start screensaver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Hot corner: top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

# Screensaver: require password immediately after sleep or screensaver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Safari: show full URL in search bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Safari: use search match "contains" rather than only "starts with"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Safari: warn about fraudulent websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Safari: update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

# Safari: developer mode
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
