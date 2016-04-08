if [[ `uname` == 'Darwin' ]]; then
    alias ls="ls -G"
else
    alias ls="ls --color=auto"
fi

alias grep="grep --color=auto"
alias tmux="tmux -2"

alias gst="git status"
alias gbr="git branch"

alias g="mvim --remote-silent"

alias vsh="vagrant ssh -c"
