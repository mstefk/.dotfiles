#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[0;36m\]\W\[\e[0m\]\[\e[1;36m\] \$\[\e[0m\] '
#PS1='\e[1;36m[\e[0m\e[0;36m\W\e[0m\e[1;36m]\e[0m\e[0;36m →\e[0m '
alias shnow="shutdown -h now"
alias rdep="pacman -Rs"
