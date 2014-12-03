#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly FW="\033[48;5;255m  \033[m"
readonly FB="\033[48;5;16m  \033[m"
readonly BW="\033[48;5;255m \033[m"
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

function tschernobyl() {
_margin_width 156
_margin_height 11
local TSCHERNOBYL="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${TSCHERNOBYL}"
}

function harrisburg() {
_margin_width 156
_margin_height 11
local HARRISBURG="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${HARRISBURG}"
}

function sellafield() {
_margin_width 156
_margin_height 11
local SELLAFIELD="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${SELLAFIELD}"
}

function hiroshima() {
_margin_width 156
_margin_height 11
local HIROSHIMA="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$F$B$B$F$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$F$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${HIROSHIMA}"
}

function fukushima() {
_margin_width 156
_margin_height 11
local FUKUSHIMA="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$F$B$B$F$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$F$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${FUKUSHIMA}"
}

function print_strings() {
	case ${1} in
		0)
			TAG="tschernobyl"
			;;
		1)
			TAG="harrisburg"
			;;
		2)
			TAG="sellafield"
			;;
		3)
			TAG="hiroshima"
			;;
		4)
			TAG="fukushima"
			;;
	esac

	F=${FW}
	B=${BB}
	${TAG}
	_sleep 1.82
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		${TAG}
		_sleep 0.067
		clear

		F=${FW}
		B=${BB}
		${TAG}
		_sleep 0.067
		clear
	done
}

_initscr

for ((step = 0; step < 4; step++)); do
	print_strings $step
	clear
done

for ((step = 0; step < 5; step++)); do
	test $step -ne 3 && print_strings $step
	clear
done

_endscr
