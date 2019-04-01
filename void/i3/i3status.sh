#!/bin/bash

if [ "$(ifconfig eno1 | grep 'inet addr')" ]; then
    i3status -c ~/.i3/i3statusLAN.conf
    exit 0
else
    i3status -c ~/.i3/i3statusWIFI.conf
    exit 0
fi
