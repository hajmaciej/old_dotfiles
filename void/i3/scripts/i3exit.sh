#!/bin/sh

lock() {
#    i3lock -i /home/${USER}/Obrazy/Tapety/road/road_marking_turn_trees_115266_3840x2400.png
    sh /home/${USER}/.config/i3/scripts/i3lock.sh 
}

case "$1" in
    lock)
        lock
        ;;
    logout)
	sh /home/${USER}/.config/i3/scripts/i3save_workspaces.sh;
	sh /home/${USER}/.config/i3/scripts/mime.sh vivaldiStable;
	i3-msg exit
        ;;
    suspend)
        lock;
	systemctl suspend
        ;;
    reboot)
	sh /home/${USER}/.config/i3/scripts/i3save_workspaces.sh;
	sh /home/${USER}/.config/i3/scripts/mime.sh vivaldiStable;
        systemctl reboot
        ;;
    shutdown)
	sh /home/${USER}/.config/i3/scripts/i3save_workspaces.sh;
	sh /home/${USER}/.config/i3/scripts/mime.sh vivaldiStable;
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|reboot|shutdown}"
        exit 2
esac

exit 0
