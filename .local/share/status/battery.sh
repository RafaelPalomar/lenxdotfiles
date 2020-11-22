#!/bin/bash
#
#This is  a status script to print out the status of the battery

status=$(cat /sys/class/power_supply/BAT0/status)
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

if [ ${status} == "Discharging" ]; then

    if [ ${capacity} -le 5 ]; then
        echo "   ${capacity}%";
    elif [ ${capacity} -gt 5 ] && [ ${capacity} -le 25 ]; then
        echo "   ${capacity}%";
    elif [ ${capacity} -gt 25 ] && [ ${capacity} -le 50 ]; then
        echo "   ${capacity}%";
    elif [ ${capacity} -gt 50 ] && [ ${capacity} -le 75 ]; then
        echo "   ${capacity}%";
    elif [ ${capacity} -gt 75 ] && [ ${capacity} -le 100 ]; then
        echo "   ${capacity}%";
    fi

elif [ ${status} == "Charging" ]; then

    if [ ${capacity} -le 5 ]; then
        echo "  ${capacity}%";
    elif [ ${capacity} -gt 5 ] && [ ${capacity} -le 25 ]; then
        echo "  ${capacity}%";
    elif [ ${capacity} -gt 25 ] && [ ${capacity} -le 50 ]; then
        echo "  ${capacity}%";
    elif [ ${capacity} -gt 50 ] && [ ${capacity} -le 75 ]; then
        echo "  ${capacity}%";
    elif [ ${capacity} -gt 75 ] && [ ${capacity} -le 100 ]; then
        echo "  ${capacity}%";
    fi
fi
