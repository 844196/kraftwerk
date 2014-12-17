#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly green_a="\033[48;5;40m  \033[m"
readonly green_b="\033[48;5;46m  \033[m"
readonly white="\033[48;5;255m  \033[m"
readonly grey="\033[48;5;250m  \033[m"
readonly INTERVAL="0.08"

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

function four() {
_margin_width 32
_margin_height 16
local FOUR="
${MARGIN_H}
${MARGIN_W}                  $A$A$A$A$A
${MARGIN_W}                  $A$B$B$B$A
${MARGIN_W}            $A$A$A$A$B$B$B$A
${MARGIN_W}            $A$B$B$B$B$B$B$A
${MARGIN_W}            $A$B$B$B$B$B$B$A
${MARGIN_W}      $A$A$A$A$B$B$B$B$B$B$A
${MARGIN_W}      $A$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}      $A$B$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$A$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A
${MARGIN_W}                  $A$B$B$B$A
${MARGIN_W}                  $A$A$A$A$A
"
echo -e "${FOUR}"
}

function print_four() {
	for ((i = 0; i < 4; i++)); do
		test `expr $i % 2` -eq 0 &&\
			A=${green_a} &&\
			B=${green_b}

		test `expr $i % 2` -ne 0 &&\
			A=${grey} &&\
			B=${white}

		four
		_sleep ${INTERVAL}
		clear
	done
}

# main
_initscr

print_four

_endscr
