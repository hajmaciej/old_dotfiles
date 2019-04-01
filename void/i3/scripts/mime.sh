#!/bin/bash

MIMEFILE="/home/${USER}/.config/mimeapps.list"

vivaldiStableI3() {
	if [ -f $MIMEFILE ]; then
		sed -i 's/vivaldi-stable.desktop/vivaldi-stable-i3.desktop/g' $MIMEFILE;
		echo "vivaldi-stable -> vivaldi-stable-i3";
	fi
}

vivaldiStable() {
	if [ -f $MIMEFILE ]; then
		sed -i 's/vivaldi-stable-i3.desktop/vivaldi-stable.desktop/g' $MIMEFILE;
		echo "vivaldi-stable-i3 -> vivaldi-stable";
	fi
}

"$@"
