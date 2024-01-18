#!/bin/bash

# https://www.linuxtechi.com/how-to-install-virtualbox-on-linuxmint/
apt update
apt upgrade -y
apt install dkms build-essential linux-headers-$(uname -r) -y
sudo apt install curl wget apt-transport-https gnupg2
curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vbox.gpg
echo deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/vbox.gpg] http://download.virtualbox.org/virtualbox/debian jammy contrib | sudo tee /etc/apt/sources.list.d/virtualbox.list
apt update
apt install virtualbox-7.0 -y
usermod -aG vboxusers jeanpierre
newgrp vboxusers
wget https://download.virtualbox.org/virtualbox/7.0.12/Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack
vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack


