alias grep="grep --color=auto"
alias tmux="tmux -2"

alias gbr="git branch"

alias g="mvim --remote-silent"

alias vsh="vagrant ssh -c"

alias did="vim +'normal Go' +'r!date' ~/Dropbox/did.txt"

alias tf="terraform"

alias nv="nvim"

if type exa &> /dev/null; then
    alias ls=exa
fi

if type batcat &> /dev/null; then
    alias cat=batcat
fi
