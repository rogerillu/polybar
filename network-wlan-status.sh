#!/bin/bash

interficie=$(cat /sys/class/net/eth0/operstate)

if [[ $interficie == 'up' ]]; then

    echo "LAN %{u#55aa55}$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "LAN %{F#FF0000}%{u#FF0000}OFF%{u-}%{F-}"
fi


