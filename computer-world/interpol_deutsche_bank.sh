#!/bin/bash
#
#    いんたーぽーる　どいつのぎんこう
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly FW="\033[48;5;15m  \033[m"
readonly FB="\033[48;5;232m  \033[m"
readonly BW="\033[48;5;15m \033[m"
readonly BB="\033[48;5;232m \033[m"
W="  "
B="  "

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

function interpol() {
_margin_width 132
_margin_height 18
local INTERPOL="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${INTERPOL}"
}

function deutsche() {
_margin_width 132
_margin_height 18
local DEUTSCHE="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B
${MARGIN_W}$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${DEUTSCHE}"
}

function bank() {
_margin_width 132
_margin_height 18
local BANK="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$B$B$F$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${BANK}"
}

function print_interpol() {
	F=$FW
	B=$BB
	interpol
	_sleep 0.5
	clear

	F=$FB
	B=$BW
	interpol
	_sleep 0.2
	clear

	F=$FW
	B=$BB
	interpol
	_sleep 1.12
	clear
}

function print_deutsche() {
	F=$FW
	B=$BB
	deutsche
	_sleep 0.34
	clear

	F=$FB
	B=$BW
	deutsche
	_sleep 0.28
	clear
}

function print_bank() {
	F=$FW
	B=$BB
	bank
	_sleep 0.64
	clear

	for ((i = 0;i < 4; i++)); do
		F=$FB
		B=$BW
		bank
		_sleep 0.012
		clear
		F=$FW
		B=$BB
		bank
		_sleep 0.012
		clear
	done
}

_initscr

print_interpol
print_deutsche
print_bank

_endscr
