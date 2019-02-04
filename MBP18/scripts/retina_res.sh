#!/bin/bash

#spencer jackson

xrandr --newmode "2880x1800_60.00"  443.30  2880 3104 3424 3968  1800 1801 1804 1862  -HSync +Vsync
xrandr --addmode Virtual1 "2880x1800_60.00" 
xrandr --output Virtual1 --mode "2880x1800_60.00" 
