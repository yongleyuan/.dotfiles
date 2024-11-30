#!/usr/bin/env bash

COUNT=$($HOME/.config/$BAR_NAME/scripts/notification.sh Mail)
THRES=1

if [[ $COUNT -lt $THRES ]]; then
  $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
else
  $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
fi

