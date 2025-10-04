#!/bin/sh

# install 0xProto nerd-font
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/0xProto.zip
mkdir -p $HOME/.fonts && (unzip -f 0xProto.zip $HOME/.fonts)
fc-cache -fv
rm 0XProto.zip

# configure gnome terminal + zsh
dconf load /org/gnome/terminal/ < gnome_terminal.dconf
chsh -s /usr/bin/zsh $USER
cp .zshrc $HOME

# TODO: configure zed + zls
