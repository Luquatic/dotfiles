#!/usr/bin/env bash

echo -e "Installing packages... \n"
./install-yazi.sh
./install-man.sh
./install-razer.sh
./install-stow.sh
./install-theme.sh
./install-python.sh
./configure-hyprland.sh
