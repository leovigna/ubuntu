#!/bin/sh

# Update
apt update && apt upgrade -y

# Basics
apt install apt-transport-https curl -y
apt install build-essential  build-essential zlib1g-dev libffi-dev libssl-dev libbz2-dev libncurses-dev libreadline-dev libsqlite3-dev liblzma-dev -y
apt install gnome-tweak-tool dconf-editor -y #gnome-tweaks

# Backups
apt install deja-dup -y

# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# MX Master 3
apt install git python3-setuptools gettext -y

# Brave
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt update && apt install spotify-client -y

#echo "Exec= ... --force-device-scale-factor=1.5 %U" > /usr/share/applications/spotify.desktop

# Libre Office
wget https://download.documentfoundation.org/libreoffice/stable/7.5.1/deb/x86_64/LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
tar -xvzf LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
apt install ./LibreOffice_7.5.1_Linux_x86-64_deb/DEBS/*.deb -y
rm LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
rm -rf LibreOffice_7.5.1_Linux_x86-64_deb

# Discord
wget https://discord.com/api/download?platform=linux&format=deb

# Slack
wget https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb
apt install ./slack-desktop-4.29.149-amd64.deb -y && rm ./slack-desktop-4.29.149-amd64.deb

# VSCode
wget https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64

# Kubectl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt update && apt install kubectl -y

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update && apt install docker-ce docker-ce-cli containerd.io -y
chmod 666 /var/run/docker.sock

# Foundry
curl -L https://foundry.paradigm.xyz | bash