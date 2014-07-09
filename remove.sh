#!/bin/bash

for directory in `find . -type d | cut -c3-`

do newdir=`echo $directory | sed s'/.$//'`
mv $directory $newdir
done
exit

#!/bin/bashmodel=system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4}'if [ model = "MacBook Pro" ] ; then    laptop="ML-”    serial=ioreg -l | grep IOPlatformSerialNumber | cut -c 37-46    /usr/sbin/scutil --set ComputerName $laptop$serialelse    workstation="MW-”    serial=ioreg -l | grep IOPlatformSerialNumber | cut -c 37-46    /usr/sbin/scutil --set ComputerName $workstation$serial