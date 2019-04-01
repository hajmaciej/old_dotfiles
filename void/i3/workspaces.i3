##################################################################################
#################### WORKSPACES
# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.

# MAIN WORKSPACES
# $ws0 jest do zapisywania screenshotow jako notatek
# set $ws0 "0:!: "

set $ws00 "00:!: "
    assign [class="flameshot"] $ws00
    for_window[class="flameshot"] floating enable

set $ws11 "11:1: "
set $ws21 "21:2: "
set $ws31 "31:3: "
set $ws41 "41:4: "
set $ws51 "51:5: "
set $ws61 "61:6: "
set $ws71 "71:7: "
    assign [class="Caprine"] $ws71
    assign [class="Skype"] $ws71
    assign [class="Cryptocat"] $ws71
    for_window [class="Cryptocat"] floating enable 
    assign [class="qTox"] $ws71
    for_window [class="qTox"] floating enable
set $ws81 "81:8: "	
    assign [class="Thunderbird"] $ws81
set $ws91 "91:9: "
    assign [class="Audacious"] $ws91 
    assign [class="Anoise"] $ws91
    for_window[class="Anoise"] floating enable
set $ws101 "101:10: "

workspace $ws11 output LVDS-0
workspace $ws21 output LVDS-0 
workspace $ws31 output LVDS-0
workspace $ws41 output LVDS-0 
workspace $ws51 output LVDS-0 
workspace $ws61 output LVDS-0
workspace $ws71 output LVDS-0
workspace $ws81 output LVDS-0
workspace $ws91 output LVDS-0
workspace $ws101 output LVDS-0

# WWW
bindsym $mod+1 workspace $ws11
# C++
bindsym $mod+2 workspace $ws21
# Python
bindsym $mod+3 workspace $ws31
# Bash
bindsym $mod+4 workspace $ws41
# i3
bindsym $mod+5 workspace $ws51
# Job / Physics
bindsym $mod+6 workspace $ws61
# Messenger / Other
bindsym $mod+7 workspace $ws71
# Mail / RSS
bindsym $mod+8 workspace $ws81
# Music / Other
bindsym $mod+9 workspace $ws91
# Movie / Downloads
bindsym $mod+0 workspace $ws101

bindsym $mod+Shift+1 move container to workspace $ws11
bindsym $mod+Shift+2 move container to workspace $ws21
bindsym $mod+Shift+3 move container to workspace $ws31
bindsym $mod+Shift+4 move container to workspace $ws41
bindsym $mod+Shift+5 move container to workspace $ws51
bindsym $mod+Shift+6 move container to workspace $ws61
bindsym $mod+Shift+7 move container to workspace $ws71
bindsym $mod+Shift+8 move container to workspace $ws81
bindsym $mod+Shift+9 move container to workspace $ws91
bindsym $mod+Shift+0 move container to workspace $ws101

# Aditional Workspaces

# www
set $ws12 "12:"

# C++
set $ws22 "22:"
    assign [class="Code"] $ws22
# Python
set $ws32 "32:"

# Bash
set $ws42 "42:"

#
set $ws52 "52:"

# Job / Physics
set $ws62 "62:"

# Messenger / Other
set $ws72 "72:"
    assign [class="Pidgin"] $ws72
    # for_window [class="Pidgin"] floating window
# Mail / RSS
set $ws82 "82:"
    assign [class="Liferea"] $ws82

# Music / Other
set $ws92 "92:"

# Movies / Downloads
set $ws102 "102:"
    assign [class="Deluge"] $ws102
    assign [class="Nicotine"] $ws102

workspace $ws12 output LVDS-0
workspace $ws22 output LVDS-0 
workspace $ws32 output LVDS-0
workspace $ws42 output LVDS-0 
workspace $ws52 output LVDS-0 
workspace $ws62 output LVDS-0
workspace $ws72 output LVDS-0
workspace $ws82 output LVDS-0
workspace $ws92 output LVDS-0
workspace $ws102 output LVDS-0

bindsym $alt+1 workspace $ws12 
bindsym $alt+2 workspace $ws22
bindsym $alt+3 workspace $ws32
bindsym $alt+4 workspace $ws42
bindsym $alt+5 workspace $ws52
bindsym $alt+6 workspace $ws62
bindsym $alt+7 workspace $ws72
bindsym $alt+8 workspace $ws82
bindsym $alt+9 workspace $ws92
bindsym $alt+0 workspace $ws102

bindsym $alt+Shift+1 move container to workspace $ws12
bindsym $alt+Shift+2 move container to workspace $ws22
bindsym $alt+Shift+3 move container to workspace $ws32
bindsym $alt+Shift+4 move container to workspace $ws42
bindsym $alt+Shift+5 move container to workspace $ws52
bindsym $alt+Shift+6 move container to workspace $ws62
bindsym $alt+Shift+7 move container to workspace $ws72
bindsym $alt+Shift+8 move container to workspace $ws82
bindsym $alt+Shift+9 move container to workspace $ws92
bindsym $alt+Shift+0 move container to workspace $ws102

