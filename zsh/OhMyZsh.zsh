# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="crcandy"

precmd() {
  print ""
}

# Plugins
export plugins=(git npm brew composer copyfile copypath colored-man-pages branch z dnf)

source "$ZSH"/oh-my-zsh.sh