#!/bin/sh

# Brewfile hash: {{ joinPath .chezmoi.workingTree "homebrew/Brewfile" | include | sha256sum }}

$HOME/bin/dotfiles install bundle
