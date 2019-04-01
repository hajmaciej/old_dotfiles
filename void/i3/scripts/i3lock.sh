#!/bin/bash
scrot /tmp/screen.png
# convert /tmp/screen.png -scale 2.5% -scale 4000% /tmp/screen.png
#convert /tmp/screen.png -blur 0x45 /tmp/screen.png 
convert /tmp/screen.png -filter Gaussian -blur 0x45 /tmp/screen.png
#convert $HOME/.icons/i3lock/login-password.png /tmp/lock-icon.png
#convert /tmp/screen.png /tmp/lock-icon.png -gravity center -composite -matte /tmp/screen.png
#i3lock -u -i /tmp/screen.png
