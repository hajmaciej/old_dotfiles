#!/bin/bash

# git clone https://github.com/tmux/tmux.git 

VIMPLUG_DIR="$HOME/.vim/autoload/plug.vim"
VIMPLUG_GITHUB="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

if [[ -s $VIMPLUG_DIR ]]; then
	echo "VimPlug already installed"
else
	curl -fLo "$VIMPLUG_DIR" --create-dirs "$VIMPLUG_GITHUB"
fi
# https://stackoverflow.com/questions/13522599/how-to-run-vim-commands-from-terminal

# if file is regular file or does not exist it has to be made as a sybolic link to the file in a dotfile folder
if [[ $(file "$HOME/.vimrc") =~ 'text' ]] || [[ ! -e "$HOME/.vimrc" ]]; then 
	# Worth remembering, that if 0; then it enteres the statement
	# So basically zero is success!
	if "$HOME/git/dotfiles/INSTALL/links -a .vimrc"; then
	    sed -i 's/colorscheme/"colorscheme/g' "$HOME/git/dotfiles/vimrc"
	    if vim -c "PlugInstall"; then
	 	echo "It appears that everything went just fine..."
		sed -i 's/"colorscheme/colorscheme/g' "$HOME/git/dotfiles/vimrc"
		exit 0
	    else
		echo "Something wrong with PlugInstall"
		sed -i 's/"colorscheme/colorscheme/g' "$HOME/git/dotfiles/vimrc"
		exit 1
	    fi
	else
	    echo "Some kind of error with link installation occured."
	    exit 1
	fi
fi


