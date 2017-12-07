# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/myers/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/myers/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/myers/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/myers/.fzf/shell/key-bindings.bash"

