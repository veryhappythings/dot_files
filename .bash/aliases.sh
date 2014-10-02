if [[ `uname` == 'Darwin' ]]; then
    alias ls="ls -G"
else
    alias ls="ls --color=auto"
fi

alias grep="grep --color=auto"
alias tmux="tmux -2"

alias git=hub
alias gst="git status"
alias gbr="git branch"

alias g="mvim --remote-silent"
