# ==============================================================================
# Z Shell and Oh My ZSH
# ==============================================================================

# Variables
export TERM=linux
export EDITOR=lvim

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="crcandy"
precmd() { print "" }

# Plugins
plugins=(git npm brew composer copyfile copypath colored-man-pages branch)

source $ZSH/oh-my-zsh.sh

# --------------------
# Path
# --------------------

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
# . $HOME/.dotfiles/shell/z.sh

# --------------------
# History
# --------------------

# Exclude commands from history
setopt INC_APPEND_HISTORY

local git="git*|gss|gst|git"
local editors="nano*|cat*|less*|bat*|man*"
local shell="env*|exit|alias*"
local filesystem="z*|ls*|ols*|mv*|cp*|rm*|cd*|take*|mkcd*|fd*|broot*|d|1|2|3|4|5|6|7|8|9|0"
local composer="cdo|cdu|cgr|cgrm*|cgu*|ci|co|cod|codg|cog|cr*|crm*|cs*|csg*|csu|cu*|cug*|composer*"
local php="php*|a *|pecl *|duster*|phpcs*|pu*|puf*|puu*|vendor/bin/phpunit*|xd*"
local java="java*|jar*|gradle*"
local laravel="valet*|lambo*"
local development="npm*"
export HISTORY_IGNORE="${composer} \
|${git} \
|${filesystem} \
|${php} \
|${java} \
|${editors} \
|${shell} \
|${development} \
|${laravel}"

# --------------------
# Bind Keys
# --------------------

# Home
bindkey '^[[H' beginning-of-line
# End
bindkey '^[[F' end-of-line

# ==============================================================================
# Boot Tooling
# ==============================================================================

# linuxbrew

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fnm (Fast Node Manager)
# See, https://github.com/Schniz/fnm
eval "$(fnm env --use-on-cd)"

source /home/jonsugar/.config/broot/launcher/bash/br

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
alias edit:zshrc="${EDITOR} ~/.zshrc"
alias env:find="env | fgrep"
alias clear:history='echo "" > ~/.zsh_history'

function alias:ls {
    alias | fgrep --color=never $1 | awk '{FS = "="; printf("%-10s %s\n",$1,$2) }'
}
