#! /bin/sh

# use this when arch is installed and update works, in the ttyl console

# adds user to basic groups
useradd -m -g users -G wheel,storage,power,audio (add user here, remov>

# you need to visudo and enable root access you self via
# EDITOR=nano visudo
# uncomment %wheel ALL=(ALL) ALL

# if installed xdg-user-dirs, uncomment below
# to install
# sudo pacman -S xdg-user-dirs
# xdg-user-dirs-update

# xorg
sudo pacman -S xorg-server xorg-apps xorg-xinit

# login manager (default lightdm, uncomment sddm and comment lightdm f>
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

# bluetooth if you have it, uncomment (can change bluetooth manager ju>
# sudo pacman -S bluez bluez-utils blueman
# sudo systemctl enable bluetooth

# fonts, font awesome included
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefo>

# some gui stuff
sudo pacman -S firefox vlc zsh

# lxappearance with arc theme and papirus icons (change if you prefer >
sudo pacman -S arc-gtk-theme
sudo pacman -S papirus-icon-theme

# tools
sudo pacman -S thunar nitrogen

# network manager
pacman -S dhcpcd networkmanager network-manager-applet
systemctl enable dhcpcd
systemctl enable NetworkManager

# updates system
sudo pacman -Syu

# installs xfce
sudo pacman -S xfce4 xfce4-goodies

sudo reboot
