#!/bin/bash

# git clone https://github.com/tmux/tmux.git 
TMUX_DIR="$HOME/.tmux"
TMUX_NAME='tmux-2.8.tar.gz'

function download_tmux {
    local tmux_git="https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz"

    curl --silent -fLo $TMUX_DIR/temp/$TMUX_NAME --create-dirs $tmux_git
    echo "> Pobrano "$TMUX_NAME
    return 0
}

function extract_tmux {
    tar -xf $TMUX_DIR/temp/$TMUX_NAME --directory $TMUX_DIR/temp
    echo "> Rozpakowano "$TMUX_NAME
    return 0
}

function compile_tmux {
    ls "$TMUX_DIR/temp/${TMUX_NAME::8}"
}

if [ -d $TMUX_DIR/temp ]; then
    echo "> Znaleziono temp"
    rm -fR $TMUX_DIR/temp
fi

download_tmux
extract_tmux
compile_tmux
