#!/bin/bash

# This script is used to decrease the volume of the system.
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
notify-send -a "swww" "Volume decreased by 5%"
