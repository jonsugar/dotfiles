function text() {
	echo $1
}

function writeln() {
	text
	text $1
}

function title() {
	writeln "======================================================================="
	text $1
	text "======================================================================="
}