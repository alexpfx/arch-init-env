#!/bin/bash
pacotes=(
 "clipmenu" "sysbench"
)

sudo pacman -Sy


# Itera sobre o array e exibe todos os elementos
for pk in "${pacotes[@]}"
do
    sudo pacman -S -q --needed --noconfirm $pk
done




