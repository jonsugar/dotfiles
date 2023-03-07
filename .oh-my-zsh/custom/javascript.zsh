# ==============================================================================
# Javascript
# ==============================================================================

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

function _fnm:commands() {
    typeset -f | grep ^fnm: | cut -d" " -f1 && alias | fgrep --color=never fnm: | cut -d"=" -f1
}

function fnm:commands() {
    $(_fnm:commands | fzf)
}

function fnm:ls() {
    if [ "$1" = "-r" ]; then
      fnm list-remote
    else
      fnm list
    fi
}

function fnm:install() {
  if [[ $# -eq 0 ]]; then
    fnm install --latest
    return
  fi

  if [ "$1" = "--latest" ]; then
    fnm install --latest
  elif [ "$1" = "--lts" ]; then
    fnm install --lts
  else
    fnm install $1
  fi
}

