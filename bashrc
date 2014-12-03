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

HISTSIZE=10000
HISTCONTROL=erasedups
shopt -s histappend

PATH=~/.local/bin:$PATH

WORKON_HOME=~/.virtualenvs

virtualenvwrapper=`which virtualenvwrapper.sh`
[[ -f $virtualenvwrapper ]] && . $virtualenvwrapper
