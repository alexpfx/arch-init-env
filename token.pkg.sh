#!/bin/bash
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

