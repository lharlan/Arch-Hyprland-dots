#!/bin/sh

# Check if enabled
if cat $HOME/.config/hypr/scripts/touchpadstatus | grep -q '1'

then # device will be disabled
	printf "0" > $HOME/.config/hypr/scripts/touchpadstatus
	notify-send -u normal "Disabling Touchpad" -i $HOME/Pictures/Icons/TouchpadDisabled.png
	hyprctl -r keyword '$TOUCHPAD_SWITCH' 0

else # device will be enabled
	printf "1" > $HOME/.config/hypr/scripts/touchpadstatus
	notify-send -u normal "Enabling Touchpad" -i $HOME/Pictures/Icons/TouchpadEnabled.png
	hyprctl -r keyword '$TOUCHPAD_SWITCH' 1

fi
