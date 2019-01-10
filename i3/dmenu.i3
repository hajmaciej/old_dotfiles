#########################################################################################
##################### DMENU 

# start dmenu (a program launcher)
#bindsym Mod1+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym Mod1+d exec --no-startup-id i3-dmenu-desktop

# j4-dmenu-desktop -- A faster replacement for i3-dmenu-desktop
# https://github.com/enkore/j4-dmenu-desktop
# https://aur.archlinux.org/packages/j4-dmenu-desktop-git/
# bindsym $mod+space exec --no-startup-id j4-dmenu-desktop

# bindsym $mod+space exec rofi -show drun -theme android_notification

#bindsym $mod+space exec rofi -show run -lines 8 -eh 2 -width 100 -padding 800 -opacity "85" -bw 0 -bc $bg-color -bg $bg-color -fg $text-color -hlbg $bg-color -hlfg "#9575cd" -font "System San Francisco Display 18"
bindsym $mod+space exec --no-startup-id j4-dmenu-desktop --dmenu="dmenu -i -fn 'SF mono:light:pixelsize=16'" # -l 5"


