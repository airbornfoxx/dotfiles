#!/bin/sh

# MacOS Defaults hash: {{ joinPath .chezmoi.workingTree "macos/apply-defaults.sh" | include | sha256sum }}

$HOME/bin/dotfiles macos defaults
