#!/bin/bash

# navigating directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# common directories
alias sites='cd ~/Sites/'
alias pro='cd ~/Projects/'
alias venv='cd ~/.local/share/virtualenvs/'

# better directory listing
alias ll='ls -lahG'

# colorize grep
alias grep='grep --color=auto'

# show preview window with fzf
alias fzf='fzf --border --reverse --height 50% --preview "head -100 {}"'

# ----- shell scripts -----
# start dockerized ethereum node
alias ethereum='~/.cfg/bin/ethereum'
