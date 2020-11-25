# Remap keys
${HOME}/.local/bin/remap.sh

# Merge .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge  ${HOME}/.Xresources

# Set wallpaper
feh --bg-scale ~/Wallpapers/AeSMaD.jpg

# Start the Dynamic Window Manager
exec dwm
