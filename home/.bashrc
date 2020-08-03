#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\033[01;36m\033[00m \u@\h]\n\033[01;33m\W\033[00m > '

set -o vi

source ~/.env
source ~/.alias
