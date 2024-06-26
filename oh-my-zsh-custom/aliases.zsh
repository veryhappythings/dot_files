alias grep="grep --color=auto"
#alias tmux="tmux -2"

alias gbr="git branch"

alias tf="terraform"

alias nv="nvim"

if type eza &> /dev/null; then
    alias ls=eza
fi

if type batcat &> /dev/null; then
    alias cat=batcat
fi
