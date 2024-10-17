#!/bin/bash

PACKAGES=(
    "git"
    "vim"
    "htop"
    "curl"
    "tmux"
)

# Update the package database
sudo pacman -Syu

# Install packages
for PACKAGE in "${PACKAGES[@]}"; do
    sudo pacman -S --noconfirm "$PACKAGE"
done

echo "All packages installed."
