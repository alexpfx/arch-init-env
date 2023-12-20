#!/bin/bash
sudo pacman -Sy

sudo pacman -S --needed git base-devel yad
git clone https://aur.archlinux.org/yay.git
(cd yay && makepkg -si)
rm -rf yay

source ./gitconfig
#source ./dotfiles



