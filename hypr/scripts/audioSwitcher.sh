#!/bin/bash

audioOutput=$(/usr/bin/pactl get-default-sink)

barracudaX="alsa_output.usb-Macronix_Razer_Barracuda_X_2.4_1234-00.analog-stereo"
headphoneJack="alsa_output.pci-0000_05_00.6.analog-stereo"

if echo $audioOutput | grep -q "Barracuda_X"; then
	/usr/bin/pactl set-default-sink $headphoneJack
	notify-send "Default Sink Changed" "Laptop Speakers/Headphones" -i $HOME/Pictures/Icons/LaptopSpeaker.png
else
	/usr/bin/pactl set-default-sink $barracudaX
	notify-send "Default Sink Changed" "Razer Barracuda X" -i $HOME/Pictures/Icons/Headphones.png
fi
