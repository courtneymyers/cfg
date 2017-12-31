#!/bin/bash

# add composer’s globally installed packages to path
export PATH=$HOME/.composer/vendor/bin:$PATH

# add ~/.local/bin directory to path
# (used by `pip install --user` packages and haskell stack)
export PATH=$HOME/.local/bin:$PATH
