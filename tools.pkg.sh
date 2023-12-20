#!/bin/bash

pacotes=(
	"fish" "fisher"  "xclip"  "openssh" "xsel"	 		
	"bspwm" "sxhkd" "rofi" "polybar"
	"git" "github-cli" "go" "pass" 
	"micro" "alacritty" "fzf" "z" "xsel" "gnome-disk-utility" "thunar" "thunar-volman" 
	"thunar-archive-plugin" "flameshot" "unzip" ""
	"ttf-jetbrains-mono" 	 
    "wmname" "clipmenu" "sysbench"	
	"xdotool" "fastfetch" "ncdu" "pass" 
	"dialog" "htop" "lsof" 
	"ly" "xorg" "xorg-init" 
	
)



sudo pacman -Sy


# Itera sobre o array e exibe todos os elementos
for pk in "${pacotes[@]}"
do
    sudo pacman -S -q --needed --noconfirm $pk
done

sudo chsh -s /bin/fish $USER

