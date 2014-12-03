#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#
 
readonly FY="\033[48;5;226m  \033[m"
readonly FR="\033[48;5;1m  \033[m"
readonly BY="\033[48;5;226m \033[m"
readonly BB="\033[48;5;16m \033[m"
F=""   # Dynamic variable (Foreground)
B=""   # Dynamic variable (Background)

COLS=$(tput cols)
LINES=$(tput lines)
if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

function _margin_width() {
	WIDTH=$(expr \( $COLS - $1 \) / 2)
	MARGIN_W=$(
			for i in `seq 1 $WIDTH`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	HEIGHT=$(expr \( $LINES - 13 \) / 2)
	MARGIN_H=$(
			for i in `seq 1 $HEIGHT`; do
				echo " "
			done
		)
}

function radioactivity() {
_margin_width 124
local RADIOACTIVITY="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${RADIOACTIVITY}"
}

function print_radioactivity() {
	for((i = 0; i < 8; i++)); do
		F=${FR}
		B=${BY}
		radioactivity
		${SLEEP} 0.224 > /dev/null
		clear

		F=${FY}
		B=${BB}
		radioactivity
		${SLEEP} 0.224 > /dev/null
		clear
	done
}

clear
trap 'clear; tput cnorm; exit 1' SIGINT
tput civis
_margin_height

print_radioactivity

tput cnorm
exit 0;
