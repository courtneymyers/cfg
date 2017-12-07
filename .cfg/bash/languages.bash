#!/bin/bash

# enable shims and autocompletion for rbenv
eval "$(rbenv init -)"

# enable shims and autocompletion for pyenv
eval "$(pyenv init -)"

# enable shims and autocompletion for jenv
eval "$(jenv init -)"

# enable php-version
source $(brew --prefix php-version)/php-version.sh && php-version 7

# enable n (for node)
export N_PREFIX="$HOME/Utilities/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
