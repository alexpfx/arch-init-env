#!/bin/bash

# Define a lista de ferramentas
tools=("go" "micro" "github-cli")
sway_tools=("sway" "swaybg" "foot")
other=("waybar" "wtype" "ydotool" "slurp" "grim" "swappy" "rofi-lbonn-wayland-git" "qt5-wayland" "qt6-wayland" "dunst" "xdg-desktop-portal-wlr")

all_tools=("${tools[@]}" "${sway_tools[@]}" "${other[@]}")

# Instalação dos pacotes
sudo ls -la
yay -Sy

# Itera sobre a lista de ferramentas e instala cada uma
for pk in "${all_tools[@]}"
do
    yay -S -q --needed --noconfirm "$pk"
done

# Clona o repositório e executa o make
mkdir -p /data/git
git clone https://github.com/alexpfx/go-dotfiles /data/git/go-dotfiles
cd /data/git/go-dotfiles

