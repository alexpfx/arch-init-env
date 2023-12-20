#!/bin/bash
pacotes=(
	"docker" "docker-compose" "docker-buildx" 
)
sudo pacman -Sy


# Itera sobre o array e exibe todos os elementos

for pk in "${pacotes[@]}"
do
    sudo pacman -S -q --needed --noconfirm $pk
done


pacotes=(
	"vscodium-bin" "vscodium-bin-marketplace" "insomnium-bin"
)

yay -Sy

for pk in "${pacotes[@]}"
do
    yay -S -q --needed --noconfirm $pk
done
sudo systemctl enable docker.service


sudo usermod -aG docker $USER 
