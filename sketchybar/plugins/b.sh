#!/bin/bash
# Specify the package managers you want the program to use
# Valid manager names: "brew", "npm", "yarn", "apm", "mas", "pip", and "gem"
USE='brew'

# Checks to see if the brew command is available and the package manager is in the enabled list above.
if [[ -x "$(command -v brew)" ]] && [[ $USE == *"brew"* ]]; then
  TIMEOUT=20
  # Runs the outdated command and stores the output as a list variable.
  brewLIST=$(timeout $TIMEOUT brew outdated 2>/dev/null)

  # Checks to see if the returned list is empty. If so, it sets the outdated packages list to zero; if not, sets it to the line count of the list.
  if [[ -z $brewLIST ]]; then
    BREW='0'
    brewLIST=""
  else
    BREW=$(echo "$brewLIST" | wc -l)
  fi
fi

# Sum of all outdated packages
SUM=$((${BREW:-0}))
echo "$SUM"

# Icon to be displayed next to the number of outdated packages. Feel free to customize. Default: 
# ICON="􀈄"

# Icon to be displayed if no packages are outdated. Change to `ZERO=""` if you want the widget to be invisible when no packages are out of date. Default: ✔︎
# ZERO="✔︎"

# Setting colors and sizes
OUTDATED_COLOR="0xfff5a97f"   # Red color for outdated packages
UP_TO_DATE_COLOR="0xffa6da95" # Green color for up-to-date status

if [[ $SUM -gt 0 ]]; then
  # FINAL="$SUM $ICON"
  FINAL="$SUM"
  COLOR=$OUTDATED_COLOR
else
  FINAL="$ZERO"
  COLOR=$UP_TO_DATE_COLOR
fi

sketchybar -m --set packages label=" $FINAL" label.color=$COLOR
