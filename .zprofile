if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx "/home/hojdy/.xinitrc" 
fi

