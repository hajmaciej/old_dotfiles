set $bg-color 	         #353535
set $inactive-bg-color   #404040
set $urgent-bg-color     #1783d1
set $text-color          #e4e4dc
set $inactive-text-color #606060

# window colors
#                       border              background         text                 indicator
client.focused          $bg-color           $bg-color          $text-color          #00ff00
client.unfocused        $inactive-bg-color  $inactive-bg-color $inactive-text-color #00ff00
client.focused_inactive $inactive-bg-color  $inactive-bg-color $inactive-text-color #00ff00
client.urgent           $urgent-bg-color    $urgent-bg-color   $text-color          #00ff00


