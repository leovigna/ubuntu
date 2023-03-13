#!/bin/sh

source install-base.sh
source install-brew.sh
source install-neovim.sh
source install-zsh.sh

cat gterminal.conf | dconf load /org/gnome/terminal/legacy/profiles:/