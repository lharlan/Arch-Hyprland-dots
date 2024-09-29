#!/bin/bash

grim -o eDP-1 $(xdg-user-dir PICTURES)/Screencaps/$(date +'%s_grim.png') | wl-copy
notify-send "eDP-1 Captured"
