# ==============================================================================
# History
# ==============================================================================

setopt INC_APPEND_HISTORY

git="git*|gss|gst|git"
editors="nano*|cat*|less*|bat*|man*"
shell="env*|exit|alias*"
filesystem="z*|ls*|ols*|mv*|cp*|rm*|cd*|take*|mkcd*|fd*|broot*|d|1|2|3|4|5|6|7|8|9|0"
composer="cdo|cdu|cgr|cgrm*|cgu*|ci|co|cod|codg|cog|cr*|crm*|cs*|csg*|csu|cu*|cug*|composer*"
php="a *|pecl *|duster*|pu*|puf*|puu*|vendor/bin/phpunit*|xd*"
java="java*|jar*|gradle*"
laravel="valet*|lambo*"
development="npm*"
export HISTORY_IGNORE="${composer} \
|${git} \
|${filesystem} \
|${php} \
|${java} \
|${editors} \
|${shell} \
|${development} \
|${laravel}"
