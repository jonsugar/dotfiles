# ==============================================================================
# Java
# ==============================================================================

export JAVA_HOME=$(/usr/libexec/java_home)

function java:list-versions() {
    /usr/libexec/java_home -V 2>&1 >/dev/null | tail -n +2 | tail -r | tail -n +2 | awk '{for(i=1;i<=NF;i++) printf $i" "; print ""}'
}

java:current-version(){ 
    echo
    echo "-----------------------"
    echo "Installed Java Versions"
    echo "-----------------------"
    echo
    java:list-versions
    echo
    echo "-----------------------"
    echo "Java Environment"
    echo "-----------------------"
    echo
    echo "JAVA_HOME: " $JAVA_HOME
    echo
    java -version
    echo
}

java:set-version () {
    export JAVA_HOME=`/usr/libexec/java_home -v $@`
    java:current-version
}

function _java:commands() {
    typeset -f | grep ^java: | cut -d" " -f1 && alias | fgrep --color=never java: | cut -d"=" -f1
}

function java:commands() {
    $(_java:commands | fzf)
}

# --------------------------------------
# Gradle
# --------------------------------------

function gradle:tasks() {
    gradle tasks --all
}

alias gradle:describe-task="gradle -q help --task"

function _gradle:commands() {
    typeset -f | grep ^gradle: | cut -d" " -f1 && alias | fgrep --color=never gradle: | cut -d"=" -f1
}

function gradle:commands() {
    $(_gradle:commands | fzf)
}