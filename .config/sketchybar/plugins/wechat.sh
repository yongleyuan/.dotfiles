#!/usr/bin/env bash

COUNT=$($HOME/.config/sketchybar/scripts/notification.sh 微信)

if [[ $COUNT -lt $THRES ]]; then
  $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
else
  $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
fi

