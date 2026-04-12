#!/bin/bash

# Get the currently active player (e.g., spotify)
player=$(playerctl -l 2>/dev/null | head -n 1)

# Extract metadata for title and artist directly
title=$(playerctl -p "$player" metadata xesam:title 2>/dev/null)
artist=$(playerctl -p "$player" metadata xesam:artist 2>/dev/null)

# Print in clean format
if [[ -n "$title" && -n "$artist" ]]; then
    echo "🎵 $title — $artist"
else
    echo "🎵 Why is there no song playing?"
fi
