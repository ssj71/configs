#!/bin/bash

#spencer
d=$(date)
sleep 30
if killall -0 i3lock;
then
    echo $d screen locked >> ~/timecard
else
    exit
fi
while :
do
    sleep 30
    if ! killall -0 i3lock;
    then
        echo $(date) screen unlocked >> ~/timecard
        exit
    fi
done
