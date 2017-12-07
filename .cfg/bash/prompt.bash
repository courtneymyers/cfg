#!/bin/bash

# setup variables for colors
RESET='\[\033[0m\]'
RED='\[\033[38;5;202m\]'
BLUE='\[\033[38;5;33m\]'
GREEN='\[\033[38;5;118m\]'
ORANGE='\[\033[38;5;214m\]'
MAGENTA='\[\033[38;5;163m\]'

# change prompt to only display directory
export PS1="${ORANGE}\W: ${RESET}"

# source bash git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
