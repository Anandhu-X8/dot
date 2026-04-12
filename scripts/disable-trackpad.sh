#!/bin/bash

#Define the file and pattern
FILE="$HOME/.config/niri/config.kdl"

if grep -q "//off //toggle-touchpad" "$FILE"; then
    sed -i 's/\/\/off \/\/toggle-touchpad/off \/\/toggle-touchpad/' "$FILE"
    notify-send "Output Changed" "touchpad is Off"
else
    sed -i 's/off \/\/toggle-touchpad/\/\/off \/\/toggle-touchpad/' "$FILE"
    notify-send "Output Changed" "touchpad is On"
fi
