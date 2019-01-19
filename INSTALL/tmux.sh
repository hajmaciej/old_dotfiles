#!/bin/bash

# git clone https://github.com/tmux/tmux.git 
TMUX_DIR="$HOME/.tmux"
TMUX_NAME='tmux-2.8.tar.gz'

function download_tmux {
    local tmux_git="https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz"

    curl --silent -fLo $TMUX_DIR/temp/$TMUX_NAME --create-dirs $tmux_git
    if [ $? -eq 0 ]; then
	echo "> Pobrano "$TMUX_NAME
    fi
    return 0
}

function download_tpm {
    if [[ ! -e "$HOME/.tmux/tpm" ]]; then
	git clone "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/tpm"
	return 0
    else
	echo "Some kind of error occured"
	return 1
    fi
}

function extract_tmux {
    tar -xf $TMUX_DIR/temp/$TMUX_NAME --directory $TMUX_DIR/temp
    if [ $? -eq 0 ]; then
	echo "> Rozpakowano "$TMUX_NAME
    fi
    return 0
}


function compile_tmux {
    # from regular github, not released
    # sh "$TMUX_DIR/temp/${TMUX_NAME::8}/autogen.sh"
    cd $TMUX_DIR/temp/${TMUX_NAME::8} # ::8 cuts .tar.gz
    ./configure && make -j$(nproc)
    if [ $? -eq 0 ]; then
	echo "> Skompilowano "$TMUX_NAME
    fi
    cd -
    return 0
}

if [ -d "$TMUX_DIR/temp" ]; then
    echo "> Znaleziono temp"
    rm -fR $TMUX_DIR/temp
fi

download_tmux
extract_tmux
compile_tmux

# TODO
# Dependecies can be installed by RPMBUILD
# function check_dependencies {
#     zypper install libevent-devel
#     zypper install ncurses-devel
# }

# TODO
# Make a function that creats a rpm package
# it will be easier to manage it when uninstalling


