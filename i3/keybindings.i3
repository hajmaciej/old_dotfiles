# Keybindings

set $mod Mod4
set $alt Mod1

# kill focused window
bindsym $mod+c kill

# thin borders
hide_edge_borders both

# use Mouse+Mod1 to drag floating windows to their wanted position
#floating_modifier Mod1
floating_modifier $mod

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+b split h

# sticky window
bindsym $mod+Shift+s sticky toggle

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym Mod1+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym Mod1+d focus child

#######################################################################################
# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
# bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

#########################################################################################
##################### PROGRAMS

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

#bindsym $mod+Mod1+v exec vivaldi --user-data-dir='/home/fm/.config/vivaldi/i3'
bindsym $mod+Mod1+v exec vivaldi 

#####################################################################################
################################## EXIT

#set $mode_system System (l) lock, (e) logout, (s) suspend, (r) reboot, (Shift+s) shutdown
set $mode_system System (l) logout, (r) reboot, (s) shutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id ${HOME}/.config/i3/scripts/i3exit.sh logout, mode "default"
#    bindsym e exec --no-startup-id ${HOME}/.config/i3/scripts/i3exit.sh lock, mode "default"
#    bindsym s exec --no-startup-id ${HOME}/.config/i3/scripts/i3exit.sh suspend, mode "default"
    bindsym r exec --no-startup-id ${HOME}/.config/i3/scripts/i3exit.sh reboot, mode "default"
    bindsym s exec --no-startup-id ${HOME}/.config/i3/scripts/i3exit.sh shutdown, mode "default"

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

