source ~/.bash/aliases.sh
source ~/.bash/git_ps1.sh
source ~/.bash/functions.sh

export PATH=/Users/mac/bin:/usr/local/bin:$PATH:/usr/local/mysql/bin:/usr/local/mongo/bin:/opt/local/bin:/opt/local/sbin
export PYTHONPATH=.
export PYTHONSTARTUP=$HOME/.pythonrc.py
#export GIT_PAGER=mate
#export EDITOR='mate -w'
export EDITOR='mvim -f'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

TERM=xterm-color; export TERM

# bash vi mode
# set -o vi

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
