#!/usr/bin/env bash

monitors=$(xrandr --query | grep " connected" | cut -d ' ' -f1)

if echo "$monitors" | grep -q "HDMI-0"; then
    polybar sag &
fi

if echo "$monitors" | grep -q "DP-0"; then
    polybar sol &
fi

if [[ "$monitors" == "eDP-1" ]]; then
    polybar sol &  
fi

