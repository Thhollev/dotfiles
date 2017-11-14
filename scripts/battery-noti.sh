#!/bin/bash

while true; do
	if [[ "$(cat /sys/class/power_supply/BAT0/status)" != "Charging" ]]; then
		now=$(cat /sys/class/power_supply/BAT0/energy_now)
		full=$(cat /sys/class/power_supply/BAT0/energy_full)

		percentage=$(printf %.$2f $(echo "$now / $full * 100" | bc -l))

		if [ $percentage -lt 5 ]; then
			notify-send -u "critical" "Battery is super low, give me power!"
		elif [ $percentage -lt 10 ]; then
			notify-send -u "critical" "Battery is low!"
		elif [ $percentage -eq 100 ]; then
			notify-send -u low "Battery fully charged."
		fi
	fi

	sleep '1m'
done
