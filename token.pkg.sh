#!/bin/bash
# https://linuxkamarada.com/pt/2018/04/16/configurando-certificado-digital-no-linux-opensuse/
pacotes=(
	 "opensc" "pkcs11-helper" "pcsc-tools" 
)

sudo pacman -Sy


# Itera sobre o array e exibe todos os elementos
for pk in "${pacotes[@]}"
do
    sudo pacman -S -q --needed --noconfirm $pk
done


#!/bin/bash

pacotes=(
	"ca-certificates-icp_br"  "safesignidentityclient" "sac-core"
	)


sudo yay -Sy

# Itera sobre o array e exibe todos os elementos
for pk in "${pacotes[@]}"
do
    yay -S -q --needed --noconfirm $pk
done

sudo mkdir -p /etc/pkcs11/modules/
echo "module:/usr/lib/pkcs11/libeToken.so" | sudo tee /etc/pkcs11/modules/eToken.module

sudo systemctl enable pcscd
sudo systemctl start pcscd
cd ~
mkdir -p .vparams
gtw=~/.vparams/portal
user=~/.vparams/user
group=~/.vparams/group
crt=~/.vparams/crt
server_crt=~/.vparams/server_crt

touch $group
touch $gtw
touch $user
touch $crt
touch $server_crt

