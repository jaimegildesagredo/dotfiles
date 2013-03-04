# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll="ls -l"
alias la="ls -a"
alias vi="gvim"
alias gti="git"

# Virtualenv stuff.
WORKON_HOME=$HOME/.virtualenvs
export WORKON_HOME

source $HOME/.local/bin/virtualenvwrapper.sh

# PATH
export PATH=$HOME/bin:$PATH
