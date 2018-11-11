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
# start dockerized ethereum node (main network)
alias eth-main='~/.cfg/bin/ethereum-main'

# start dockerized ethereum node (local testnet)
# pass 'init' argument to initialize with genesis block: eth-test init
alias eth-test='~/.cfg/bin/ethereum-test'

# start dockerized eosio dev node and alias cleos from inside container
alias eos-dev='~/.cfg/bin/eosio-dev'
alias cleos='docker exec eosio /opt/eosio/bin/cleos --wallet-url http://localhost:8888'
