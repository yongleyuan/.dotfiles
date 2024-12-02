#!/usr/bin/env bash

if [[ $(aerospace list-monitors --count) == 1 ]]; then
    $BAR_NAME --set $NAME drawing=off
elif [[ $(aerospace list-monitors --focused --format %{monitor-appkit-nsscreen-screens-id}) == 2 ]]; then
    FOCUSED_APPS=$(aerospace list-windows --workspace focused --format %{app-bundle-id})
    APPS=()
    while read -r line; do APPS+=($line); done <<< $FOCUSED_APPS
    LENGTH=${#APPS[@]}

    if [ $LENGTH -eq 0 ]; then
        DRAWING=off
    else
        DRAWING=on
        LABELS=""
        for i in ${!APPS[@]}
        do
            APP=${APPS[i]}
            LABELS+="$($HOME/.config/$BAR_NAME/scripts/map_app_icon.sh $APP)"
            if [[ $i < $(($LENGTH - 1)) ]]; then
                LABELS+="  "
            fi
        done
    fi

    $BAR_NAME --set $NAME \
                    label="$LABELS" \
                    icon.drawing=$DRAWING \
                    label.drawing=$DRAWING \
                    display=2
fi

