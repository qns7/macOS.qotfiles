#!/bin/bash

OUTPUT="$(SwitchAudioSource -c | tr -cd '[:alpha:]')"

if [ "$SENDER" = "volume_change" ]; then
    if [ "$INFO" = 0 ]; then
        sketchybar --set audio icon="XX:"
        sketchybar --set audio icon.color=0xff4e4e4e
        sketchybar --set audio label.color=0xff4e4e4e
    elif [[ $OUTPUT =~ ^(SoundIDReference|BabyfacePro)$ ]]; then
        sketchybar --set audio icon="AI:"
        sketchybar --set audio icon.color=0xffc7c7c7
        sketchybar --set audio label.color=0xffc7c7c7
    elif [ "$INFO" -eq 100 ]; then
        sketchybar --set audio icon="FF:"
        sketchybar --set audio icon.color=0xFFFC5753
        sketchybar --set audio label.color=0xFFFC5753
    else
        sketchybar --set audio icon="$(printf "%02d:" "$INFO")"
        sketchybar --set audio icon.color=0xffc7c7c7
        sketchybar --set audio label.color=0xffc7c7c7
    fi
fi
sketchybar --set audio label="$OUTPUT"

# #!/bin/bash

# OUTPUT="$(SwitchAudioSource -c | tr -cd '[:alpha:]')"

# if [ "$SENDER" = "volume_change" ]; then
#     if [ $INFO = 0 ] ; then
#         sketchybar --set audio icon="XX:"
#         sketchybar --set audio icon.color=0xff4e4e4e
#         sketchybar --set audio label.color=0xff4e4e4e
#     elif [[ $OUTPUT =~ ^(SoundIDReference|BabyfacePro)$ ]]; then 
#         sketchybar --set audio icon="AI:"
#         sketchybar --set audio icon.color=0xffc7c7c7
#         sketchybar --set audio label.color=0xffc7c7c7
#     else
#         sketchybar --set audio icon="$(if [ "$INFO" -eq 100 ]; then echo "FF:"; else printf "%02d:" "$INFO"; fi)"
#         sketchybar --set audio icon.color=0xffc7c7c7
#         sketchybar --set audio label.color=0xffc7c7c7
#     fi
# fi
# sketchybar --set audio label="$OUTPUT"
