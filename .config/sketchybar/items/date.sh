#!/usr/bin/env bash

# $BAR_NAME --set date_notch \
#                 icon.drawing=off \
#                 update_freq=120 \
#                 background.drawing=on \
#                 background.corner_radius=10 \
#                 background.color="0xff000000" \
#                 background.border_width=0 \
#                 background.height=48 \
#                 background.y_offset=10 \
#                 label.padding_right=20 \
#                 padding_right=-30 \
#                 label.padding_left=10 \
#                 label.font.size=16 \
#                 script="$PLUGIN_DIR/date.sh" \
#                 click_script="$SCRIPT_DIR/click_dt.sh" \
#                 display=1

$BAR_NAME --set date \
                icon.drawing=off \
                update_freq=120 \
                background.drawing=on \
                background.corner_radius=10 \
                background.color="0x00000000" \
                background.border_width=0 \
                background.height=48 \
                background.y_offset=10 \
                label.padding_right=20 \
                label.padding_left=5 \
                label.font.size=18 \
                padding_right=-13 \
                script="$PLUGIN_DIR/date.sh" \
                # click_script="$SCRIPT_DIR/click_dt.sh" \
                # display=2,3,4

