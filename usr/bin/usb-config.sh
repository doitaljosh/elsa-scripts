#!/bin/bash

SYSFS=/sys/class/android_usb/android0

echo 0 > $SYSFS/enable
sleep 1
echo -n 'rndis,mass_storage' > $SYSFS/functions
echo -n '/dev/sda' > $SYSFS/f_mass_storage/lun/file
sleep 1
echo 1 > $SYSFS/enable
sleep 2
ifconfig rndis0 up
sleep 1
ifconfig rndis0 10.0.0.1
