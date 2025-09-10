#!/bin/sh

# configure vim
wget https://raw.githubusercontent.com/catppuccin/vim/refs/heads/main/colors/catppuccin_macchiato.vim -O /usr/share/vim/vim90/colors/catppuccin_macchiato.vim
cp vimrc.local /etc/vim/

# configure gnome terminal
dconf load /org/gnome/terminal/ < gnome_terminal.dconf

# TODO: configure zed + zls
