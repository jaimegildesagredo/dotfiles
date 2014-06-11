# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Prompt
PS1='[\u@\h \W]\n\$ '

# Vim like command line
set -o vi

# User specific aliases and functions
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias vcat="vimcat"

# Vagrant aliases
alias vssh="vagrant ssh"
alias vup="vagrant up"
alias vde="vagrant destroy -f"
alias vreb="vagrant destroy -f && vagrant up"
alias vst="vagrant status"
alias vha="vagrant halt"
alias vre="vagrant reload"
alias vpr="vagrant provision"
alias vpro="vagrant provision"

# Git aliases
alias gti="git"
alias gst="git status"
alias gci="git commit"
alias gdi="git diff"
alias P="git push"
alias p="git pull --rebase"

# Virtualenv stuff.
WORKON_HOME=$HOME/.virtualenvs
export WORKON_HOME

source $HOME/.local/bin/virtualenvwrapper.sh

# PATH
PATH=$HOME/.gem/ruby/1.9.1/bin:$HOME/.local/bin:$HOME/bin:/usr/bin/vendor_perl:$PATH
export PATH

# History
export HISTSIZE=10000
export HISTCONTROL=erasedups
shopt -s histappend
