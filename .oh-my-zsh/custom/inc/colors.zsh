# Available colors

BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
ORANGE='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
CYAN='\e[0;36m'
LIGHT_GRAY='\e[0;37m'
DARK_GRAY='\e[1;30m'
LIGHT_RED='\e[1;31m'
LIGHT_GREEN='\e[1;32m'
YELLOW='\e[1;33m'
LIGHT_BLUE='\e[1;34m'
LIGHT_PURPLE='\e[1;35m'
LIGHT_CYAN='\e[1;36m'
WHITE='\e[1;37m'
NC='\e[0m'

#
# Transforms
#
BRIGHT='1' 
DIM='2' 
EM='3' 
UNDERLINED='4' 
BLINK='5' 
INVERT='7' 
HIDDEN='8' 
STRIKE='9'

RESET_ALL='0'
RESET_BOLD='21'
RESET_DIM='22'
RESET_EM='23'
RESET_UNDERLINED='24' 
RESET_BLINK='25' 
RESET_INVERTED='27' 
RESET_HIDDEN='28' 
RESET_STRIKE='29'

#
# foreground
#
FG_DEFAULT='39'
FG_BLACK='30'
FG_RED='31'
FG_GREEN='32'
FG_YELLOW='33'
FG_BLUE='34'
FG_MAGENTA='35'
FG_CYAN='36'
FG_LIGHT_GRAY='37'
FG_DARK_GRAY='90'
FG_LIGHT_RED='91'
FG_LIGHT_GREEN='92'
FG_LIGHT_YELLOW='93'
FG_LIGHT_BLUE='94'
FG_LIGHT_MAGENTA='95'
FG_LIGHT_CYAN='96'
FG_WHITE='97'

#
# background
#
BG_DEFAULT='49'
BG_BLACK='40'
BG_RED='41'
BG_GREEN='42'
BG_YELLOW='43'
BG_BLUE='44'
BG_MAGENTA='45'
BG_CYAN='46'
BG_LIGHT_GRAY='47'
BG_DARK_GRAY='100'
BG_LIGHT_RED='101'
BG_LIGHT_GREEN='102'
BG_LIGHT_YELLOW='103'
BG_LIGHT_BLUE='104'
BG_LIGHT_MAGENTA='105'
BG_LIGHT_CYAN='106'
BG_WHITE='107'

function text
{
    #echo "[TEXT] "$1
    #echo "[TRAN] "${2:-$RESET_ALL}
    #echo "[ FG ] "${3:-$FG_DEFAULT}
    #echo "[ BG ] "${4:-$BG_DEFAULT}
    echo "\e[${2:-$RESET_ALL};${3:-$FG_DEFAULT};${4:-$BG_DEFAULT}m$1\e[0m"
}