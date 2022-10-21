ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"
precmd() { print "" }

# Plugins
plugins=(artisan git npm composer copyfile copypath colored-man-pages branch)

ARTISAN_OPEN_ON_MAKE_EDITOR=phpstorm # for the artisan plugin above.

#set numeric keys
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

# ==============================================================================
# Path
# ==============================================================================
#
#     Order is important to ensure the desired versions of software are used.
#
# ==============================================================================

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export NVM_SYMLINK_CURRENT=true
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
. $HOME/.dotfiles/shell/z.sh

# ==============================================================================
# Z Shell and Oh My ZSH
# ==============================================================================

#$HOME/Bin/zod/zod motd

source $ZSH/oh-my-zsh.sh

export EDITOR=lvim
export VISUAL=lvim
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"/Users/jonsugar/.local/share/lunarvim"}"
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"/Users/jonsugar/.config/lvim"}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"/Users/jonsugar/.cache/lvim"}"
alias edit:zshrc="${EDITOR} ~/.zshrc"
alias edit:development="${EDITOR} ~/.oh-my-zsh/custom/development.zsh"
alias src:zshrc='source ~/.zshrc'


function gvim() {
  kitty --title="LunarVim" --config=/Users/jonsugar/.config/kitty/kitty-lunarvim.conf /Users/jonsugar/.local/bin/lvim $1 &>/dev/null &
}

# ==============================================================================
# Overrides
# ==============================================================================

# Directory listing
unalias lsa
unalias l

# general use
alias ls='lsd'

alias tree='broot'
alias nv='br --only-folders'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ==============================================================================
# Other Aliases
# ==============================================================================

function alias:ls {
    alias | fgrep --color=never $1 | awk '{FS = "="; printf("%-10s %s\n",$1,$2) }'
}

alias subl=''
alias code=''

alias ip='curl http://ipecho.net/plain; echo'

alias env:find="env | fgrep"

alias -s zsh=lvim
alias -s sh=lvim
alias -s bash=lvim
alias -s json=lvim
alias -s yml=lvim
alias -s yaml=lvim

# ==============================================================================
# History
# ==============================================================================

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
export HISTORY_IGNORE="${composer}|${git}|${filesystem}|${php}|${java}|${editors}|${shell}|${development}|${laravel}"
alias clear:history='echo "" > ~/.zsh_history'

