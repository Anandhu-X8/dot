#!/bin/bash

# Get battery info from upower (works on most Linux systems)
battery=$(upower -e | grep 'BAT')
percentage=$(upower -i "$battery" | grep 'percentage' | awk '{print $2}')
state=$(upower -i "$battery" | grep 'state' | awk '{print $2}')

# Choose emoji based on status
if [[ "$state" == "charging" ]]; then
    icon="⚡"
else
    icon="  "
fi

# Output
echo "$icon $percentage"
