#!/bin/bash
#
#This file is based on the original from LukeSmith in
#https://github.com/lukesmithxyz/voidrice. This script is called on startup to
#remap keys.

# Increase the key speed via a rate change (not used)
# xset r rate 300 5

# Map the caps lock key to super...
# REQ: setxkbmap
setxkbmap -option caps:super

# But when it is pressed only once, treat it as escape.
# REQ: xcape
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'

# Map the menu button to right super as well.
# REQ: xmodmap
xmodmap -e 'keycode 135 = Super_R'
