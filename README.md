Read these [recommandations](https://wiki.archlinux.org/index.php/general_recommendations) to get started ricing     


Vim change mapping, Caps Lock for Escape   
1. For the session    
`xmodmap -e "clear lock" -e "keycode 0x42 = Escape"`   
Undo   
`xmodmap -e "keycode 0x42 = Caps_Lock" -e "add lock = Caps_Lock"`   

2. Permenantly, edit `~/.Xmodmap`   
```
!! No Caps Lock
clear lock
!! Make Caps_lock an escape key.
keycode 0x42 = Escape 
```   
Run it to change it now `xmodmap ~/.Xmodmap`  
Add this to your `~/.xinitrc` so it will be call each session   
```
if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi
```   
3. While vim is open    
```#!/bin/sh

case $1 in
        off)
                xmodmap -e "clear lock"
                xmodmap -e "keycode 0x42 = Escape"
                ;;
        on)
                xmodmap -e "keycode 0x42 = Caps_Lock"
                xmodmap -e "add lock = Caps_Lock"
                ;;
        *)
                echo "Usage: caps {on|off}, turn the caps lock key on or"
                echo "off.  When it is off, the key acts as an Escape key."
                ;;
esac
```