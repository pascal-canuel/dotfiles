#! /bin/bash


~/.fehbg &

# map escape to caps lock
if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

xrdb ~/.Xresources
#xrdb -load ~/.config/rofi/config

exec i3

#exec compton --config /etc/xdg/compton.conf -b
