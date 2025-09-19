#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit
# killall -q polybar

# Check connected monitors
monitors=$(xrandr --query | grep " connected" | cut -d ' ' -f1)

# Launch Polybar based on connected monitors
if echo "$monitors" | grep -q "eDP-1"; then
    polybar macbook 2>&1 | tee -a /tmp/polybar-macbook.log & disown
fi

if echo "$monitors" | grep -q "HDMI-0"; then
    polybar sag 2>&1 | tee -a /tmp/polybar-sag.log & disown
fi

if echo "$monitors" | grep -q "DP-0"; then
    polybar sol 2>&1 | tee -a /tmp/polybar-sol.log & disown
fi

echo "Polybar launched based on connected monitors..."
