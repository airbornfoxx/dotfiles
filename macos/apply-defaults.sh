#!/bin/sh

# Ask for the administrator password upfront
sudo -v

###########################################################
### General
###########################################################

# Automatically switch appearance between Light and Dark
defaults write -globalDomain AppleInterfaceStyleSwitchesAutomatically -bool true

# Sets highlight color to Material UI Green
defaults write -globalDomain AppleHighlightColor -string "0.407843137 0.803921569 0.768627451"

# Expand save panel by default
defaults write -globalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write -globalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write -globalDomain PMPrintingExpandedStateForPrint -bool true
defaults write -globalDomain PMPrintingExpandedStateForPrint2 -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false


###########################################################
### Dock
###########################################################

# Set the icon size of Dock items to 60 pixels
defaults write com.apple.dock tilesize -int 60

# Place the dock on the bottom
defaults write com.apple.dock "orientation" -string "bottom"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don't show recently used applications in the Dock
defaults write com.apple.dock show-recents -bool false


###########################################################
### Menu Bar
###########################################################

# # Set menu bar items
defaults write com.apple.systemuiserver menuExtras -array-add \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# Set date format in menu bar
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm a"


###########################################################
### Software Updates
###########################################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -bool true

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -bool true

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true


###########################################################
### Trackpad
###########################################################

# Disable “natural” scrolling
defaults write -globalDomain com.apple.swipescrolldirection -bool false

# Set tap to click
defaults write -globalDomain com.apple.mouse.tapBehavior -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true


###########################################################
### Battery
###########################################################

# Sleep the display after 5 minutes
sudo pmset -a displaysleep 5

# Disable machine sleep while charging
sudo pmset -c sleep 0

# Set machine sleep to 15 minutes on battery
sudo pmset -b sleep 15

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

###########################################################
### Finder
###########################################################

# Set default new finder window target to home directory
defaults write com.apple.finder NewWindowTarget PfHm

# Always open everything in Finder's list view.
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Keep folders on top
defaults write com.apple.finder FXSortFoldersFirst -bool true
defaults write com.apple.finder FXSortFoldersFirstOnDesktop -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false


###########################################################
### Safari
###########################################################

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

###########################################################
### Google Chrome
###########################################################

# Disable the all too sensitive backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

###########################################################
### Kill affected applications
###########################################################

for app in "Dock" "Finder" "Google Chrome" "Safari" "SystemUIServer"; do
    killall "${app}" &> /dev/null || true
done
