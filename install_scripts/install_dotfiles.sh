#!/bin/bash

username=`id -nu`

echo Downloading and setting dotfiles for $username...

echo Cloning from github...
git clone https://github.com/PrattFall/dotfiles
mv dotfiles .dotfiles

echo Linking files...
ln -s /home/$username/.dotfiles/.vimrc /home/$username/.nvimrc
ln -s /home/$username/.dotfiles/.vim /home/$username/.nvim
ln -s /home/$username/.dotfiles/.Xresources /home/$username/.Xdefaults
ln -s /home/$username/.dotfiles/.i3 /home/$username/.i3
ln -s /home/$username/.dotfiles/.zshrc /home/$username/.zshrc

echo Fixing some nvim things...
mkdir .nvim/backup
mkdir .nvim/swap
mkdir .nvim/undo

echo Done!
