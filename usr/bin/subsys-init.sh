#!/bin/bash
# Boot up the Qualcomm Hexagon ADSP
echo 1 > /sys/kernel/boot_adsp/boot
# Boot up the baseband
cat /dev/subsys_modem > /dev/null
# Boot up the Venus video codec
cat /dev/subsys_venus > /dev/null
# Boot up the sensor low power island core
echo 1 > /sys/kernel/boot_slpi/boot
