#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export NNN_OPENER=~/.scripts/nnn_opener.sh
export NNN_USE_EDITOR=1
export VISUAL="notepadqq"
export EDITOR="notepadqq"
export BROWSER="firefox"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

