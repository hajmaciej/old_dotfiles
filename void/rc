#!/bin/bash

figlet Terminal

[[ -s ~/.dotfiles/alias ]] && source ~/.dotfiles/aliases && \
    echo "Alias ............ [ OK ]"

# autojump
[[ -s /home/fm/.autojump/etc/profile.d/autojump.sh ]] && source /home/fm/.autojump/etc/profile.d/autojump.sh && \
    echo "Autojump ......... [ OK ]"
autoload -U compinit && compinit -u

[[ -s ~/.dotfiles/profile ]] && source ~/.dotfiles/profile && \
    echo "Profile .......... [ OK ]"
[[ -s ~/.dotfiles/functions ]] && source ~/.dotfiles/functions && \
    echo "Functions ........ [ OK ]"
[[ -s ~/.fzf.zsh ]] && source ~/.fzf.zsh && \
    echo "Fuzzy Finder ..... [ OK ]"

[[ -s ~/.dotfiles/i3/scripts_order.sh ]] && source ~/.dotfiles/i3/scripts_order.sh && \
    echo "i3 ............... [ OK ]"

[[ -s ~/.tmux.conf ]] && tmux source-file ~/.tmux.conf && \
    echo "Tmux ............. [ OK ]"

# show available tmux sessions
if [[ -z $TMUX ]]; then
    sessions=$( tmux ls 2> /dev/null | awk '! /attached/ { sub(":", "", $1); print $1; }' | xargs echo )
    if [[ ! -z $sessions ]]; then
        echo ">> Otwarte sesje Tmux:"
	echo "> $sessions"
    fi
    unset sessions
fi

