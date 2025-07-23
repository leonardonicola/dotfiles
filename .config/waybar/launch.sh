#!/usr/bin/sh

killall waybar

if [[ $USER = "popinjay" ]]
then
  waybar -c ~/.dotfiles/.config/waybar/config.jsonc -s ~/.dotfiles/.config/waybar/style.css &
else
  waybar &
fi
