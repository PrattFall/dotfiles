#!/bin/bash

echo Installing font\(s\)...
mkdir ~/.temp
cd ~/.temp
wget http://www.fantascienza.net/leonardo/ar/inconsolatag/inconsolata-g_font.zip

# Inconsolata
unzip inconsolata-g_font.zip
mv Inconsolata-g.otf ~/.fonts/Inconsolata-g.otf
mv Inconsolata-g.ttf ~/.fonts/Inconsolata-g.ttf

# MS fonts (for programs that need them)
yaourt -S ttf-ms-fonts --noconfirm
