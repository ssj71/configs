#! /bin/bash
PRINTER=1
IP=192.168.0.99
TARGET=E5plus

scp 192.168.0.99:/home/spencer/printer_$PRINTER\_data/config/* $TARGET/
