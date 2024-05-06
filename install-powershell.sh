#!/usr/bin/env bash

if ! grep root <(whoami)
then
  echo "[ERROR] You must run this script as root!" 1>&2
  exit 1
fi

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/microsoft.list

sudo apt-get update
sudo apt-get install powershell -y

