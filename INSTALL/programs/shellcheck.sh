#!/bin/bash

## DEPS
# apt install xz-utils
# yum -y install xz

if [[ -s /usr/bin/shellcheck-"${scversion}" ]]; then
	echo "shellcheck-${scversion}"
	exit 1
else
    export scversion="stable" # or "v0.4.7", or "latest"
    wget "https://storage.googleapis.com/shellcheck/shellcheck-${scversion}.linux.x86_64.tar.xz"
    tar --xz -xvf shellcheck-"${scversion}".linux.x86_64.tar.xz
    sudo cp shellcheck-"${scversion}"/shellcheck /usr/bin/
    rm -fR shellcheck-"${scversion}" shellcheck-"${scversion}".linux.x86_64.tar.xz
    shellcheck --version
fi
