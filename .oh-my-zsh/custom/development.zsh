# ==============================================================================
# Tools
# ==============================================================================

# GNU Make

PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"


# ==============================================================================
# Other
# ==============================================================================

measure ()
{
    print
    print "$1 columns"
    repeat $1 printf ".";
    print
    print
}

pstorm () {
  local file;
  file=$(echo "$@" | cut -d':' -f1)

  local linenum;
  local linenum;
  linenum=$(echo "$@" | cut -d':' -f2)

  phpstorm --line "$linenum" "$file"
}
