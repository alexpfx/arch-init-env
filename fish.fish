#!/usr/bin/fish


fish_add_path $HOME/ubin
fish_add_path $HOME/go/bin
fish_add_path $HOME/data/ubin
fisher install jethrokuan/fzf
fisher install jethrokuan/z
fisher install franciscolourenco/done
fisher install jorgebucaran/autopair.fish



#p11tool --list-all-certs 'pkcs11:model=eToken;manufacturer=SafeNet%2C%20Inc.;serial=0290e6d1;token=Soluti'
# p11tool --list-token-urls | grep SafeNet
# sudo pkcs11-tool --module /usr/lib/libeToken.so -L
# sudo pkcs11-tool --module /usr/lib/libeToken.so -L | grep -A 4 SafeNet
# sudo pkcs11-tool --module /usr/lib/libeToken.so -L | grep -A 2 SafeNet
# sudo pkcs11-tool --module /usr/lib/libeToken.so -L | grep SafeNet
# p11tool --list-tokens
# p11tool --list-token
# sudo pkcs11-tool --module /usr/lib/pkcs11/libeToken.so -L
# echo "/usr/lib/pkcs11/libeToken.so" | xsel -b
# echo "/usr/lib/pkcs11/libeToken.so" | sxel -b
# ls /usr/lib/ | grep libeT
# cd /usr/lib
# micro eToken.module
# cd /etc/pkcs11/modules/
# cat /usr/share/p11-kit/modules/opensc.module
# sudo pkcs11-tool --module /usr/lib/pkcs11/libeToken.so
# cd /usr/
# ls /usr/lib/ | grep libe
# yay -S sac-core
# ls /usr/lib/ | grep TPK
# ls /usr/lib/
# ls /usr/lib/libeToken
# sudo pkcs11-tool --module /usr/lib/libeToken.so
# sudo pkcs11-tool --module /usr/lib64/libeToken.so.10.8.28 -L
# sudo pkcs11-tool --module /usr/lib64/libeToken.so -L
# sudo pkcs11-tool --module /usr/lib64/libeToken.so
# cd /usr/lib/
# safe
# yay -S safesignidentityclient
# yay -S ca-certificates-icp_br
# ls /usr/lib/libaetpkss.so

