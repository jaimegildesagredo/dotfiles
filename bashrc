# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# User specific aliases and functions
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias vi="gvim"
alias gti="git"
alias vcat="vimcat"

# Virtualenv stuff.
WORKON_HOME=$HOME/.virtualenvs
export WORKON_HOME

source $HOME/.local/bin/virtualenvwrapper.sh

# PATH
export PATH=$HOME/.local/bin:$HOME/bin:/usr/bin/vendor_perl:$PATH
