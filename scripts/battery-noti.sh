#!/bin/bash

while true; do
	now=$(cat /sys/class/power_supply/BAT0/energy_now 2>/dev/null)
	full=$(cat /sys/class/power_supply/BAT0/energy_full 2>/dev/null)

	if [ ! -z $now ] && [ ! -z $full ]; then
		percentage=$(printf %.$2f $(echo "$now / $full * 100" | bc -l))
			
		if [[ "$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)" != "Charging" ]]; then
			if [ $percentage -lt 5 ]; then
				notify-send -u "critical" "Battery is super low, give me power!"
			elif [ $percentage -lt 10 ]; then
				notify-send -u "critical" "Battery is low!"
			fi
		else
			if [ $percentage -eq 100 ]; then
				notify-send -u low "Battery fully charged."
			fi
		fi
	fi
	sleep '1m'
done
