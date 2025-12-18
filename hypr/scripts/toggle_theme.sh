#!/bin/bash

GNOME_SCHEMA="org.gnome.desktop.interface"
THEME_FILE="/tmp/theme_variant"

if [ ! -s "$THEME_FILE" ]; then
  echo "dark" > "$THEME_FILE"
else
  current_theme_variant=$(<"$THEME_FILE")

  case $current_theme_variant in
    "dark")
      new_theme_variant="light"
      ;;
    "light")
      new_theme_variant="dark"
      ;;
  esac

  echo "$new_theme_variant" > "$THEME_FILE"
fi

. ~/.config/hypr/scripts/apply_wal_theme.sh

if [ "$new_theme_variant" = "dark" ]; then
  gtk_theme="adw-gtk3-dark"
else
  gtk_theme="adw-gtk3"
fi

apply_themes() {
  gsettings set $GNOME_SCHEMA gtk-theme "Dracula"
  gsettings set $GNOME_SCHEMA color-scheme "prefer-$new_theme_variant"
  gsettings set $GNOME_SCHEMA icon-theme "WhiteSur-$new_theme_variant"
  gsettings set $GNOME_SCHEMA cursor-theme "WhiteSur-cursors"
  gsettings set $GNOME_SCHEMA font-name "Inter 11"
}

apply_themes
