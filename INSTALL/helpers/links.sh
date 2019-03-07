#!/bin/bash

DOTFILES_DIR=$(find ~ -iname "dotfiles" 2> /dev/null | grep -E -i "git")
TARGET_DIR=''
OLD='.old'
ARCHIVIZATION_DATE="# Archived $(date)"

declare -A dotfiles_paths
dotfiles_paths[qutebrowser]="$HOME/.config/qutebrowser/config.py"
dotfiles_paths[vsc]="$HOME/.config/Code/User/settings.json"
dotfiles_paths[i3]="$HOME/.config/i3/config"

function usage {
	echo "Usage: $0 [-a|-r|-f] file [-h]"
	echo "	-a adds dotfile to $HOME"
	echo "	-r removes and restores (if there was backup file during dotfile add)"
	echo "	-f checks dotfile if it is a symbolic link or regular text file"
	echo "	-l lists dotfiles gathered in dotfile folder"
	echo "	-h help helps ;)"
	return
}

function set_variable {
    local varname
    varname=$1
    shift
    if [ -z "${!varname}" ]; then
	# eval "$varname=\"$@\""
        eval "$varname=\"$*\""
    else
#         echo "Error: $varname already set"
        usage
    fi
    return
}

function list_dotfiles {
    find "$DOTFILES_DIR" -type f -not -iname "*md" -not -iname "*swp" 2> /dev/null | grep -v "\.git"
    return 0
}

while getopts ":f:a:r:hl" OPTIONS; do
	case "${OPTIONS}" in 
		f) # file
			if [[ ${dotfiles_paths[$OPTARG]} ]]; then
			    temp="${dotfiles_paths[$OPTARG]}"
			    LINK="${temp##*/}"
			    TARGET_DIR="${temp%/*}"
			else
			    LINK=$OPTARG
			    TARGET_DIR=$HOME
			fi
			set_variable ACTION FILE_CHECK
			;;
		a) # add
			if [[ ${dotfiles_paths[$OPTARG]} ]]; then
			    temp="${dotfiles_paths[$OPTARG]}"
			    LINK="${temp##*/}"
			    TARGET_DIR="${temp%/*}"
			else
			    LINK=$OPTARG
			    TARGET_DIR=$HOME
			fi
			set_variable ACTION ADD
			;;
		r) # restore
			if [[ ${dotfiles_paths[$OPTARG]} ]]; then
			    temp="${dotfiles_paths[$OPTARG]}"
			    LINK="${temp##*/}"
			    TARGET_DIR="${temp%/*}"
			else
			    LINK=$OPTARG
			    TARGET_DIR=$HOME
			fi
			set_variable ACTION RESTORE
			;;
		l) # list
			echo "Dotfiles provided by dotfiles folder are:"
			list_dotfiles
			exit 0	
			;;
		# c | -clear)
			# clears the targeted file from archivization infos
		# t | -target)
			# to which dotfile link
			# used only with -a
		# v | verbose)
		#	;;	
		h) # help
			usage
			exit 0
			;;
		# q | -quiet)
		# might be added as the first parameter?
		:)
		    echo "Missing or redundant parameter."
		    echo ""
		    usage
		    exit 1
		    ;;
		*)
		    echo "Abnormal termination."
			echo ""
		    usage
		    exit 1
		    ;;
	esac
done

[ -z "$ACTION" ] && usage

function file_check {
    local file_type
    file_type=$(file "$TARGET_DIR/$LINK")
    if [[ $file_type =~ 'link' ]]; then
	echo "File $TARGET_DIR/$LINK is a symbolic link."
	return 0
    elif [[ $file_type =~ 'text' ]]; then
	echo "File $TARGET_DIR/$LINK is a regular text file config."
	return 1	
    else
    	echo "File $TARGET_DIR/$LINK does not exist!"
	echo "Aborted."
	return 2
    fi
}

