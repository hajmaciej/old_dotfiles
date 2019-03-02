#!/bin/bash

# git clone https://github.com/tmux/tmux.git 
TMUX_DIR="$HOME/.tmux"
TMUX_VERSION="2.8"
TMUX_NAME="tmux-$TMUX_VERSION.tar.gz"
TMUX_GIT="https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/$TMUX_NAME"
TMUX_RPM="https://kojipkgs.fedoraproject.org//packages/tmux/2.8/2.fc27/x86_64/tmux-2.8-2.fc27.x86_64.rpm"

function download_tmux {
    echo -n "Checking $TMUX_DIR/temp ... "
    if [[ -d "$TMUX_DIR/temp" ]]; then
	echo "Found"
	echo -n "Deleting $TMUX_DIR/temp ... "
	rm -fR "$TMUX_DIR/temp"
	echo "OK"
    else
	echo "Not found"
    fi
    echo -n "Downloading $TMUX_NAME ... "
    if curl --silent -fLo "$TMUX_DIR/temp/$TMUX_NAME" --create-dirs "$TMUX_GIT"; then
	echo "OK"
	return 0
    else
	echo "ERROR"
	return 1
    fi
}

function download_tmux_rpm {
    echo -n "Downloading $TMUX_NAME RPM ... "
    if curl --silent -fLo "$TMUX_DIR/temp/$TMUX_NAME" --create-dirs "$TMUX_RPM"; then
	echo "OK"
	return 0
    else
	echo "ERROR"
	return 1
    fi
}

function check_if_rpm_present {
    if tmux -V; then
	return 1
    else 
	return 0
    fi
}

function download_tpm {
    echo -n "Checking $TMUX_DIR/tpm ... "
    if [[ -e "$HOME/.tmux/tpm" ]]; then
	echo "Found."
    elif [[ ! -e "$TMUX_DIR/tpm" ]]; then
	echo "Not fonund."
	echo -n "Downloading ... "
	if git clone "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm"; then
	    echo "OK"
	    return 0
	else
	    echo "ERROR"
	    return 1
	fi
    else
	echo "Problem with $TMUX_DIR/tpm"
	return 1
    fi
}

function extract_tmux {

    echo -n "Extracting $TMUX_NAME ... "
    if tar -xf "$TMUX_DIR/temp/$TMUX_NAME" --directory "$TMUX_DIR/temp"; then
	echo "OK"
	return 0
    else
	echo "ERROR"
	return 1
    fi
}


function compile_tmux {
    # from regular github, not released
    # sh "$TMUX_DIR/temp/${TMUX_NAME::8}/autogen.sh"
    local tmux_short="${TMUX_NAME::8}"
    local tmux_temp="$TMUX_DIR/temp"

    cd "$tmux_temp/$tmux_short" || echo "cd fails" || exit 2 # ::8 cuts .tar.gz
    date > "$tmux_temp/configure.err"
    echo -n "Configuring $TMUX_NAME ... "
    if "./configure" 1> /dev/null 2> "$tmux_temp/configure.err"; then
	echo "OK"
	rm "$tmux_temp/configure.err" 
    else 
	echo "ERROR"
	echo "Please read $tmux_temp/configure.err for more info."
	return 1
    fi
    
    date > "$tmux_temp/make.err"
    echo -n "Making $TMUX_NAME ... "
    if make "-j$(nproc)" 1> /dev/null 2> "$tmux_temp/make.err"; then
	echo "OK"
	rm "$tmux_temp/make.err"
	return 0
    else
	echo "ERROR"
	echo "Please read $tmux_temp/make.err for more info."
	return 1
    fi

    cd - || echo "cd fails" || exit 2
}

function checkinstall_tmux {
    if tmux -V; then
	echo "Tmux is installed. Please remove it before installing this version"
	exit 1
    fi
    cd "$TMUX_DIR/temp/tmux-$TMUX_VERSION"
    sudo -k checkinstall \
        --pkgsource="$TMUX_GIT" \
	--deldesc=no \
	--nodoc \
	--maintainer="nicholas.marriott@gmail.com" \
	--pkgarch=$(dpkg --print-architecture) \
	--pkgversion="$TMUX_VERSION" \
	--pkgname="tmux-$TMUX_VERSION" \
	--requires="libc6 \(>= 2.27\), libevent-2.1-6 \(>= 2.1.8-stable\), libtinfo5 \(>= 6\), libutempter0 \(>= 1.1.5\)"
}


if ! download_tmux; then
    echo "Can't download tmux. Check your connection"
    exit 1
fi

if ! download_tpm; then
    echo "Problem with tpm download."
    exit 1
fi

if ! extract_tmux; then
    echo "Extration problem."
    exit 1
fi

if ! compile_tmux; then
    echo "Compilation problem."
    exit 1
fi

if ! checkinstall_tmux; then
    echo "CHeckinstall problem."
    exit 1
fi

echo "Complete."
exit 0

# TODO
# Dependecies can be installed by RPMBUILD
# function check_dependencies {
#     zypper install libevent-devel
#     zypper install ncurses-devel
# }

# TODO
# Make a function that creats a rpm package
# it will be easier to manage it when uninstalling


