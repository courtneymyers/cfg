#!/bin/bash

# credit to Mathias Bynens for several functions used in this file
# (https://github.com/mathiasbynens/dotfiles/blob/master/.functions)

# ------------------------------------------------------------------------------
# create directory and move into it
# ------------------------------------------------------------------------------
mcd () {
  mkdir -p $1
  cd $1
}

# ------------------------------------------------------------------------------
# open current directory or given file in Finder
# ------------------------------------------------------------------------------
o() {
  if [ $# -eq 0 ]; then
    open .;
  else
    open "$@";
  fi;
}

# ------------------------------------------------------------------------------
# open current directory or given file in Vim
# ------------------------------------------------------------------------------
v() {
  if [ $# -eq 0 ]; then
    vim .;
  else
    vim "$@";
  fi;
}

# ------------------------------------------------------------------------------
# open current directory or given file in Atom
# ------------------------------------------------------------------------------
a() {
  if [ $# -eq 0 ]; then
    atom .;
  else
    atom "$@";
  fi;
}

# ------------------------------------------------------------------------------
# tree output piped to less
# tree -a (include hidden files) -C (colorized) -I (ignore following files)
# ------------------------------------------------------------------------------
list() {
  tree -aC -I '.git|node_modules' --dirsfirst "$@" |
    less --quit-if-one-screen --RAW-CONTROL-CHARS --no-init --line-numbers;
}
