#!/usr/bin/env bash

$BAR_NAME --subscribe volume volume_change \
          --set volume \
                icon.color="0xff$YELLOW" \
                icon.font.size=17 \
                script="$PLUGIN_DIR/volume.sh"

