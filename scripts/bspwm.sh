#!/bin/bash

# Define a lista de ferramentas
tools=("go" "micro" "github-cli" "docker" "docker-compose" "docker-buildx" "meld")
bspwm_tools=("bspwm" "kitty" "fish" "rofi")
other=("dunst" "xdg-desktop-portal-xapp" "cliphist" "ttf-font-awesome" "sddm" "eos-sddm-theme")



all_tools=("${tools[@]}" "${bspwm_tools[@]}" "${other[@]}")

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

