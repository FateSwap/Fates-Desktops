#! /bin/sh

# paru is an aur helper simular to yay
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
