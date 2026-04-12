#!/bin/bash

# Path to current brightness value
BRIGHTNESS_FILE="/sys/class/leds/asus::kbd_backlight/brightness"

# Read current value
current=$(cat "$BRIGHTNESS_FILE")

# Compute next value (0→1→2→3→0)
next=$(( (current + 1) % 4 ))

# Apply the next brightness level
brightnessctl -d asus::kbd_backlight set "$next"
