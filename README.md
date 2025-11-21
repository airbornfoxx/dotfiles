# dotfiles


## Prerequisites
```
sudo xcode-select --install
sudo softwareupdate --install --all --restart
```

## Download & Install
- chezmoi: https://www.chezmoi.io/
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/bin init airbornfoxx --config $HOME/.config/dotfiles/dotfiles.toml --source $HOME/.dotfiles --config-path $HOME/.config/dotfiles/dotfiles.toml --apply && rm -rf $HOME/bin
```

