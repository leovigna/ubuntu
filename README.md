# Ubuntu Install

General config for Ubuntu install

## Update

```bash
sudo apt update && sudo apt upgrade -y
```

## Scripts

TODO: Scripts don't work fully

### base.sh

Installs using apt.

### brew.sh

Installs using brew.

### zsh.sh

<https://github.com/ohmyzsh/ohmyzsh>

Install ZSH.

### neovim.sh

TODO: Not working

<https://github.com/neovim/neovim>

Install neovim.

## Dotfiles Explained

- `.gitconfig`: Git configuration

### POSIX

POSIX shells.

- `.profile`: shell login, sourced on login

### Bash

Bash (default on ubuntu).

- `.bash_profile`: bash login, sourced on login (ignores `.profile`)
- `.bash_rc`: bash config

### ZSH

<https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout>

Ultimate order is `.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].

- `.zshenv`: zsh env, always sourced
- `.zprofile`: zsh login, sourced on login
- `.zshrc`: zsh config, for interactive

## Apt Install

```bash
sudo apt install vim git -y
sudo apt install apt-transport-https curl -y
sudo apt install build-essential -y
sudo apt install gnome-tweaks
sudo apt install dconf-editor -y #gnome-tweaks
```

## MX Master 3

<https://askubuntu.com/questions/152297/how-to-configure-extra-buttons-in-logitech-mouse>

```bash
sudo apt install git python3-setuptools gettext -y
```

<https://github.com/sezanzeb/input-remapper/releases>
Button EXTRA => Super_L+KEY_PAGEUP
Button SIDE => Super_L+KEY_PAGEDOWN
Wheel Left => KEY_VOLUME_DOWN
Wheel Right => KEY_VOLUME_UP

## Git

```bash
git config --global user.email "leo.vigna@gmail.com"
git config --global user.name "Leo Vigna"
```

## NVM

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## Theme

<https://www.youtube.com/watch?v=ZerCpEihkE8> (Outdated?)

### Gnome Tweeks (MacOS Style)

```bash
cp -R ./icons ~/.icons
cp -R ./themes ~/.themes
```

#### Settings > Background

- Change Picture: `wallpaper.jpg`

#### Tweaks > Appearance

- Update Applications: `Mc-OS-CTLina-Gnome-Dark`
- Update Cursor: `Capitaine-cusors`
- Upate Icons: `Cupertino-Catalina`

#### Tweaks > Extensions

- Enable Ubuntu dock

## Applications

### Brave Browser

```bash
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
```

#### Brave Browser Extensions

- BitWarden
- Metamask
- Phantom
- Ronin
- React DevTools
- Redux DevTools

### LibreOffice

```bash
cd ~/Downloads
wget https://www.libreoffice.org/donate/dl/deb-x86_64/7.0.1/en-US/LibreOffice_7.0.1_Linux_x86-64_deb.tar.gz
tar -xvzf LibreOffice_7.0.1_Linux_x86-64_deb.tar.gz
sudo apt install ./LibreOffice_7.0.1.2_Linux_x86-64_deb/DEBS/*.deb -y
rm LibreOffice_7.0.1.2_Linux_x86-64_deb.tar.gz
rm -rf LibreOffice_7.0.1.2_Linux_x86-64_deb
```

Rescale device scale.

```bash
sudo vim /usr/share/applications/spotify.desktop
Exec= ... --force-device-scale-factor=1.5 %U
```

### Discord

<https://discord.com/download>

### Slack

<https://slack.com/downloads/instructions/ubuntu>

### Zoom

<https://zoom.us/support/download>

### VScode

<https://code.visualstudio.com/Download>

#### VSCode Extensions

- Sync these via Github

### Docker

<https://docs.docker.com/engine/install/ubuntu/>
<https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue>

```bash
sudo chmod 666 /var/run/docker.sock
```

### Signal

<https://www.signal.org/download/linux/>

### DBeaver

<https://dbeaver.io/download/>

### Wasabi Wallet

<https://www.wasabiwallet.io/#download>

### Ledger Live

<https://www.ledger.com/ledger-live/download>

### Rotki

<https://rotki.com/>

### TorGuard VPN

<https://torguard.net/downloads.php>

### IPFS

<https://docs.ipfs.io/install/ipfs-desktop/#ubuntu>

### Other Apps

- Popcorn Time
- IPFS Desktop
- Parsec
- Postman
- Electrum
- Lutris
- Etcher
- Postman
- Insomnia

## TUIs

Personal selection from [https://github.com/rothgar/awesome-tuis](github.com/rothgar/awesome-tuis)

- [btop](https://github.com/aristocratos/btop)
- [k9s](https://github.com/derailed/k9s)
- [sclack](https://github.com/haskellcamargo/sclack)

## Deja-Dup (Backups)

```bash
sudo apt install deja-dup -y
```

Exclude directories with <https://askubuntu.com/a/1378432>

```bash
which duplicity #/usr/bin/duplicity
sudo vim /usr/local/bin/duplicity #shim
```

Use dconf-editor to update /gnaore/deja-dup/exclude-list

```bash
['$TRASH', '$DOWNLOAD', '~/**/node_modules', '~/.local/share/pnpm']
```
