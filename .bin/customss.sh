# based on https://github.com/GabrielTenma/dotfiles 
# image: https://img.fireden.net/a/image/1487/07/1487077888368.png
#!/bin/bash

take_ss() {
	
	cd ~/Pictures/ && scrot 'ScreenShot_%Y_%m_%d_%k-%M-%S-$wx$h.png'  "$1"

}

notify_send() {
	notify-send --expire-time=2000 -i view-fullscreen 'Cheese!~' 'Saved to ~/Pictures/ !' --icon='/home/rodrigo/Pictures/others/rsz_1gabriel.png' && sleep 0.5
}

main() {
	case "$1" in
		crop)
			take_ss -s
			notify_send
			;;
		*)
			notify_send
			take_ss
	esac
}

main "$@"
