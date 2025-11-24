# dotfiles


## Pre-Install Steps
1. Update MacOS Software (General > Software Update)
1. Sign in to iCloud and App Store
1. Give Terminal Full Disk Access (Privacy & Security)
1. Install Command Line Tools
```
sudo xcode-select --install
```

## Download & Install
- chezmoi: https://www.chezmoi.io/
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/bin init airbornfoxx --config $HOME/.config/dotfiles/dotfiles.toml --source $HOME/.dotfiles --config-path $HOME/.config/dotfiles/dotfiles.toml --apply && rm -rf $HOME/bin
```

## Post-Install Steps
1. Install vim plugins (open vim and run)
    ```
    :PlugInstall
    ```
1. Configure powerlevel10k theme
    ```
    p10k configure
    ```
1. Install Alfred Dracula Theme (Double-click ```alfred/dracula.alfredappearance```)

