# Showcase
![](screenshot)
# Link
Read these [recommandations](https://wiki.archlinux.org/index.php/general_recommendations) to get started ricing     

# Vim
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

Vim [relative line numbers](https://jeffkreeftmeijer.com/vim-number/)   
changes to `~/.vimrc` will only be apply to the user. If you want to change it
globally, locate your config file `:version`

# Fonts
[Powerline fonts](https://github.com/powerline/fonts)
