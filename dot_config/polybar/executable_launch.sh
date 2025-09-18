#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit
# killall -q polybar

# Launch Polybar bars for dual monitors
polybar sag 2>&1 | tee -a /tmp/polybar-sag.log & disown
polybar sol 2>&1 | tee -a /tmp/polybar-sol.log & disown

echo "Polybar launched..."

