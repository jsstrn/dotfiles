#!/bin/bash

echo 'Setting up preferences...'

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

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Dock: place dock on the left
defaults write com.apple.Dock orientation -string "left"

# Dock: automatically hide the dock
defaults write com.apple.dock autohide -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

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

# Login items
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Alfred", path: "/Applications/Alfred 3.app", hidden: false }'
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Bartender", path: "/Applications/Bartender 2.app", hidden: false }'
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Flux", path: "/Applications/Flux.app", hidden: false }'
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Itsycal", path: "/Applications/Itsycal.app", hidden: false }'
osascript -e 'tell application "System Events" to make login item at end with properties { name: "ShiftIt", path: "/Applications/ShiftIt.app", hidden: false }'
osascript -e 'tell application "System Events" to make login item at end with properties { name: "TunnelBear", path: "/Applications/TunnelBear.app", hidden: false }'

echo 'Done setting up preferences'