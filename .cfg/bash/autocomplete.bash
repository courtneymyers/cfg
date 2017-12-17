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

# enable autocompletion from files in bash_completion.d directory
for file in /usr/local/etc/bash_completion.d/* ; do
  source $file
done
