for f in .gitconfig .p10k.zsh .tmux.conf .zprofile .zshrc .vulcan.zshrc Brewfile; do
	mv ~/$f ~/$f.bak
    ln -s $PWD/dotfiles/$f ~/$f
done

mkdir -p ~/.config/nvim
ln -s $PWD/dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s $PWD/dotfiles/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/Code/User/
ln -s $PWD/vscode/settings.json ~/.config/Code/User/settings.json