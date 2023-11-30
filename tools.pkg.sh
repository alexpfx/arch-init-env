#!/bin/bash
pacotes=(
	"fisher"
	"fzf" "z" "xclip" "sshpass" 
	 "gnome-disk-utility" "arandr"
	"thunar-volman" "thunar-archive-plugin" "flameshot" "unzip"	
	"bspwm" "sxhkd" "rofi" "polybar"
	"ncdu" 
	"gparted" 
	"neofetch" "feh" "dunst" "xdotool" "numlockx" "bat"
	"ncurses"    
    "gnome-keyring" "dzen2" "opensc" "dmenu" "zenity" "nmap"
	"dzen2" "dialog" "bat" "htop" "lsof"
)

sudo pacman -Sy


# Itera sobre o array e exibe todos os elementos
for pk in "${pacotes[@]}"
do
    sudo pacman -S -q --needed --noconfirm $pk
done


