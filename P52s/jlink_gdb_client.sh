#!/bin/bash
#ssj

#gdb-multiarch -ex 'target remote localhost:2331' -ex 'mon reset 0' -ex 'br main' $1
#/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-gdb -ex 'target remote localhost:2331' -ex 'mon reset 0' -ex 'br main' $1
/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-gdb -ex 'target remote localhost:2331' -ex 'br main' $1
