#!/usr/bin/env bash

HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"
HYPRLAND_MONITOR_CONFIG="$HOME/.config/hypr/monitors.conf"

no() {
  # uncommment line 1
  sed -i '1s/^[[:space:]]*#*[[:space:]]*//' "$HYPRLAND_MONITOR_CONFIG"

  # comment line 2
  sed -i '2s/^[[:space:]]*\([^#]\)/# \1/' "$HYPRLAND_MONITOR_CONFIG"
}

yes() {
  # uncomment line 2
  sed -i '2s/^[[:space:]]*#*[[:space:]]*//' "$HYPRLAND_MONITOR_CONFIG"

  # comment line 1
  sed -i '1s/^[[:space:]]*\([^#]\)/# \1/' "$HYPRLAND_MONITOR_CONFIG"
}
read -p "Use Luquatic's Hyprland monitors configuration? (y/N) " -r
if [[ -z "$REPLY" || $REPLY =~ ^[Nn]$ ]]; then
  no
else
  yes
fi

hyprctl reload
