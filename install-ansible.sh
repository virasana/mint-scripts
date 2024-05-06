#!/usr/bin/env bash

apt install software-properties-common -y
apt install ansible -y
chown -R jeanpierre:jeanpierre /home/jeanpierre/.ansible
chmod -R 755 /home/jeanpierre/.ansible
ansible --version
