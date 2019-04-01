#!/bin/bash

############## WORKSPACE P
#i3-save-tree --workspace 0 > ~/.config/i3/workspaces/workspace-p.json
#sed -i -r 's|(// )(".*)|\2|g' ws

# get from json file which titles are in ws, and then, if there is one on current ws opened, move to
# propper ws

for i in {1..10}; do
    echo "i3-save_tree --workspace "$i" > ~/.config/i3/workspaces/workspace-"$i".json";
    echo "i3-save_tree --workspace "$i" > ~/.config/i3/workspaces/workspace-"$i".json";
done
