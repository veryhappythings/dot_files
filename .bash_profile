source ~/.bash/aliases.sh
source ~/.bash/git_ps1.sh
source ~/.bash/functions.sh

export PATH=/Users/mac/bin:/usr/local/bin:$PATH:/usr/local/mysql/bin:/usr/local/mongo/bin:/opt/local/bin:/opt/local/sbin
export PATH=/usr/local/share/python:$PATH:$HOME/.rbenv/bin

export PYTHONPATH=.
export EDITOR='mvim -f'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export COPYFILE_DISABLE=1

if [ -f ~/.pythonrc ]; then
    export PYTHONSTARTUP=~/.pythonrc
fi


TERM=xterm-color; export TERM

# bash vi mode
# set -o vi

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
