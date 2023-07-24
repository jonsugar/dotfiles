# unalias unwanted aliases from the oh-my-zsh plugin
unalias gcp

function git:update {
  local branch="$(git rev-parse --abbrev-ref HEAD)"
  local cmd="git pull --rebase origin $branch"
  echo
  echo -e "${YELLOW}Updating branch:${NC} ${RED}$branch${NC} ($cmd)"
  echo
  eval $cmd
}

function git:log() {
  git log --format='┃ %h ┃ %ad ┃ %s%C(bold)%d%Creset' --date=format:'%d-%b-%Y %I:%M %p' "$@"
}

function git:file-history() {
  git log --all --follow --pretty=format:'┃ %cd ┃ %h ┃%C(green)%d%Creset %s' --date="format:%d-%b-%Y" -- "$1"
}

function git:nah() {
  git reset --hard && git clean -df
}

function gh:repo-open() {
  if [[ $# -eq 0 ]]; then
    gh s | xargs -n1 open
    return
  fi

  if [[ $# -eq 1 ]]; then
      gh s "$1" | xargs -n1 open
      return
    fi

  if [[ $# -eq 2 ]]; then
    gh s "$2" -u "$1" | xargs -n1 open
    return
  fi

  gh s "$@" | xargs -n1 open
}
