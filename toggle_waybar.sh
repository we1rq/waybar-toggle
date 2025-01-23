#!/bin/sh

# Get the PID of Waybar, ignoring this script
WAYBAR_PID=$(ps aux | grep -v "grep" | grep -v "$(basename "$0")" | grep "waybar" | awk '{print $2}')

# Check if Waybar is running
if [ -n "$WAYBAR_PID" ]; then
    # Kill Waybar using its PID
    kill "$WAYBAR_PID"
else
    # Start Waybar
    waybar &
fi
