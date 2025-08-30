#!/bin/sh

if [ "$(powerprofilesctl get)" = "balanced" ]; then
    powerprofilesctl set "$(gsettings get org.gnome.shell last-selected-power-profile | tr -d "'")"
else
    powerprofilesctl set "balanced"
fi
