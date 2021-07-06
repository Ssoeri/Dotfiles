#
# ~/.bashrc
### EXPORT
export TERM="xterm-256color"		#getting proper colors


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[37m\]\$\[\033[00m\] '

#PS1='[\u@\h \W]\$ '

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwritting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

### SHOPT
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


### RANDOM COLOR SCRIPT ###
colorscript random

