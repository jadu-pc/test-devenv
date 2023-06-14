#!/bin/bash

KEYRING=/usr/share/keyrings/nodesource.gpg

curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | sudo tee "$KEYRING" >/dev/null
gpg --no-default-keyring --keyring "$KEYRING" --list-keys
chmod a+r /usr/share/keyrings/nodesource.gpg

VERSION=node_18.x
KEYRING=/usr/share/keyrings/nodesource.gpg
DISTRO="bullseye"

echo "deb [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

sudo apt update
sudo apt install nodejs
