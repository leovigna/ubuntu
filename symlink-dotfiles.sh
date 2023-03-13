for f in .gitconfig .p10k.zsh .tmux.conf .zshrc Brewfile init.lua; do
	mv ~/$f ~/$f.bak
    ln -s $PWD/dotfiles/$f ~/$f
done

mkdir -p ~/.config/nvim
ln -s $PWD/dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s $PWD/dotfiles/init.vim ~/.config/nvim/init.vim

ln -s ~/Documents/projects/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ~/zsh-syntax-highlighting.plugin.zsh
