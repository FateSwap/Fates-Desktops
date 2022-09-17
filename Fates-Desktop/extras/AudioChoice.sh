#! /bin/sh

# BOTH REQUIRE A REBOOT TO WORK

# installs pulse (default)
sudo pacman -S pulseaudio pavucontrol

# installs pipewire and enbales it
# sudo pacman -S pipewire pipewire-pulse
#
# systemctl --user enable pipewire.service
# systemctl --user start pipewire.service
#
# systemctl --user enable pipwire-pulse.service
# systemctl --user start pipwire-pulse.service

