#!/bin/bash

if [[ $(yabai -m query --windows --window | jq -r '.app') != "SoundID Reference" ]]; then
    /Users/q/bin/open_or_focus "SoundID Reference"
    # sleep 0.37
    # cliclick $(yabai -m query --windows --window | jq -r '.frame | "m:\(.x + (.w/2) | floor),\(.y + (.h/2) | floor)"')
else
    ~/bin/close_soundid
fi
