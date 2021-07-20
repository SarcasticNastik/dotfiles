#!/bin/bash

menu="$1"

if [ "$menu" = "music" ]; then
    rofi -modi 'Music:~/scripts/rofi/music.sh' -show Music -theme music-launcher
elif [ "$menu" = "appmenu" ]; then
    rofi -show drun -theme music-launcher
elif [ "$menu" = "powermenu" ]; then
   rofi -modi 'Powermenu:~/scripts/rofi/powermenu.sh' -show Powermenu -theme powermenu
    # rofi -modi 'Powermenu:~/scripts/rofi/powermenu.sh' -show Powermenu -theme powermenu -location 3 -xoffset -18 -yoffset 30 
elif [ "$menu" = "tabmenu" ]; then
    exec ~/scripts/rofi/tabmenu.sh
fi
