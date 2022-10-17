#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

#Multi monitor bar test
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar &
  done
else
  polybar --reload bar &
fi


# Launch bar
#echo "---" | tee -a /tmp/polybar.log
#polybar bar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."
