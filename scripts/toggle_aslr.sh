#!/bin/bash

if [ "$1" = "off" ]; then
    echo "Turning off ASLR"
    echo 0 > /proc/sys/kernel/randomize_va_space 
elif [ "$1" = "on" ]; then
    echo "Turning on ASLR"
    echo 2 > /proc/sys/kernel/randomize_va_space
else
    echo "Invalid paramter passed"
fi 
