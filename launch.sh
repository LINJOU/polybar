#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar-bar.log
polybar bar 2>&1 | tee -a /tmp/polybar-bar.log & disown

echo "Bars launched..."
