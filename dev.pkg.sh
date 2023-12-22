#!/bin/bash
pacotes=(
	"docker" "docker-compose" "docker-buildx" "python-pip" "python-pipx" "python" "go" "meld"
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


mkdir -p /data/git


repo=(
	"go-pass_manager" 
)

for pk in "${repo[@]}"
    cmd="git clone https://github.com/alexpfx/$pk.git /data/git/$pk"
    cd /data/git/$pk
    make install
done
gh
