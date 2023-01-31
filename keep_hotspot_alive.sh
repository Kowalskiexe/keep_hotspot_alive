#!/bin/bash

nmcli c d "$(cat external_hotspot.txt)";

password="$(cat password.txt)"
ssid="$(cat ssid.txt)"

while true; do
	date
	echo '### STARTING...'
	sudo ./lnxrouter --ap wlan0 "$ssid" -p "$password" --ieee80211ac --daemon
	sleep 7200 #2h
	echo '### STOPPING'
	sudo ./lnxrouter --stop $(./lnxrouter -l | cut -d " " -f 1 | tail -n 1)
	sleep 30
done

