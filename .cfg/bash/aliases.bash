#!/bin/bash

# navigating directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# common directories
alias sites='cd ~/Sites/'
alias projects='cd ~/Projects/'

# better directory listing
alias ll='ls -lahG'

# colorize grep
alias grep='grep --color=auto'

# show preview window with fzf
alias fzf='fzf --border --reverse --height 50% --preview "head -100 {}"'
