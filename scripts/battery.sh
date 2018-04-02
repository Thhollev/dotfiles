#!/bin/env python3

alias battery="python -c 'print(\"Battery level: {}%. Capacity: {}%\".format(round($(cat /sys/class/power_supply/BAT0/energy_now) / $(cat /sys/class/power_supply/BAT0/energy_full) * 100, 2), round($(cat /sys/class/power_supply/BAT0/energy_full) / $(cat /sys/class/power_supply/BAT0/energy_full_design) * 100, 2)))'"
