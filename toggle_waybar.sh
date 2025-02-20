#!/bin/sh

# Get the PID of Waybar, excluding the script itself
WAYBAR_PID=$(pgrep -x waybar)

# Check if Waybar is running
if [ -n "$WAYBAR_PID" ]; then
    # Kill Waybar using its PID
    kill "$WAYBAR_PID"
else
    # Start Waybar
    waybar &
fi
