#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi
#export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0
export LD_PRELOAD=/usr/lib/ibgtk3-nocsd.so.0
unset LD_PRELOAD

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR=/usr/bin/vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH=$PATH:~/bin
