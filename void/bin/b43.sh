#!/bin/bash
DRIVER="broadcom-wl-6.30.163.46.tar.bz2"
WEBSITE="https://www.lwfinger.com/b43-firmware/$DRIVER"

if [[ ! $(xbps-query -l | grep wget) ]]; then
    sudo xbps-install -Sy wget
fi

if [[ ! $(xbps-query -l | grep b43-fwcutter) ]]; then
    sudo xbps-install -Sy b43-fwcutter
fi

export FIRMWARE_INSTALL_DIR="/lib/firmware"

tdir=$(mktemp -d /tmp/b43.XXXXXXXX)
wget -q "$WEBSITE" -O "$tdir/$DRIVER"
sudo tar xjf "$tdir/$DRIVER" -C "$tdir"

APSTA=$(ls $tdir | grep apsta)
echo "apsta $APSTA"
sudo b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" "$tdir/$APSTA"

rm -fr $tdir
