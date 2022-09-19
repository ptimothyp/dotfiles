#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"

#TODO update this in the nvim init file.
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/source/repos/dotfiles/nvim/" "$HOME/.config/nvim/"
