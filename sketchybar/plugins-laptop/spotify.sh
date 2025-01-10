#!/usr/bin/env zsh

MAX_LENGTH=43

HALF_LENGTH=$(((MAX_LENGTH + 1) / 2))

SPOTIFY_JSON="$INFO"

update_track() {

    if [[ -z $SPOTIFY_JSON ]]; then
        sketchybar --set $NAME icon.color=0xffeed49f label.drawing=off
        return
    fi

    PLAYER_STATE=$(echo "$SPOTIFY_JSON" | jq -r '.["Player State"]')
    
    if [[ "$PLAYER_STATE" = "Playing" ]]; then
        TRACK="$(echo "$SPOTIFY_JSON" | jq -r .Name)"
        ARTIST="$(echo "$SPOTIFY_JSON" | jq -r .Artist)"

        # Calculate total length
        TOTAL_LENGTH=$(( ${#TRACK} + ${#ARTIST} ))

        if [[ $TOTAL_LENGTH -gt $MAX_LENGTH ]]; then
            # If the combined length exceeds MAX_LENGTH, enable scrolling text
            sketchybar --set $NAME \
                label="${TRACK}  ${ARTIST}" \
                label.drawing=on \
                label.max_chars=$MAX_LENGTH \
                scroll_texts=on \
                icon.color=0xffa6da95
        else
            # If the length is within limit, display without scrolling
            sketchybar --set $NAME \
                label="${TRACK}  ${ARTIST}" \
                label.drawing=on \
                icon.color=0xffa6da95
        fi

    elif [ $PLAYER_STATE = "Paused" ]; then
        sketchybar --set $NAME icon.color=0xffeed49f
    elif [ $PLAYER_STATE = "Stopped" ]; then
        sketchybar --set $NAME icon.color=0xffeed49f label.drawing=off
    else
        sketchybar --set $NAME icon.color=0xffeed49f
    fi
}

case "$SENDER" in
"mouse.clicked")
    osascript -e 'tell application "Spotify" to playpause'
    ;;
*)
    update_track
    ;;
esac
