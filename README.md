## Update

```
sudo apt update && sudo apt upgrade -y
```

## Apt Install

```
sudo apt install vim git -y
sudo apt install apt-transport-https curl -y
sudo apt install build-essential -y
sudo apt install gnome-tweak-tool dconf-editor -y #gnome-tweaks
```

## Deja-Dup
```
sudo apt install deja-dup -y
```
Exclude directories with https://askubuntu.com/a/1378432
```
which duplicity #/usr/bin/duplicity
sudo vim /usr/local/bin/duplicity #shim
```
Use dconf-editor to update /gnaore/deja-dup/exclude-list
```
['$TRASH', '$DOWNLOAD', '~/**/node_modules']
```
## Git
```
git config --global user.email "leo.vigna@gmail.com"
git config --global user.name "Leo Vigna"
```

## Github CLI
https://github.com/cli/cli/blob/trunk/docs/install_linux.md
```
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
```
## Linuxbrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## NVM

```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## MX Master 3

https://askubuntu.com/questions/152297/how-to-configure-extra-buttons-in-logitech-mouse
```
sudo apt install git python3-setuptools gettext -y
```
https://github.com/sezanzeb/input-remapper/releases
Button EXTRA => Super_L+KEY_PAGEUP
Button SIDE => Super_L+KEY_PAGEUP
Wheel Left => KEY_VOLUME_DOWN
Wheel Right => KEY_VOLUME_UP

## Icons, Themes, Wallpaper

https://www.youtube.com/watch?v=ZerCpEihkE8

## Brave Browser

```
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
```

### Brave Browser Extensions

- BitWarden
- Metamask
- Phantom
- Ronin
- React DevTools
- Redux DevTools

## LibreOffice

```
cd ~/Downloads
wget https://www.libreoffice.org/donate/dl/deb-x86_64/7.0.1/en-US/LibreOffice_7.0.1_Linux_x86-64_deb.tar.gz
tar -xvzf LibreOffice_7.0.1_Linux_x86-64_deb.tar.gz
sudo apt install ./LibreOffice_7.0.1.2_Linux_x86-64_deb/DEBS/*.deb -y
rm LibreOffice_7.0.1.2_Linux_x86-64_deb.tar.gz
rm -rf LibreOffice_7.0.1.2_Linux_x86-64_deb
```

## Spotify

```
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y
```

Refactor

```
sudo vim /usr/share/applications/spotify.desktop
Exec= ... --force-device-scale-factor=1.5 %U
```

## Discord

https://discord.com/download

## Slack

https://slack.com/downloads/instructions/ubuntu

## Zoom

https://zoom.us/support/download

## VScode

https://code.visualstudio.com/Download

### VSCode Extensions

## Kubernetes

### kubectl

https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management

```
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install kubectl -y
```

### K9s

```
brew install derailed/k9s/k9s
```

## Docker

https://docs.docker.com/engine/install/ubuntu/

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
```

https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue

```
sudo chmod 666 /var/run/docker.sock
```

## Signal

https://www.signal.org/download/linux/

## DBeaver

https://dbeaver.io/download/

## Wasabi Wallet

https://www.wasabiwallet.io/#download

## Ledger Live

https://www.ledger.com/ledger-live/download

## Rotki

https://rotki.com/

## TorGuard VPN

https://torguard.net/downloads.php

## Other Apps

- Popcorn Time
- IPFS Desktop
- Parsec
- Postman
- Electrum
- Lutris
- Etcher
- Postman
- Insomnia
