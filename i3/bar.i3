#######################################################################################
########################## BAR

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
	strip_workspace_numbers yes
#        exec ~/.config/i3/i3status.sh
        status_command i3status -c /home/fm/.config/i3/i3status.conf
#        status_command i3blocks -c ~/.config/i3/i3blocks.conf
        workspace_buttons yes
        position top
	font pango: Roboto, FontAwesome5Free, FontAwesome5Brands
	#font pango: Roboto 12
	#font pango: SF Mono light 12


#        colors {
#           background #353535
#           statusline #e4e4dc
#           separator #666666
#           #                  border  backgr. text
#           focused_workspace  #4c7899 #285577 #ffffff
#           active_workspace   #333333 #5f676a #ffffff
#           inactive_workspace #333333 #222222 #888888
#           urgent_workspace   #2f343a #900000 #ffffff
#        }
#}

	colors {
		background $bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  $bg-color          $bg-color          $text-color
		inactive_workspace $bg-color 	      $bg-color          $inactive-text-color
		urgent_workspace   $urgent-bg-color   $urgent-bg-color   $text-color
	}
}

