#!/usr/bin/env zsh
mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/nvim/plugin

pushd $DOTFILES # path in zshrc
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "Installing $folder"
  stow -D $folder
  stow $folder
done
popd
