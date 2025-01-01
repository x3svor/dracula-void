###########################
#    Running polybar      #
###########################

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config=~/.config/polybar/config.ini &
polybar second --config=~/.config/polybar/config.ini &

echo "Polybar Started"