# HDMI Workspaces
set $ws1HDMI "1:1: " 
set $ws2HDMI "2:2: " 
set $ws3HDMI "3:3: " 
set $ws4HDMI "4:4: " 
set $ws5HDMI "5:5: " 
set $ws6HDMI "6:6: " 
set $ws7HDMI "7:7: " 
set $ws8HDMI "8:8: " 
set $ws9HDMI "9:9: " 
set $ws10HDMI "10:10: " 

workspace $ws1HDMI output DP-5.1
workspace $ws2HDMI output DP-5.1
workspace $ws3HDMI output DP-5.1
workspace $ws4HDMI output DP-5.1
workspace $ws5HDMI output DP-5.1
workspace $ws6HDMI output DP-5.1
workspace $ws7HDMI output DP-5.1
workspace $ws8HDMI output DP-5.1
workspace $ws9HDMI output DP-5.1
workspace $ws10HDMI output DP-5.1

bindsym Ctrl+1 workspace $ws1HDMI 
bindsym Ctrl+2 workspace $ws2HDMI 
bindsym Ctrl+3 workspace $ws3HDMI
bindsym Ctrl+4 workspace $ws4HDMI
bindsym Ctrl+5 workspace $ws5HDMI
bindsym Ctrl+6 workspace $ws6HDMI
bindsym Ctrl+7 workspace $ws7HDMI
bindsym Ctrl+8 workspace $ws8HDMI
bindsym Ctrl+9 workspace $ws9HDMI
bindsym Ctrl+0 workspace $ws10HDMI

bindsym Ctrl+Shift+1 move container to workspace $ws1HDMI
bindsym Ctrl+Shift+2 move container to workspace $ws2HDMI
bindsym Ctrl+Shift+3 move container to workspace $ws3HDMI
bindsym Ctrl+Shift+4 move container to workspace $ws4HDMI
bindsym Ctrl+Shift+5 move container to workspace $ws5HDMI
bindsym Ctrl+Shift+6 move container to workspace $ws6HDMI
bindsym Ctrl+Shift+7 move container to workspace $ws7HDMI
bindsym Ctrl+Shift+8 move container to workspace $ws8HDMI
bindsym Ctrl+Shift+9 move container to workspace $ws9HDMI
bindsym Ctrl+Shift+0 move container to workspace $ws10HDMI

# VGA Workspaces
set $ws1VGA "1:1: " 
set $ws2VGA "2:2: " 
set $ws3VGA "3:3: " 
set $ws4VGA "4:4: " 
set $ws5VGA "5:5: " 
set $ws6VGA "6:6: " 
set $ws7VGA "7:7: " 
set $ws8VGA "8:8: " 
set $ws9VGA "9:9: " 
set $ws10VGA "10:10: " 

workspace $ws1VGA output VGA-0 
workspace $ws2VGA output VGA-0
workspace $ws3VGA output VGA-0
workspace $ws4VGA output VGA-0
workspace $ws5VGA output VGA-0
workspace $ws6VGA output VGA-0
workspace $ws7VGA output VGA-0
workspace $ws8VGA output VGA-0
workspace $ws9VGA output VGA-0
workspace $ws10VGA output VGA-0

bindsym Ctrl+$alt+1 workspace $ws1VGA
bindsym Ctrl+$alt+2 workspace $ws2VGA
bindsym Ctrl+$alt+3 workspace $ws3VGA
bindsym Ctrl+$alt+4 workspace $ws4VGA
bindsym Ctrl+$alt+5 workspace $ws5VGA
bindsym Ctrl+$alt+6 workspace $ws6VGA
bindsym Ctrl+$alt+7 workspace $ws7VGA
bindsym Ctrl+$alt+8 workspace $ws8VGA
bindsym Ctrl+$alt+9 workspace $ws9VGA
bindsym Ctrl+$alt+0 workspace $ws10VGA

bindsym Ctrl+$alt+Shift+1 move container to workspace $ws1VGA
bindsym Ctrl+$alt+Shift+2 move container to workspace $ws2VGA
bindsym Ctrl+$alt+Shift+3 move container to workspace $ws3VGA
bindsym Ctrl+$alt+Shift+4 move container to workspace $ws4VGA
bindsym Ctrl+$alt+Shift+5 move container to workspace $ws5VGA
bindsym Ctrl+$alt+Shift+6 move container to workspace $ws6VGA
bindsym Ctrl+$alt+Shift+7 move container to workspace $ws7VGA
bindsym Ctrl+$alt+Shift+8 move container to workspace $ws8VGA
bindsym Ctrl+$alt+Shift+9 move container to workspace $ws9VGA
bindsym Ctrl+$alt+Shift+0 move container to workspace $ws10VGA

# switching between workspace
# http://i3wm.org/docs/userguide.html#_changing_named_workspaces_m    oving_to_workspaces
bindsym $mod+m workspace next
bindsym $mod+n workspace prev
bindsym $mod+Shift+m move container to workspace next
bindsym $mod+Shift+n move container to workspace prev
bindsym $mod+d workspace back_and_forth
# NEW
bindsym $mod+Ctrl+greater move workspace to output right
bindsym $mod+Ctrl+less move workspace to output left


