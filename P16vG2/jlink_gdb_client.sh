#!/bin/bash
#ssj
port=2331
gdb-multiarch -ex 'target remote localhost:'"$port" -ex 'mon reset 0' -ex 'br main' $1
#/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-gdb -ex 'target remote localhost:2331' -ex 'mon reset 0' -ex 'br main' $1
#/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-gdb -ex 'target remote localhost:2331' -ex 'br main' $1
#/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi/bin/arm-none-eabi-gdb -ex 'target remote localhost:2331' -ex 'br main' $1

#copy version (encoding issues)
#cp $1 /mnt/c/Users/spencer.jackson/work_windoze/tmpdbg
#/mnt/c/Users/spencer.jackson/work_windoze/arm-gnu-toolchain-14.2.rel1-mingw-w64-x86_64-arm-none-eabi/bin/arm-none-eabi-gdb.exe -ex 'target remote localhost:2331' -ex 'br main' "C:\Users\spencer.jackson\work_windoze\tmpdbg"


windersip=$(ip route show | grep -i default | awk '{ print $3}')
#windersip=$(hostname -I | tr -d ' ')
#windersip=192.168.0.221
echo $windersip
#/home/spencer/work/hal_projects/toolchains/gnu-rm/linux/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi/bin/arm-none-eabi-gdb -ex 'target remote '"$windersip"':2331' -ex 'br main' $1
gdb-multiarch -ex 'target remote '"$windersip"':'"$port" -ex 'mon reset 0' -ex 'br main' $1
