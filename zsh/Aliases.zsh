# ==============================================================================
# Aliases
# ==============================================================================

# Remove conflicting aliases provided by Oh-My-Zsh
unalias lsa
unalias l
unalias grep
unalias fgrep
unalias egrep

# Fix "" bug in Fig
# not sure where this came from but I remember it's needed
unalias -- -

alias ls='lsd'
alias edit:zshrc='$EDITOR ~/.zshrc'
alias env:find='env | grep -F'
alias clear:History='echo "" > ~/.zsh_history'

function alias:ls {
    alias | grep -F "$1" | awk '{FS = "="; printf("[ %10s ] %s\n",$1,$2) }'
}

# Editors
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# Laravel
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sail.start='sail up -d'
alias sail.stop='sail stop'
alias sail.test='sail test --coverage --profile'
