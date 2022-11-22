function git:update {
    local branch="$(git rev-parse --abbrev-ref HEAD)"
    local cmd="git pull --rebase origin $branch"
    echo
    echo -e "${YELLOW}Updating branch:${NC} ${RED}$branch${NC} ($cmd)"
    echo
    eval $cmd
}

function git:log() {
    git log --format='┃ %h ┃ %ad ┃ %s%C(bold)%d%Creset' --date=format:'%d-%b-%Y %I:%M %p' $*
}

function git:file-history() {
    git log --all --follow --pretty=format:'┃ %cd ┃ %h ┃%C(green)%d%Creset %s' --date="format:%d-%b-%Y" -- $1
}

function git:nah() {
    git reset --hard && git clean -df
}
