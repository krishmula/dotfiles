#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
notify-send -a "swww" "Mic muted/unmuted"

