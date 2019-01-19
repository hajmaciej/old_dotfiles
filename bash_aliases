# alias rel='source ~/.zshrc'
alias rc="source $HOME/.bashrc"

alias down='cd /mnt/c/Users/morganix/Downloads/'
alias docs='cd /mnt/c/Users/morganix/Documents/'
alias dotf='cd $HOME/git/dotfiles/'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias pegrep='grep -iP --color=auto'

alias ..='cd ..'

alias l='ls -lah --color --group-directories-first'
alias ll='ls -lh --color --group-directories-first'
alias ls='ls --color --group-directories-first'
alias la='ls -lAh --color --group-directories-first'
alias lsa='ls -lah --color --group-directories-first'

# alias rm='trash'

alias xclip='xclip -selection clipboard'

alias pb='pastebinit | xclip '
#
# alias links='maciek.links@gmail.com'

# alias antigen='source ~/.oh-my-zsh/custom/plugins/antigen.zsh'

alias fonts='fc-cache -rv'
# alias dotfiles='cd ~/.dotfiles'

# alias i3config='vim ~/.config/i3/config'

# alias installconfig='vim ~/.dotfiles/INFO/INFOinstall'
# alias zshconfig='vim ~/.zshrc'
# alias vimconfig='vim ~/.vimrc'
# alias zshtheme='vim ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme'
# alias aliasconfig='vim ~/.dotfiles/aliases'

# alias tmuxconfig='vim ~/.tmux.conf'
# new tmux session, has to get a name of session
# alias tmuxn='tmux new -s'
# alias tmuxa='tmux attach  -t'

# alias pobrane='cd /home/fm/Pobrane'
