#!/usr/bin/env bash

$BAR_NAME --set date \
                icon.drawing=off \
                update_freq=120 \
                background.drawing=on \
                background.corner_radius=10 \
                background.color="0xff000000" \
                background.border_width=0 \
                background.height=48 \
                background.y_offset=10 \
                label.padding_right=20 \
                label.padding_left=15 \
                label.font.size=16 \
                label.y_offset=2 \
                padding_right=-25 \
                script="$PLUGIN_DIR/date.sh"

