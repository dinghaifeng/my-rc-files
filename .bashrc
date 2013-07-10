# .bashrc

# User specific aliases and functions

# bash envs
export PS1='\[\033[01;32m\]\u@\H\[\033[00m\]:\[\033[00;36m\]\w\[\033[00m\]$ '
export HISTIGNORE="[   ]*:&:bg:fg:exit:ls:pwd:cd:clear:top:jobs:ps"
export HISTCONTROL=ignoredups

# aliases
alias grep='grep --color'
alias less='less -R'

# disable ctrl-s shortcut
stty ixoff -ixon

