#!/bin/bash

# This script is used to increase the volume of the system.
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
notify-send -a "swww" "Volume increased by 5%"
