# ==============================================================================
# Environment Variables
# ==============================================================================

export TERM=xterm-256color
export EDITOR=lvim

# ==============================================================================
# PATH
# ==============================================================================

userBin="$HOME/bin"
composer="$HOME/.composer/vendor/bin"
cargo="$HOME/.cargo/bin"
localBin="$HOME/.local/bin"
ruby=/opt/homebrew/opt/ruby/bin
usrLocalBin=/usr/local/bin

export PATH="$userBin:$composer:$cargo:$localBin:$ruby:$usrLocalBin:$PATH"