#!/bin/bash

echo "========================" | cat >./system_info.txt
echo "      SYSTEM INFO" | cat >> ./system_info.txt
echo "========================" | cat >> ./system_info.txt



desktopProcessor=$(cat /proc/cpuinfo | grep "model name" | awk -F: '{gsub(/^[ \t]+/,"",$2); print $2}'| head -n 1)
echo "Desktop processor:  $desktopProcessor"| cat >> ./system_info.txt

systemKernel=$(uname -r)
echo "System Kernel:  $systemKernel"| cat >> ./system_info.txt

osVersion=$(hostnamectl | grep "Operating System"| awk -F: '{gsub(/^[ \t]+/,"",$2); print $2}')
echo "Operating system version:  $osVersion"| cat >> ./system_info.txt

desktopMemory=$(cat /proc/meminfo | grep "MemTotal" | awk -F: '{gsub(/^[ \t]+/,"",$2); print $2}')
echo "Desktop memory:  $desktopMemory"| cat >> ./system_info.txt

serialNumber=$(sudo dmidecode -s system-serial-number)
echo "Serial number:  $serialNumber"| cat >> ./system_info.txt

systemIP=$(hostname -I)
echo "System IP:  $systemIP"| cat >> ./system_info.txt

echo "------------------------" | cat >> ./system_info.txt
installedSoftware=$(apt list --installed | head -n 5 )
echo "Installed software:  $installedSoftware"| cat >> ./system_info.txt

echo "========================" | cat >> ./system_info.txt


