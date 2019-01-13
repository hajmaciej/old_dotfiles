## ADD

# ./links -a filename

Links given dotfile (placed in dotfile folder) to $HOME, eg $HOME/.filename -> $HOME/$DOTFILE\_DIR/filename
If dotfile existed before linkeage it will be backed up with date of archivization added, eg $HOME/.filename.old

# ./links -a filename -t targetfilename

Links given dotfile (placed in dotfile folder) to $HOME, eg $HOME/.filename -> $HOME/$DOTFILE\_DIR/targetfilename

## RESTORE

# ./links -r filename

Removes link from $HOME.

# ./links -f filename

Check if file in $HOME is link or regular text file

# ./links -f filename -c

Clears from file all archived/restored info

## LIST

# ./links -l

Lists all dotfiles in dotfile folder

# ./links -h

Shows usage

