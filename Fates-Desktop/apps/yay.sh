#! /bin/sh

# installs yay from aur, yay is an aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
