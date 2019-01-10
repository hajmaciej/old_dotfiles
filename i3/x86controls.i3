####################################### XF86 CONTROLS

bindsym XF86PowerOff mode "$mode_system"
bindsym XF86AudioRaiseVolume exec "amixer -D pulse sset Master '5%+'"
bindsym XF86AudioLowerVolume exec "amixer -D pulse sset Master '5%-'"
bindsym XF86AudioMute exec "amixer -D pulse set Master toggle"

bindsym XF86TouchpadToggle exec --no-startup-id /home/${USER}/.bin/microphone.sh 
bindsym XF86Sleep exec --no-startup-id /home/${USER}/.config/i3/scripts/i3exit.sh suspend

# Screen brightness controls
bindsym XF86MonBrightnessUp exec xbacklight -inc 10 # increase screen brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 10 # decrease screen brightness

bindsym Scroll_Lock exec --no-startup-id /home/fm/.config/i3/scripts/i3lock.sh

