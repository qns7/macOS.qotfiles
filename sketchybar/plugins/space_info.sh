#!/bin/bash

SPACES=$(yabai -m query --spaces)
DISPLAYS=$(yabai -m query --displays)
WINDOWS_CURRENT_SPACE=$(yabai -m query --windows --space)

UUID_INBUILT_DISPLAY="37D8832A-2D66-02CA-B9F7-8F30A301B230"
INDEX_INBUILT_DISPLAY=$(jq -r --arg uuid "$UUID_INBUILT_DISPLAY" '.[] | select(.uuid == $uuid) | .index' <<< "$DISPLAYS")
sketchybar --bar display="$INDEX_INBUILT_DISPLAY"

SUM_FULLSCREENS=$(jq '[.[] | select(.["is-native-fullscreen"] == true)] | length' <<< "$SPACES")

CURRENT_DISPLAY=$(jq '.[] | select(.["has-focus"] == true)' <<< "$DISPLAYS")
SUM_SPACES_CURRENT_DISPLAY=$(jq '.spaces | length' <<< "$CURRENT_DISPLAY")

CURRENT_SPACE=$(jq '.[] | select(.["has-focus"] == true) | .index' <<< "$SPACES")
CURRENT_SPACE_CURRENT_DISPLAY=$(jq --argjson space "$CURRENT_SPACE" '.spaces | index($space) + 1' <<< "$CURRENT_DISPLAY")

SUM_WINDOWS_CURRENT_SPACE=$(jq 'length' <<< "$WINDOWS_CURRENT_SPACE")
SUM_APPS_CURRENT_SPACE=$(jq '[.[] | .app | ascii_downcase] | unique | length' <<< "$WINDOWS_CURRENT_SPACE")

SUM_EMPTY_SPACES=$(jq '[.[] | select(.windows == [])] | length' <<< "$SPACES")
SUM_IGNORED_EMPTY_SPACES=$(jq '[group_by(.display)[] | select(length == 1)[] | select(.windows == [])] | length' <<< "$SPACES")
NEW_SUM_EMPTY_SPACES=$(( SUM_EMPTY_SPACES - SUM_IGNORED_EMPTY_SPACES ))

CONVERT_NUM() {
    local NUM=$1
    if (( NUM > 9 )); then
        echo "$NUM" | awk '{ printf("%c\n", $1 + 55) }'
    else
        echo "$NUM"
    fi
}

FOCUSED_DISPLAY_UUID=$(jq -r '.[] | select(.["has-focus"] == true) | .uuid' <<< "$DISPLAYS")
DISPLAY_ICON=$( [[ "$FOCUSED_DISPLAY_UUID" == "$UUID_INBUILT_DISPLAY" ]] && echo "􁈸" || echo "􀢹" )

ICON_COLOR=$([[ $SUM_FULLSCREENS -gt 0 ]] && echo "0xffff9500" || ([[ $NEW_SUM_EMPTY_SPACES -gt 0 ]] && echo "0xff4e4e4e" || echo "0xffc7c7c7"))

CONVERT_0=$(CONVERT_NUM "$SUM_SPACES_CURRENT_DISPLAY")
CONVERT_1=$(CONVERT_NUM "$CURRENT_SPACE_CURRENT_DISPLAY")
CONVERT_2=$(CONVERT_NUM "$SUM_WINDOWS_CURRENT_SPACE")
CONVERT_3=$(CONVERT_NUM "$SUM_APPS_CURRENT_SPACE")

sketchybar --set space_info icon="$DISPLAY_ICON" \
                            label="${CONVERT_0}.${CONVERT_1}:${CONVERT_2}.${CONVERT_3}:" \
                            icon.color="$ICON_COLOR"
