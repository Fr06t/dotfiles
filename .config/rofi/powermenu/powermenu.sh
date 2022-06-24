#!/usr/bin/env bash


theme="card_square"
dir="$HOME/.config/rofi/powermenu"

uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -theme $dir/card_square.rasi"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		i3lock
	        ;;
    $suspend)
		mpc -q pause
		amixer set Master mute
		systemctl suspend

        ;;
    $logout)
		i3-msg exit
		
        ;;
esac
