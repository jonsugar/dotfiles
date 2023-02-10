# ==============================================================================
# Composer
# ==============================================================================

function composer:fresh() {

    if [ $# -gt 0 ]; then
      echo
      echo "Pre-flight"
      echo "=========="
    fi
    while [[ $# -gt 0 ]]; do
      case $1 in
        -l|--lock)
          echo "- Deleting composer lock file (rm ./composer.lock)"
          rm composer.lock
          shift
          ;;
        -v|--vendor)
          echo "- Deleting composer dependencies (rm -r ./vendor)"
          rm -r vendor
          shift
          ;;
        -*|--*)
          echo "Unknown option $1"
          exit 1
          ;;
      esac
    done

    echo
    echo "Installing composer dependencies (composer install)"
    composer install
    echo
}

alias cgo="composer global show -oD"
alias cb="composer bump"

# ==============================================================================
# Laravel
# ==============================================================================

function laravel:migrate-fresh() {
    local cmd='php artisan migrate:fresh'
    if [ "$1" = "--seed" ]; then
        cmd="$cmd --seed"
    fi
    echo
    echo "Refreshing the database ($cmd)"
    echo
    eval $cmd
}

function laravel:clear-caches() {
    php artisan optimize:clear
}

function laravel:seed() {
    for seeder in $@
    do
        a db:seed --class $seeder
    done
}

function laravel:fresh() {

    CONTINUE=true

    if [ $# -gt 0 ]; then
      echo
      echo "Pre-flight"
      echo "=========="
    fi
    while [[ $# -gt 0 ]]; do
      case $1 in
        -c|--composer)
          local DELETE_COMPOSER=true
          shift
          ;;
        -n|--npm)
          local DELETE_NPM=true
          shift
          ;;
        -*|--*)
          echo "Unknown option $1"
          local CONTINUE=false
          shift
          ;;
      esac
    done


    if [ "$CONTINUE" = true ]; then

        php artisan optimize:clear 

        if [ "$DELETE_COMPOSER" = true ]; then
            echo "- Deleting composer dependencies (rm -r ./vendor)"
            rm -r vendor
            echo "- Deleting composer lock file (rm ./composer.lock)"
            rm composer.lock
        fi

        if [ "$DELETE_NPM" = true ]; then
            echo "- Deleting npm dependencies (rm -r ./node_modules)"
            rm -r node_modules
            echo "- Deleting npm lock file (rm ./package-lock.json)"
            rm package-lock.json
        fi

        echo
        npm install
        composer install
        php artisan migrate:fresh
        php artisan about

        echo
        echo "Finished refreshing your application, happy coding!"
        echo

    fi
}

function _laravel:commands() {
    typeset -f | grep ^laravel: | cut -d" " -f1 && alias | grep -F --color=never laravel: | cut -d"=" -f1
}

function laravel:commands() {
    $(_laravel:commands | fzf)
}

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias a="php artisan"
alias ar="artisan"
alias tinker="ar tinker"
alias serve="ar serve"

# ==============================================================================
# Linting
# ==============================================================================

alias lint:duster="vendor/bin/duster"
alias lint:phpcs="vendor/bin/phpcs"
alias lint:phpcsfixer="vendor/bin/php-cs-fixer fix --dry-run"
alias lint:stan="vendor/bin/phpstan analyze"
alias lint:pint="vendor/bin/pint --test"

alias fix:phpcbf="vendor/bin/phpcbf"
alias fix:phpcsfixer="vendor/bin/php-cs-fixer fix"
alias lint:pint="vendor/bin/pint"

# ==============================================================================
# Testing
# ==============================================================================

alias pu="vendor/bin/phpunit"
alias td="vendor/bin/phpunit --testdox"
alias tdf="vendor/bin/phpunit --testdox tests/Feature"
alias tdu="vendor/bin/phpunit --testdox tests/Unit"

# Pest

pest ()
{
  vendor/bin/pest --testsuite pest $*
}

pest:g ()
{
  vendor/bin/pest --testsuite pest --group $*
}

# ==============================================================================
# Debuging
# ==============================================================================

# function xd() {
#     php -dxdebug.mode=debug -dxdebug.client_host=127.0.0.1 -dxdebug.client_port=9003 -dxdebug.start_with_request=yes $*
# }
