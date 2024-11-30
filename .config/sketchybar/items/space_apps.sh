#!/usr/bin/env bash

$BAR_NAME --add item space_apps left \
          --subscribe space_apps \
                      aerospace_workspace_change \
                      space_windows_change \
          --set space_apps \
                script="$PLUGIN_DIR/space_apps.sh" \
                padding_left=8 \
                padding_right=0 \
                background.drawing=off \
                icon="" \
                icon.color="0xff$SKY" \
                icon.font.size=14 \
                label.font.size=18 \
                label.padding_left=13 \
                label.drawing=off \
                display=$(aerospace list-monitors --focused --format %{monitor-appkit-nsscreen-screens-id})

