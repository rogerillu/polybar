#!/bin/bash

interficie=$(ifconfig | grep tun | awk '{print $1}')

if [[ $interficie == 'tun0:' ]]; then

    echo "VPN %{u#55aa55}$(ifconfig tun0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "VPN %{F#FF0000}%{u#FF0000}OFF%{u-}%{F-}"
fi


