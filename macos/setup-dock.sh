#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Apps.app"
dockutil --no-restart --add "/System/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "$HOME/Applications/PhpStorm.app"
dockutil --no-restart --add "/Applications/Tinkerwell.app"
dockutil --no-restart --add "/Applications/TablePlus.app"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock
