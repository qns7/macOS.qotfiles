#!/bin/bash

if [ "$(sketchybar --query fn | jq -r '.icon.color')" = "0xffc7c7c7" ]; then
    sketchybar --set fn icon="FN"
    sketchybar --set fn icon.color=0xff4e4e4e
else
    sketchybar --set fn icon="SF"
    sketchybar --set fn icon.color=0xffc7c7c7
fi
CURRENT=$(defaults read -g com.apple.keyboard.fnState)
((CURRENT == 1)) && NEW=false || NEW=true
defaults write -g com.apple.keyboard.fnState -bool $NEW
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
sleep 0.37
sketchybar --update
