#
# ~/.bashrc
### EXPORT
export TERM="xterm-256color"		#getting proper colors


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwritting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias config='/usr/bin/git --git-dir=/home/soeri/.cfg/ --work-tree=/home/soeri'
