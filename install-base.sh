# Update
apt update && apt upgrade -y

# Basics
apt install apt-transport-https curl -y
apt install build-essential -y
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