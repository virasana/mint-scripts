#!/usr/bin/env bash

#apt-get update && apt-get install -y gnupg software-properties-common
#
#wget -O- https://apt.releases.hashicorp.com/gpg | \
#gpg --dearmor | \
#tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
#
#gpg --no-default-keyring \
#--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
#--fingerprint
#
#echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
#https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
#tee /etc/apt/sources.list.d/hashicorp.list
#
#apt update
#
#apt-get install terraform

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
apt update && apt install terraform
