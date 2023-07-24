# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="crcandy"

# Plugins
export plugins=(iterm2 git npm brew composer copyfile copypath colored-man-pages branch z dnf laravel5)

zstyle :omz:plugins:iterm2 shell-integration yes

source "$ZSH"/oh-my-zsh.sh
