if [[  "$TERM_PROGRAM" = "iTerm.app" && -e "${HOME}/.iterm2_shell_integration.zsh" ]]
then
  echo 'Loading iTerm shell integration for zsh'
  source "${HOME}/.iterm2_shell_integration.zsh"
fi