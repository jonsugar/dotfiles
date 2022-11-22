# ==============================================================================
# Javascript
# ==============================================================================

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

function npm:fresh() {
    echo
    if [ "$1" = "rm" ]; then
        echo "Deleting ./node_modules"
        echo
        rm -rf node_modules
    fi
    echo "Installing dependencies (npm install)"
    npm install
}

function npm:fresh-dev() {
    if [ "$1" = "rm" ]; then
        npm:fresh rm
    else
        npm:fresh
    fi
    echo
    echo "Compiling project assets (npm run dev)"
    npm run dev
    echo
}

alias dev='npm run dev'
alias build='npm run dev'

function _nvm:commands() {
    typeset -f | grep ^nvm: | cut -d" " -f1 && alias | fgrep --color=never nvm: | cut -d"=" -f1
}

function nvm:commands() {
    $(_nvm:commands | fzf)
}

function nvm:list-versions-and-alias() {
    nvm ls
}

function nvm:list-versions() {
    nvm ls --no-alias
}

function nvm:install-latest() {
    nvm install stable --latest-npm
}

function nvm:install-lts() {
    nvm install --lts --latest-npm
}
