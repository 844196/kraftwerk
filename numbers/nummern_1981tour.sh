#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
# 

readonly F="\033[48;5;0m  \033[m"	# Font Color
readonly S="\033[48;5;151m \033[m" # Screen Color

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
			for i in `seq 1 ${height}`; do
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

function nummern_eins() {
_margin_width 80
_margin_height 25
local EINS="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${EINS}"
}

function nummern_zwei() {
_margin_width 80
_margin_height 25
local TWEI="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${TWEI}"
}

function nummern_drei() {
_margin_width 80
_margin_height 25
local DREI="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${DREI}"
}

function nummern_vier() {
_margin_width 80
_margin_height 25
local VIER="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${VIER}"
}

function nummern_funf() {
_margin_width 80
_margin_height 25
local FUNF="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${FUNF}"
}

function nummern_sechs() {
_margin_width 80
_margin_height 25
local SECHS="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${SECHS}"
}

function nummern_siben() {
_margin_width 80
_margin_height 25
local SIBEN="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${SIBEN}"
}

function nummern_acht() {
_margin_width 80
_margin_height 25
local ACHT="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$F$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${ACHT}"
}

function nummern_blank() {
_margin_width 80
_margin_height 25
local BLANK="
${MARGIN_H}
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
${MARGIN_W}$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S$S
"
echo -ne "${BLANK}"
}

# main
_initscr

for ((i = 0; i < 4; i++)); do
	nummern_eins; _sleep 0.41; clear
	nummern_zwei; _sleep 0.41; clear
	nummern_drei; _sleep 0.41; clear
	nummern_vier; _sleep 0.41; clear
	nummern_funf; _sleep 0.41; clear
	nummern_sechs; _sleep 0.41; clear
	nummern_siben; _sleep 0.41; clear
	nummern_acht; _sleep 0.41; clear

	if [ $i = 0 -o $i = 2 ]; then
		# one two
		nummern_blank; _sleep 0.5; clear
		nummern_eins; _sleep 0.4; clear
		nummern_zwei; _sleep 0.4; clear
		nummern_blank; _sleep 2.24; clear
	else
		# un doux trois
		nummern_blank; _sleep 0.18; clear
		nummern_eins; _sleep 0.75; clear
		nummern_zwei; _sleep 0.75; clear
		nummern_drei; _sleep 0.75; clear
		nummern_blank; _sleep 1.2; clear
	fi
done

_endscr
