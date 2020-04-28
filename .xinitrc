#touchpad gestures autostart ?
#/usr/bin/libinput-gestures &

#some stupid jetbrains shit
wmname LG3D

#wallpaper and color scripts
wal -R

#merge with xresources
xrdb -merge ~/.Xresources

#dunst user is display
systemctl --user import-environment DISPLAY

#compositions
compton &
xrandr --dpi 168

#qt/gtk theme
export QT_QPA_PLATFORMTHEME=gtk2
export QT_QPA_PLATFORMTHEME=qt5ct

#cursor fix
xsetroot -cursor_name left_ptr

#finally, execute bspwm
exec bspwm
