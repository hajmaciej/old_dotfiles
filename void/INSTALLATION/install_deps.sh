#!/bin/bash

DEPENDENCIES=$(cat deps)
if [[ -z $DEPENDENCIES ]]; then
	echo "There is no deps in file."
	exit 1
fi

for dep in  $DEPENDENCIES; do
	sudo xbps-install -Sy $dep
done
