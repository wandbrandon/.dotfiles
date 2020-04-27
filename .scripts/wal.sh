#!/bin/sh

#for pywal
killall dunst # force dunst to reload config
dunstify "refreshed dunst"

#bspwm auto-config
sh ~/.config/bspwm/bspwmrc
dunstify "refreshed bspwm"

#for gtk live
python3 ~/.scripts/livereload.py
dunstify "refreshed gtk"

