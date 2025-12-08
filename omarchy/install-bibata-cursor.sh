#!/usr/bin/env bash

curl -LO https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz
tar -xvf Bibata-Modern-Classic.tar.xz
if [[ -d "/usr/share/icons/Bibata-Modern-Classic" ]]; then
  echo "Bibata Cursor is already installed. Aborting."
  rm -r Bibata-Modern-Classic
  rm Bibata-Modern-Classic.tar.xz
  exit 1
fi

sudo mv Bibata-Modern-Classic /usr/share/icons/
rm Bibata-Modern-Classic.tar.xz
