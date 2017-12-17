# track dotfiles: setup cfg alias to 'git' using repo saved in ~/.cfg
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

# source .secret file with environment variables
source ~/.cfg/.secret

# source $PATH modifications
source ~/.cfg/bash/path.bash

# source $PS1 (prompt) modifications
source ~/.cfg/bash/prompt.bash

# source custom aliases
source ~/.cfg/bash/aliases.bash

# source custom functions
source ~/.cfg/bash/functions.bash

# source custom fzf functions
source ~/.cfg/bash/fzf-functions.bash

# source language version managers (rbenv, pyenv, jenv, php-version, n)
source ~/.cfg/bash/languages.bash

# source autocomplete file (aws, pip)
source ~/.cfg/bash/autocomplete.bash

# source git autocomplete file
source ~/.cfg/bash/git-completion.bash

# source fzf setup file
source ~/.cfg/bash/fzf-setup.bash

# source z setup file (not in repo)
source /usr/local/etc/profile.d/z.sh
