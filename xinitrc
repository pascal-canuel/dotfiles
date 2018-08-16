#! /bin/bash
~/.fehbg &

# map escape to caps lock
if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

exec i3
