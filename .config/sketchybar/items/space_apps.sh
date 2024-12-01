#!/usr/bin/env bash

$BAR_NAME --add item space_apps left \
          --subscribe space_apps \
                      aerospace_workspace_change \
                      space_windows_change \
          --set space_apps \
                script="$PLUGIN_DIR/space_apps.sh" \
                padding_right=0 \
                background.drawing=off \
                icon="" \
                icon.color="0xff$TEXT" \
                icon.font.size=14 \
                icon.padding_left=20 \
                label.font.size=18 \
                label.padding_left=13 \
                label.padding_right=5 \
                label.color="0xff$TEXT" \
                label.drawing=off \
                display=$(aerospace list-monitors --focused --format %{monitor-appkit-nsscreen-screens-id})

