#!/usr/bin/env bash

ORIGINAL_DIR=$(pwd)

yay -S --noconfirm --needed stow

echo -e "\nStowing dotfiles...\n"
cd "$(dirname "$0")/.."
stow -v --adopt .
git reset --hard
cd "$ORIGINAL_DIR"
