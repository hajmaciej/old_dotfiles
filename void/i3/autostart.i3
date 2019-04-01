#########################################################################################
################### AUTOSTART
#exec_always /home/fm/.config/i3/scripts/i3start.sh
# exec_always --no-startup-id feh --bg-scale ~/Obrazy/Tapety/Nature01/autumn_forest_trail_grass_trees_101437_1920x1080.jpg
# exec_always --no-startup-id feh --bg-scale /home/fm/Obrazy/Tapety/Nature01/canada_mountain_road_markings_103265_1920x1200.jpg

# exec_always --no-startup-id feh --bg-scale ~/Obrazy/Tapety/road/road_trees_marking_114610_3840x2400.jpg
exec_always --no-startup-id numlockx on
exec_always --no-startup-id compton -f --config ~/.compton.conf -b
exec_always --no-startup-id dunst
# bindsym Ctrl+\ exec --no-startup-id /home/${USER}/.bin/monitor_detection_key_pressed.sh

# exec --no-startup-id nm-applet
# exec --no-startup-id mintupdate-launcher
# exec --no-startup-id redshift-gtk
# #exec --no-startup-id volumeicon
# exec --no-startup-id pidgin

bindsym Print exec --no-startup-id /home/${USER}/.bin/screenshot_flameshot.sh full
bindsym Shift+Print exec --no-startup-id /home/${USER}/.bin/screenshot_flameshot.sh gui

bindsym $mod+u exec /home/${USER}/.bin/translate.sh


#bindsym XF86AudioPlay exec "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
#bindsym XF86AudioNext exec "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"
#bindsym XF86AudioPrev exec "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"
#bindsym XF86AudioStop exec "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop"

