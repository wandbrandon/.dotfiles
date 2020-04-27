#!/bin/bash
time="$(date +%I:%M) $(date +%p)"
bat="$(cat /sys/class/power_supply/BAT0/capacity)"
bat2="$bat%"
dunstify -u critical "$time | $bat2"
