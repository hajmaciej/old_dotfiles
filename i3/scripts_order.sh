#!/bin/bash
# Order of loading scripts

DIR=$(dirname $(readlink -f $0))
I3CONFIGDIR=$HOME'/.config/i3'

ORDER=(
    main.i3
    keybindings.i3
    x86controls.i3
    colors.i3
    workspaces.i3
    bar.i3
    dmenu.i3
    window_resize.i3
    scratchpad.i3
    autostart.i3
)

if [[ -f ${I3CONFIGDIR}/config ]]; then
    mv ${I3CONFIGDIR}/config ${I3CONFIGDIR}/config.bak
fi

#if [[ -f ${I3CONFIGDIR}/tmp ]]; then
#    rm ${I3CONFIGDIR}/tmp
#fi

for file in ${ORDER[*]}; do
    cat $DIR/$file >> ${I3CONFIGDIR}/tmp
done

mv ${I3CONFIGDIR}/tmp ${I3CONFIGDIR}/config
