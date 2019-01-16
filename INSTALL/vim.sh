#!/bin/bash

# git clone https://github.com/tmux/tmux.git 

VIMPLUG_DIR="$HOME/.vim/autoload/plug.vim"
VIMPLUG_GITHUB="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

if [[ -s $VIMPLUG_DIR ]]; then
	echo "VimPlug already installed"
else
	curl -fLo $VIMPLUG_DIR --create-dirs $VIMPLUG_GITHUB
fi
# https://stackoverflow.com/questions/13522599/how-to-run-vim-commands-from-terminal

# if file is regular file or does not exist it has to be made as a sybolic link to the file in a dotfile folder
if [[ $(file $HOME/.vimrc) =~ 'text' ]] || [[ ! -e $HOME/.vimrc ]]; then 
	echo "it does not exist or is a regular"
	replay=$(source $HOME/git/dotfiles/INSTALL/links -a .vimrc)
	echo $replay
	if [[ $replay == 0 ]]; then
		echo "BYLO ZERO"
	else
		echo "NIE BYLO"
	fi
# 	if [[ $($HOME/git/dotfiles/INSTALL/links -a .vimrc) != 0 ]]; then
# 		echo "Some kind of error occured."
# 		exit 1
# 	fi
fi

# if [[ ! $(vim -c 'PlugInstall') ]]; then
# 	echo "Some kind of error occured."
# 	exit 2
# else
# 	echo "It appears that everything went just fine..."
# 	exit 0
# fi


