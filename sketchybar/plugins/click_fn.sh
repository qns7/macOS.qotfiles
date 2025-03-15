#!/bin/bash

if [ "$(sketchybar --query fn | jq -r '.icon.color')" = "0xffff9500" ]; then
    sketchybar --set fn icon.color=0xff4e4e4e
else
    sketchybar --set fn icon.color=0xffc7c7c7
fi
CURRENT=$(defaults read -g com.apple.keyboard.fnState)
((CURRENT == 1)) && NEW=false || NEW=true
defaults write -g com.apple.keyboard.fnState -bool $NEW
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
sleep 0.37
sketchybar --update

# 'shortcut' and keysmith solutions deprecated, activateSettings is necessary for the change to take effect
# open "keysmith://run-macro/92DE10CF-4921-42B9-B165-103AC03D2F57"
