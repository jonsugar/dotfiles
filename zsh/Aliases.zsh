# ==============================================================================
# Aliases
# ==============================================================================

# Remove conflicting aliases provided by Oh-My-Zsh
unalias lsa
unalias l

alias ls='lsd'
alias tree='broot'
alias nv='br --only-folders'
alias ip='curl http://ipecho.net/plain; echo'
alias edit:zshrc='$EDITOR ~/.zshrc'
alias env:find='env | fgrep'
alias clear:History='echo "" > ~/.zsh_history'

function alias:ls {
    alias | grep -F --color=never "$1" | awk '{FS = "="; printf("%-10s %s\n",$1,$2) }'
}

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'