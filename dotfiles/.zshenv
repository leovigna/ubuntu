export PATH=/home/linuxbrew/.linuxbrew/Homebrew/bin:$PATH 
export PATH="/home/linuxbrew/.linuxbrew/Homebrew/sbin:$PATH"

export PNPM_HOME="~/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH="$PATH:~/.cabal/bin:~/.krew/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export PATH=$PATH:/home/linuxbrew/.linuxbrew/Homebrew/bin/go

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:.:$HOME/.local/bin:

# Tmux settings
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Ruby gem settings
export GEM_HOME="~/.gem"
export GEM_PATH="~/.gem"
export PATH="$PATH:~/.gem/bin"

export PATH="$PATH:~/.cargo/bin"
export PATH="$PATH:~/tools/kubectl-plugins"

export EDITOR=nvim

# NVM
export NVM_DIR="$HOME/.nvm"

# FZF
export FZF_DEFAULT_COMMAND="fd --strip-cwd-prefix --color=always --exclude .git"
export FZF_DEFAULT_OPTS="--ansi --height 100%"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

export OWL="[0m[34mO[0m [35mW[0m [31mL[0m"
