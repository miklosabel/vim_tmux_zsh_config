#!/bin/bash
set -e
usr/bin/dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause && /usr/bin/i3lock -c 141414 -n
# systemctl suspend
