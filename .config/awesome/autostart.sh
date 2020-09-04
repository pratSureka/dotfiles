#!/bin/bash

picom --experimental-backends &
xset b off
redshift &
unclutter &
nm-applet &
setxkbmap -option caps:swapescape
xrdb ~/.Xresources
xinput set-prop Synaptics\ TM3096-006 "libinput Tapping Enabled" 1
blueman-applet &
