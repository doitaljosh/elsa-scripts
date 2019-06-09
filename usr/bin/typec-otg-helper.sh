#!/bin/bash

SYSFS='/sys/class/dual_role_usb/otg_default/mode'

case "$1" in
	--enable-otg)
	echo 'ufp' > $SYSFS
	echo 'dfp' > $SYSFS
	sleep 3
	echo 'ufp' > $SYSFS
	echo 'dfp' > $SYSFS
	echo 'typec-otg-helper: USB Type-C OTG adapter detected' > /dev/console
	;;
	--disable-otg)
	echo 'ufp' > $SYSFS
	echo 'typec-otg-helper: USB Type-C OTG adapter disconnected' > /dev/console
	;;
esac
