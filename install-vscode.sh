#! /usr/bin/env bash


set -eo pipefail

whoami | grep root > /dev/null 2>&1 || { echo '[ERROR] you must be root to run this script.  Run su to get started'; }

# https://linuxiac.com/how-to-install-vs-code-on-linux-mint/
echo '==> INSTALL PREREQS'
apt install software-properties-common apt-transport-https wget gpg

echo '==> INSTALL MICROSOFT GPG KEY'
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

echo '==> ADD MICROSOFT REPO TO OS. '
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

echo '==> APT UPDATE'
apt update

echo '==> DONE!'
