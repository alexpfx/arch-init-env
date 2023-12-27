#!/bin/bashx
gtw=$(cat ~/.vparams/portal)
user=$(cat ~/.vparams/user)
group=$(cat ~/.vparams/group)
crt=$(cat ~/.vparams/crt)
server_crt=$(cat ~/.vparams/server_crt)

sudo openconnect --no-dtls --authgroup=$group --protocol=gp -u $user -c $crt -v gtw

