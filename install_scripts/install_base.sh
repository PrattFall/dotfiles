#!/bin/bash

username=`id -nu`

# Install all the stuff needed to install other stuff
sudo pacman -S zsh git unzip wget

echo Changing the default shell for $username to ZSH...
chsh -s /bin/zsh

# setup AUR build environment
echo Setting up AUR builds location at ~/.builds...
mkdir ~/.builds
cd ~/.builds

# install yaourt
echo Downloading prerequisites for Yaourt...
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git

cd package-query
makepkg -sri

cd ../yaourt
makepkg -sri

cd ..

echo Yaourt finished installing!

# install nvim
yaourt -S neovim-git --noconfirm

# install urxvt
yaourt -S rxvt-unicode-256xresources --noconfirm

