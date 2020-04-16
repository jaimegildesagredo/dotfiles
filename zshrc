# History

SAVEHIST=10000
HISTSIZE=2500

setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS

# Correction

setopt CORRECT
setopt CORRECT_ALL

# Aliases

alias ls='ls -G'
alias ll='ls -l'
alias gti="git"
alias gst="git status"
alias P="git push"
alias p="git pull --rebase"
