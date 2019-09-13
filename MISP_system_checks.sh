#!/bin/bash
date=`date +%Y-%m-%d`
name=$(uname -n)
#get Disk Space
df -h | mail -s "$name: Disk Space Report - $date” email@mail.com
#get CPU usage
iostat -m | mail -s "$name: CPU Usage Report - $date" email@mail.com
#get memory usage
free -m | mail -s "$name: Memory Usage Report - $date" email@mail.com
