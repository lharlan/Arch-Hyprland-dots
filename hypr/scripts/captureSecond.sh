#!/bin/bash

grim -o HDMI-A-1 $(xdg-user-dir PICTURES)/Screencaps/$(date +'%s_grim.png') | wl-copy
