#!/bin/bash

echo Installing GUI-related stuff...

# install X
sudo pacman -S xorg xorg-xinit
cp /etc/X11/xinit/xinitrc ~/.xinitrc #CHANGE THIS

echo Looks like X finished!

# install i3
yaourt -S i3-gaps-git --noconfirm
sudo pacman -S i3status

echo i3 too!

# install compton compositor
yaourt -S compton --noconfirm

echo ...then compton!
