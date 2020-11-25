#!/bin/bash

echo $(free -h|grep Mem|tr -s ' '|cut -d' ' -f7|sed s/i//g)
