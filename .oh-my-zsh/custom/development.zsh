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
  local file=$(echo $* | cut -d':' -f1)
  local linenum=$(echo $* | cut -d':' -f2)
  phpstorm --line $linenum $file
}