function add_link {
    # if dotfile exists in home folder, it will be moved to name.old
    # additionally that file will h REPLAY
    # info about archivization date 
    local file_type
    file_type=$(file "$TARGET_DIR/$LINK")
    # file has to be regular text file to process
    if [[ ! $file_type =~ 'link' ]]; then 
	# Check if there is existing dotfile in dotfile folder
	# TODO DESCRIPTION
	if [[ "${LINK:0:1}" =~ "." ]]; then 
	    UNHIDDEN_DOTFILE="${LINK:1:${#LINK}}"
	else
	    UNHIDDEN_DOTFILE="$LINK"
	fi
        if [[ -s $DOTFILES_DIR/$UNHIDDEN_DOTFILE ]]; then
	    echo "$LINK will be added to $TARGET_DIR as a symbolic link."
            read -p "Do you want to proceed? [Y/n]: "  REPLAY
	    # user decded to add the link
            if [[ $REPLAY =~ ^[Yy]$ ]] ; then
		# found existing dotfile in home folder - it has to be archived
                if [[ -s $TARGET_DIR/$LINK ]]; then
		    echo "Found existing $TARGET_DIR/$LINK. It will be archived as $TARGET_DIR/$LINK$OLD."
                    mv "$TARGET_DIR/$LINK" "$TARGET_DIR/$LINK$OLD"
    	            echo "${ARCHIVIZATION_DATE//?/\#}" >> "$TARGET_DIR/$LINK$OLD"
                    echo "$ARCHIVIZATION_DATE" >> "$TARGET_DIR/$LINK$OLD"
                fi 
                ln -s "$DOTFILES_DIR/$UNHIDDEN_DOTFILE" "$TARGET_DIR/$LINK"
	        echo "$TARGET_DIR/$LINK was linked to $DOTFILES_DIR/$UNHIDDEN_DOTFILE"
		return 0
	    # user decided not to add the link
	    else
		echo "Aborted."
		return 1
            fi
	# there is no such dotfile in dotfile folder provided
        else
       	    echo "File $DOTFILES_DIR/$LINK does not exist!"
	    echo "Aborted."
	    return 1
        fi
    # dotfile is already a symbolic link
    else
	echo "It looks like $TARGET_DIR/$LINK is already linked to the dotfile folder."
	echo "Please check."
	return 2
    fi
    return
}

function restore_link {
    local file_type
    file_type=$(file "$TARGET_DIR/$LINK")
    # file type has to be link to be restored
    if [[ $file_type =~ 'link' ]]; then 
	echo "Link $TARGET_DIR/$LINK will be removed."
        # if no backuo file
        if [[ ! -s $TARGET_DIR/$LINK$OLD ]]; then 
	    echo "It appears that there is no backup file ($TARGET_DIR/$LINK$OLD)"
            read -p "Do you want to proceed? [Y/n]: " REPLAY
            if [[ $REPLAY =~ ^[Yy]$ ]]; then
	        rm "$TARGET_DIR/$LINK"
		echo "$TARGET_DIR/$LINK was removed."
	        return 0
	    else
		echo "Aborted."
	        return 1
	    fi
        # With backup file
        else 
	    echo "Found archived file $LINK$OLD which will be restored."
            read -p "Do you want to proceed? [Y/n]: " REPLAY
            if [[ $REPLAY =~ ^[Yy]$ ]]; then
                rm "$TARGET_DIR/$LINK"
        	echo "${ARCHIVIZATION_DATE//?/\#}" >> "$TARGET_DIR/$LINK$OLD"
        	echo "${ARCHIVIZATION_DATE/Archived/Restored}" >> "$TARGET_DIR/$LINK$OLD"
        	mv "$TARGET_DIR/$LINK$OLD" "$TARGET_DIR/$LINK"
		echo "$TARGET_DIR/$LINK was removed, $TARGET_DIR/$LINK$OLD was succesfuly restored."
        	return 0
            fi
        fi
    # file is regular text file - we take no action
    else 
        echo "File $TARGET_DIR/$LINK is not a link, or does not exist."
	echo "Aborted."
	return 1
    fi
} 

case $ACTION in
    FILE_CHECK) 
	    echo "Checking the file type of $LINK"
	    file_check "$LINK"
	    ;;
    ADD) 
	    add_link "$LINK"
	    ;;
    RESTORE) 
	    restore_link "$LINK"
	    ;;
esac
