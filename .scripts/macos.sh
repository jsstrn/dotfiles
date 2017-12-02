#!/usr/bin/env bash

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
defaults write NSGlobalDomain AppleLanguages -array "en-US"

# Languages: set spelling suggestions to US English
defaults write NSGlobalDomain NSPreferredSpellServerLanguage -string "en"
defaults write NSGlobalDomain NSPreferredSpellServerVendors -dict "en" "Apple"
defaults write NSGlobalDomain NSSpellCheckerAutomaticallyIdentifiesLanguages -int 0

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Menu bar: display clock without day of the week
defaults write com.apple.menuextra.clock DateFormat -string "h:mm a"

# Dock: place dock on the right
defaults write com.apple.dock orientation -string "right"

# Dock: automatically hide the dock
defaults write com.apple.dock autohide -bool true

# Dock: hidden applications appear as faint icons in the dock
defaults write com.apple.dock showhidden -bool true

# Finder: show ~/Library folder
chflags nohidden ~/Library

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keyboard: set a reasonably fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Trackpad: enable tap to click behavior
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# Trackpad: set a reasonably fast trackpad speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 1

# Trackpad: set three-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Hot corner: possible values
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Hot corner: bottom left screen corner → start screensaver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Screensaver: require password immediately after sleep or screensaver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Screensaver: set screensaver to Fliqlo
defaults -currentHost write com.apple.screensaver "moduleDict" -dict-add "moduleName" -string "Fliqlo"
defaults -currentHost write com.apple.screensaver "moduleDict" -dict-add "path" -string $HOME"/Library/Screen Savers/Fliqlo.saver")
defaults -currentHost write com.apple.screensaver "moduleDict" -dict-add "type" -int "0"

# Safari: show status bar
defaults write com.apple.Safari ShowStatusBar -bool true

# Safari: set DuckDuckGo as the default search engine
defaults write com.apple.Safari SearchProviderIdentifier "com.duckduckgo"
defaults write com.apple.Safari SearchProviderIdentifierMigratedToSystemPreference -int 0

# Safari: always prompt for download folder
defaults write com.apple.Safari AlwaysPromptForDownloadFolder -int 1

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

# Restart applications
killall Dock
killall Finder
killall Safari
