#!/bin/bash

#ssj
if (($#<1)); then
    DEVICE=NRF52832_XXAA
else
    DEVICE=$1
fi

echo "erase" >> tmpjlinkfile__
echo "mem 10001000 100" >> tmpjlinkfile__
echo "exit" >> tmpjlinkfile__
#-device Cortex-M4
#-device NFR52832_XXAA
#-device NFR52840_XXAA
#-device STM32F411RE
JLinkExe -if SWD -speed 4000 -device $DEVICE tmpjlinkfile__
rm tmpjlinkfile__
