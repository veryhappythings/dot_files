# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mac/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mac/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mac/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mac/.fzf/shell/key-bindings.zsh"

# Use ripgrep
# -----------
if [[ -f /usr/local/bin/rg ]]; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
