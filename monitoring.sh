#!/bin/bash

# /usr/local/bin/monitoring.sh

wall $'    #Architecture: ' `hostnamectl | grep "Operating System" | cut -d ' ' -f5- ` `awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'` `arch` \
$'\n    #CPU physical: '`cat /proc/cpuinfo | grep processor | wc -l` \
$'\n    #vCPU:  '`cat /proc/cpuinfo | grep processor | wc -l` \
$'\n    '`free -m | awk 'NR==2{printf "#Memory Usage: %s/%sMB (%.2f%%)", $3,$2,$3*100/$2 }'` \
$'\n    '`df -h | awk '$NF=="/"{printf "#Disk Usage: %d/%dGB (%s)", $3,$2,$5}'` \
$'\n    '`mpstat | grep 'all' | awk '{printf "#CPU Load: %.2f%%\n", 100 - $13}'` \
$'\n    #Last boot: ' `who -b | awk '{print $3" "$4" "$5}'` \
$'\n    #LVM use: ' `lsblk |grep lvm | awk '{if ($1) {print "yes";exit;} else {print "no"} }'` \
$'\n    #Connection TCP:' `netstat -an | grep ESTABLISHED |  wc -l` \
$'\n    #User log: ' `who | cut -d " " -f 1 | sort -u | wc -l` \
$'\n    Network: IP ' `hostname -I`"("`ip a | grep link/ether | awk '{print $2}'`")" \
$'\n    #Sudo:  ' `cat /var/log/sudo/sudo.log | wc -l | awk '{ print $1 / 2 "	cmd" }'`
