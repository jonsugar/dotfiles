function print_centered {
     [[ $# == 0 ]] && return 1

     declare -i TERM_COLS="40"
     declare -i str_len="${#1}"
     [[ $str_len -ge $TERM_COLS ]] && {
          echo "$1";
          return 0;
     }

     declare -i filler_len="$(( (TERM_COLS - str_len) / 2 ))"
     [[ $# -ge 2 ]] && ch="${2:0:1}" || ch=" "
     filler=""
     for (( i = 0; i < filler_len; i++ )); do
          filler="${filler}${ch}"
     done

     local message="${filler}$1${filler}"
     [[ $(( (TERM_COLS - str_len) % 2 )) -ne 0 ]] && message="${message}${ch}"

	 echo "${message}"
     return 0
}

function double_line {
	printf -- "$(yellow =)%.0s" {1..40}
	echo
}

function single_line {
	printf -- "$(yellow -)%.0s" {1..40}
	echo
}

function text {
	echo
	echo $1
}

function title {
	echo
	single_line
	yellow "$(print_centered "$1" " ")"
	single_line
}