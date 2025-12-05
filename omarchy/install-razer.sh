#!/usr/bin/env bash

read -p "Do you have any Razer devices? (y/N) " -r && [[ $REPLY =~ ^[Yy]$ ]] && main

main() {
  yay -S --noconfirm --needed openrazer-daemon
  yay -S --noconfigm --needed polychromatic
}
