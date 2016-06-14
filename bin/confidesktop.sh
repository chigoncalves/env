#!/usr/bin/env zsh

gsettings set org.gnome.desktop.media-handling automount false
gsettings set com.canonical.desktop.interface scrollbar-mode normal


com.canonical.indicator.appmenu.hud store-usage-data false
com.canonical.indicator.bluetooth visible false # Hide bloototh indicator.
com.canonical.indicator.keyboard visible false # Hide keyboard indicator.

#??? com.canonical.indicator.sound preferred-media-players

com.canonical.unity-greeter play-ready-sound false
