#!/bin/bash
#
#This is  a status script to print out the ssid of the wireless card specified

card="wlp3s0"
essid=$(iwconfig 2>/dev/null|grep wlp3s0|tr -s ' '|cut -d ' ' -f 4|cut -d: -f2|cut -d\" -f2)

if [ ${essid} == "off/any" ]; then
    echo " x";
else
    echo " ${essid}";
fi
