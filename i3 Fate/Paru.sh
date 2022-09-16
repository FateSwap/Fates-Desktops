#! /bin/sh

# paru is an aur helper simular to yay
mkdir Github
cd Github
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
