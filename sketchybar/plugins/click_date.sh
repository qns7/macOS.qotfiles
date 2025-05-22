#!/bin/bash

PID_FILE="/tmp/show_clock.pid"
if [ -f "$PID_FILE" ]; then
  OLD_PID=$(cat "$PID_FILE")
  if ps -p $OLD_PID > /dev/null 2>&1; then
    kill $OLD_PID 2>/dev/null
  fi
  rm -f "$PID_FILE"
fi
echo $$ > "$PID_FILE"
touch /tmp/show.clock
~/.config/sketchybar/plugins/date.sh
sleep 3.7
rm -f /tmp/show.clock
~/.config/sketchybar/plugins/date.sh
rm -f "$PID_FILE"

# if [ -f /tmp/show.clock ]; then
#     rm /tmp/show.clock
# else
#     touch /tmp/show.clock
# fi
# /Users/q/.config/sketchybar/plugins/date.sh
# sleep 3.7 # 1.37
# rm /tmp/show.clock
# /Users/q/.config/sketchybar/plugins/date.sh
