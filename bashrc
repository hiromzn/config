# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# shell color
if type -P dircolors >/dev/null ; then
  eval `dircolors "$HOME/.dir_colors"`
fi

