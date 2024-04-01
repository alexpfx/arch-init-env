#!/usr/bin/fish
set -l wl_tools "go" "micro" "github-cli"


set -l pacotes $wl_tools 

sudo ls -la
yay -Sy

# Itera sobre o array e exibe todos os elementos
for pk in $pacotes
    yay -S -q --needed --noconfirm $pk
end