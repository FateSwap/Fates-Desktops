#! /bin/sh

# adds user to basic groups
useradd -m -g users -G wheel,storage,power,audio (add user here)

# you need to visudo and enable root access you self via
# EDITOR=nano visudo
# uncomment %wheel ALL=(ALL) ALL

# if installed xdg-user-dirs, uncomment below
# to install
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update

# xorg
sudo pacman -S xorg-server xorg-apps xorg-xinit

# login manager (default lightdm, uncomment sddm and comment lightdm
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm
# sudo pacman -S sddm
# sudo systemctl enable sddm

# extra useful packages
sudo pacman -S iw wpa_supplicant dialog intel-ucode git reflector lshw
sudo pacman -S wget pulseaudio alsa-utils alsa-plugins pavucontrol xdg
sudo pacman -S neofetch htop

# if on laptop, uncomment below
# sudo pacman -S tlp tlp-rdw powertop
# sudo systemctl enable tlp
# sudo systemctl mask systemd-rfkill.service
# sudo systemctl mask systemd-rfkill.socket

# ssd trim, only use if installing on ssd
# sudo systemctl enable fstrim.timer

# usb
sudo pacman -S udisk2 udiskie

# bluetooth if you have it, uncomment (can change bluetooth manager just replace blueman with prefered)
# sudo pacman -S bluez bluez-utils blueman
# sudo systemctl enable bluetooth

# network manager
pacman -S dhcpcd networkmanager network-manager-applet
systemctl enable dhcpcd
systemctl enable NetworkManager

# fonts, font awesome included
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-roboto terminus-font ttf-font-awesome

# some gui stuff
sudo pacman -S firefox vlc zsh

# lxappearance with arc theme and papirus icons (change if you prefer something else)
sudo pacman -S lxappearance
sudo pacman -S arc-gtk-theme
sudo pacman -S papirus-icon-theme

# tools
sudo pacman -S thunar nitrogen

# installs base bspwm
sudo pacman -S bspwm sxhkd

# makes the 2 directories for bspwm and sxhkd config
mkdir .config/bspwm 
mkdir .config/sxhkd

# copy base config for both to the new directories
cp /usr/share/doc/bspwm/examples/bspwmrc .config/bspwm
cp /usr/share/doc/bspwm/examples/sxhkdrc .config/sxhkd
