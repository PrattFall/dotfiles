#!/bin/bash

# Run this once you have:
# - created a user (with password and home folder)
# - added that user to the sudoers list
# - logged in as that user
# This script SHOULD NOT be run as root

source install_base.sh
source install_gui_base.sh
source install_dotfiles.sh
source install_fonts.sh
source install_multimedia.sh

# installing infinality:
# sudo pacman-key -r 962DDE58
# sudo pacman-key -lsign-key 962DDE58
# sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
## as a side note it probably won't let you do these two verbatim
# sudo echo [infinality-bundle] >> /etc/pacman.conf
# sudo echo Server = http://bohoomil.com/repo/$arch >> /etc/pacman.conf
