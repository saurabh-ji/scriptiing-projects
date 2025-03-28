#!/bin/bash

#Monitoring the free fs sapce disk


FU=$(df -H | egrep -v "filesystem|tmpfs" | grep "sd2" | awk '{print $5}' | tr -d %)
TO="saurabhcse70@gmail.com"


if [[ $FU -ge 20 ]]
then  

	echo "warning disk space is low - $FU %" | mail -s "disk space alert!"  $TO
else 

	echo "all good"

fi

