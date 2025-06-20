#!/usr/bin/bash
url=$(playerctl metadata mpris:artUrl)
artist=$(playerctl metadata xesam:artist)
album=$(playerctl metadata xesam:album)
metadata=$(printf "$artist - $album")

if [ $url == "No player found" ]
then
  exit
elif [ -f /home/krishna/.cache/albumart/"$metadata".png ]
then
  echo /home/krishna/.cache/albumart/"$metadata".png
else
  curl -s $url -o /home/krishna/.cache/albumart/"$metadata"
  magick /home/krishna/.cache/albumart/"$metadata" /home/krishna/.cache/albumart/"$metadata".png
  rm /home/krishna/.cache/albumart/"$metadata"
  echo /home/krishna/.cache/albumart/"$metadata".png
fi
