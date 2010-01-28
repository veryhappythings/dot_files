source ~/.bash/aliases.sh
source ~/.bash/git_ps1.sh

export PATH=/Applications/Shoes.app/Contents/MacOS:/Users/mac/.gem/ruby/1.8/bin:${PATH}
export PATH=~/bin:/usr/local/bin:$PATH:/usr/local/mysql/bin:/usr/local/mongo/bin:/opt/local/bin:/opt/local/sbin
export PYTHONPATH=.
export PYTHONSTARTUP=$HOME/.pythonrc.py
export RUBYOPT="rubygems"
#export GIT_PAGER=mate
export EDITOR='mvim -f'

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

test -r /sw/bin/init.sh && . /sw/bin/init.sh
