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

function _sleep() {
	if $(which sleepenh > /dev/null 2>&1); then
		SLEEP='sleepenh'
	elif $(which usleep > /dev/null 2>&1); then
		SLEEP='usleep'
	else
   		SLEEP='sleep'
	fi
	${SLEEP} ${1} > /dev/null
}

function _margin_width() {
	local cols=$(tput cols)
	local width=$(expr \( ${cols} - ${1} \) / 2)
	MARGIN_W=$(
			for i in `seq 1 ${width}`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	local lines=$(tput lines)
	local height=$(expr \( ${lines} - ${1} \) / 2)
	MARGIN_H=$(
			for i in `seq 1 $height`; do
				echo " "
			done
		)
}

function _initscr() {
	clear
	trap 'tput cnorm; exit 1' SIGINT
	trap 'tput cnorm; exit 0' EXIT
	tput civis
}

function _endscr() {
	clear
	tput cnorm
}

function radioactivity() {
_margin_height 17
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
		_sleep 0.224
		clear

		F=${FY}
		B=${BB}
		radioactivity
		_sleep 0.224
		clear
	done
}

_initscr

print_radioactivity

_endscr
