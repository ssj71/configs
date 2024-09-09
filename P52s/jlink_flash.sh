#!/bin/bash

#ssj
if (($#<2)); then
    FILENAME=$1
    DEVICE=NRF52832_XXAA
else
    DEVICE=$1
    FILENAME=$2
fi

echo "loading $FILENAME"
echo "loadfile $FILENAME" >> tmpjlinkfile__
echo "sleep 100" >> tmpjlinkfile__
echo "rx 100" >> tmpjlinkfile__
echo "go" >> tmpjlinkfile__
echo "exit" >> tmpjlinkfile__
#-device Cortex-M4
#-device NFR52832_XXAA
#-device NFR52840_XXAA
#-device STM32F411RE
JLinkExe -if SWD -speed 2000 -device $DEVICE tmpjlinkfile__
rm tmpjlinkfile__
