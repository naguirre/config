source ~/.git-prompt.sh

export PATH=$PATH:/home/nico/usr/bin
export TERM=xterm-256color
export EDITOR="emacs -nw"

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export GPGKEY=8956A6A2
