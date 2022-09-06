#!/usr/bin/env bash

while [ 1 = 1 ]; do
testip="192.168.25.1"
testping=$(ping -c 1 $testip | grep "received" | awk '{print $4}') # Check ping, 1 if exist
testcon=$(nmcli device | grep tun0 | awk '{print $3}') # Check connection, connected is good
testwifi=$(nmcli device | grep Hotspot | awk '{print $3}') # Check if Hotspot is enabled
if [[ $testwifi == connected ]] &&  [[ $testcon != connected ]] && [[ $testping == 0 ]]
	then
	echo "NO PING,NO CONNECTION, disable hotspot" | logger -t NOPING
	nmcli connection down Hotspot
fi
sleep 1
done
