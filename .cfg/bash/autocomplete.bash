#!/bin/bash

# enable aws autocompletion
complete -C '/Users/myers/.pyenv/shims/aws_completer' aws

# enable pip autocompletion
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
