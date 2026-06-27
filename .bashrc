#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/my-enviroment.sh


# Added by Antigravity CLI installer
export PATH="/home/thnking/.local/bin:$PATH"
