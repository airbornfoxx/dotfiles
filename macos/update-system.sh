#!/bin/sh

if /usr/sbin/softwareupdate --list | grep -q "Software Update found the following new or updated software:"; then
    read -e -p "Install system updates? This will restart your machine if necessary. [y\N]: " shouldInstall
    if [[ $shouldInstall =~ ^[Yy]$ ]]; then
        /usr/bin/sudo /usr/sbin/softwareupdate --install --all
    fi
fi
