#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1="\\[\\033[01;32m\\][\\w] \\[\\033[0m\\] "

PS1='\[\e[0;39m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;94m\]\$ \[\e[m\]\[\e[0;32m\]'

#PS1='\\[\\033[1;31m\\][\W] '
#PS1='[\u@\h \W]\$ '

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# Created by `pipx` on 2026-02-27 18:39:37
export PATH="$PATH:/home/thnking/.local/bin"
