#!/bin/bash

FILE=$(xdg-user-dir PICTURES)/Screencaps/$(date +'%s_grim.png')

slurp | grim -g - $FILE
wl-copy -t image/png < $FILE
notify-send "Area Captured"
