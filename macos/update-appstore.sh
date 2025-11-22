#!/bin/sh

if [[ $(/opt/homebrew/bin/mas outdated) ]]; then
    read -e -p "Install mac app store updates? [y\N]: " shouldInstall
    if [[ $shouldInstall =~ ^[Yy]$ ]]; then
        /opt/homebrew/bin/mas upgrade
    fi
fi
