#!/bin/bash

picom &
xset b off
unclutter &
nm-applet &
low_battery &
dunst_start &
feh --bg-fill ~/.config/wall.png
setxkbmap -option caps:swapescape
xrdb ~/.Xresources
xinput set-prop Synaptics\ TM3096-006 "libinput Tapping Enabled" 1
blueman-applet &
# xob_init
