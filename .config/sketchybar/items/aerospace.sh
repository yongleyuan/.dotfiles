#!/usr/bin/env bash

$BAR_NAME --add event aerospace_workspace_change

$BAR_NAME --add item aerospace.label left \
	  --set aerospace.label \
                icon="" \
                icon.font.size=15 \
                icon.color="0xff$LAVENDER" \
                label.drawing=off

for sid in $(aerospace list-workspaces --all); do
  $BAR_NAME --add item aerospace.$sid left \
            --subscribe aerospace.$sid aerospace_workspace_change \
            --set aerospace.$sid \
                  icon.drawing=off \
                  background.height=24 \
                  background.corner_radius=5 \
                  background.drawing=off \
                  background.padding_left=0 \
                  background.padding_right=0 \
                  label="$sid" \
                  label.padding_left=8 \
                  label.padding_right=8 \
                  click_script="aerospace workspace $sid" \
                  script="$PLUGIN_DIR/aerospace.sh $sid"
done

