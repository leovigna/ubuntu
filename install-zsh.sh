#!/bin/sh

# Set ZSH as shell
command -v zsh | sudo tee -a /etc/shells
chsh -s $(command -v zsh) # TODO: Logout

# Install OhMy ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy ZSH dot files
cp ./dotfiles/.gitconfig ~/.gitconfig
cp ./dotfiles/.zshenv ~/.zshenv
cp ./dotfiles/.zshrc ~/.zshrc
cp ./dotfiles/.p10k.zsh ~/.p10k.zsh

# Syntax & Autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Power level 10k
## Install font
mkdir ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O ~/.fonts/MesloRegular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O ~/.fonts/MesloBold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O ~/.fonts/MesloItalic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O ~/.fonts/MesloBoldItalic.ttf
fc-cache -fv

## TODO: Set font in terminal to MesloLGS

## Instal P10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## FZF
$(brew --prefix)/opt/fzf/install # TODO: Accept all, skip config update

# TMUX (skip for now)
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# ~/.tmux/plugins/tpm/scripts/install_plugins.sh
# pip3 install --user pynvim #for treemyx