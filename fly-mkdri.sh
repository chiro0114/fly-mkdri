#!/usr/bin/env bash

BIRD=(
    "    .--."
    "   (o__o)"
    "  __(  )__"
    " /  \\/    \\"
    " \\__/\\/\\/\\_/"
)

BG_WIDTH=60

TOP_BG=(
"🌤︎  🌳     🌤︎   🌳    🌤︎   🌳     🌤︎  🌳    🌤︎  🌳     🌤︎   🌳    🌤︎   🌳     🌤︎  🌳   "
"   🌳    🌤︎    🌳    🌤︎    🌳    🌤︎      🌳    🌤︎    🌳    🌤︎    🌳    🌤︎      🌳   "
)
MID_BG=(
"🌳    ⛅    🌳     ⛅    🌳     ⛅    🌳    🌳    ⛅    🌳     ⛅    🌳     ⛅    🌳    "
"   🌤︎    🌳   🌤︎    🌳    🌤︎   🌳   🌤︎    🌳   🌤︎    🌳    🌤︎   🌳   🌤︎    🌳 "
)
BOT_BG=(
"🌲      🌲     🌥︎    🌲      🌲     🌥︎    🌲      🌲     🌥︎    🌲      🌲 "
"   🌥︎    🌲      🌥︎    🌲      🌥︎    🌲      🌥︎    🌲      🌥︎    🌲     "
)

BIRD_WIDTH=10

MAX_POS=$((BG_WIDTH - BIRD_WIDTH))
STEP=5  
START_TIME=$SECONDS
DURATION=5

function draw_scene {
  local pos=$1
  for line in "${TOP_BG[@]}"; do
    printf "%-${BG_WIDTH}s\n" "$line"
  done
  for line in "${MID_BG[@]}"; do
    printf "%-${BG_WIDTH}s\n" "$line"
  done
  echo
  for bird_line in "${BIRD[@]}"; do
    printf "%*s%s\n" "$pos" "" "$bird_line"
  done
  echo
  for line in "${BOT_BG[@]}"; do
    printf "%-${BG_WIDTH}s\n" "$line"
  done
}
while (( SECONDS - START_TIME < DURATION )); do
  for pos in $(seq 0 $STEP $MAX_POS); do
    (( SECONDS - START_TIME >= DURATION )) && break 2
    clear
    draw_scene "$pos"
    sleep 0.1
  done
  for pos in $(seq $MAX_POS -$STEP 0); do
    (( SECONDS - START_TIME >= DURATION )) && break 2
    clear
    draw_scene "$pos"
    sleep 0.1
  done
done

clear
