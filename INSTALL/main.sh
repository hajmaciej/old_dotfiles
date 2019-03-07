#!/bin/bash



function check_linux_version {
    if [ -s /etc/issue ]; then
	LINUX_VERSION=$(cat /etc/issue | grep Welcome)
    else
	echo "Unrecognized Linux version :("
	return 1
    fi

    return 0
}

check_linux_version

echo $LINUX_VERSION 

###################
# 1. os_check
# 2. installed_check based on files in programs/
# 3. install os_version
# 4. links.sh the dotfiles