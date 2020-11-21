#!/bin/bash
#
#This is  a status script to print out the status of the battery

status=$(cat /sys/class/power_supply/BAT0/status)
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

if [ ${status} == "Discharging" ]; then echo "D-${capacity}%"; 
elif [ ${status} == "Charging" ]; then echo "C-${capacity}%"; fi
