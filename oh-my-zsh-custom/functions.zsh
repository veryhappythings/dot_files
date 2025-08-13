function vcd() { nvim -c "cd $@" ;}

# Clip interacts with the clipboard. If you pipe into it, it will copy to the clipboard. If you pipe out of it, it will paste from the clipboard.
clip () {
	[ -t 0 ] && pbpaste || pbcopy
}
