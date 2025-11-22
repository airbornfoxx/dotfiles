#!/bin/sh

# MacOS Dock hash: {{ joinPath .chezmoi.workingTree "macos/setup-dock.sh" | include | sha256sum }}

$HOME/bin/dotfiles macos dock
