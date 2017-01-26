#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias gti="git"
alias gst="git status"
alias P="git push"
alias p="git pull --rebase"

PS1='[\u@\h \W]\$ '

HISTSIZE=100000
HISTCONTROL=erasedups
shopt -s histappend

export EDITOR=vim

export GOPATH=~/go

WORKON_HOME=~/.virtualenvs

virtualenvwrapper=`which virtualenvwrapper.sh`
[[ -f $virtualenvwrapper ]] && . $virtualenvwrapper
