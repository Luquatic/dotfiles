#!/bin/sh

install_pip() {
  if ! command -v python >/dev/null 2>&1; then
    echo -e "Couldn't install python. Aborting.\n"
    exit 1
  fi

  echo -e "Installing pip...\n"
  python -m ensurepip --upgrade
  install_waybar_weather_requirements
}

install_waybar_weather_requirements() {
  if ! command -v pip >/dev/null 2>&1; then
    echo -e "Couldn't install pip. Aborting.\n"
    exit 1
  fi
  echo -e "Installing python requirements for waybar-weather...\n"
  pip install requests
  pip install dotenv

  omarchy-toggle-waybar
  sleep 0.3s
  omarchy-toggle-waybar
}

main() {
  echo -e "Installing python...\n"
  omarchy-install-dev-env python
  install_pip
}

main
