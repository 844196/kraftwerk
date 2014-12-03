#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly W="\033[48;5;255m  \033[m"
readonly R="\033[48;5;1m \033[m"
readonly N="\033m[48;5;16m \033[m"
T=""	# Dynamic variable

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

function stop_radioactivity() {
_margin_width 60
_margin_height 9
local STOP="
${MARGIN_H}
${MARGIN_W}  $W$W$W$W      $W$W$W$W$W$W      $W$W$W$W      $W$W$W$W$W
${MARGIN_W}$W        $W         $W         $W        $W    $W        $W
${MARGIN_W}$W                   $W         $W        $W    $W        $W
${MARGIN_W}$W                   $W         $W        $W    $W        $W
${MARGIN_W}  $W$W$W$W           $W         $W        $W    $W$W$W$W$W
${MARGIN_W}          $W         $W         $W        $W    $W
${MARGIN_W}          $W         $W         $W        $W    $W
${MARGIN_W}$W        $W         $W         $W        $W    $W
${MARGIN_W}  $W$W$W$W           $W           $W$W$W$W      $W
"
echo -ne "${STOP}"
}

function radioactivity() {
_margin_width 154
_margin_height 11
local RADIOACTIVITY="
${MARGIN_H}
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$W$W$W$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$W$W$W$T$T$T$T$W$W$W$W$W$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$W$W$W$W$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$W$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$W$T$T$T$T
${MARGIN_W}$T$T$W$W$W$W$W$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T
${MARGIN_W}$T$T$W$T$T$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$W$T$T$T$T$T$T$W$W$W$W$W$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$W$W$W$W$W$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$W$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$W$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$W$W$W$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
"
echo -ne "${RADIOACTIVITY}"
}

function print_radioactivity() {
	for ((i = 0; i < 8; i++)); do
		T=${R}
		radioactivity
		_sleep 0.224
		clear

		T=' '
		radioactivity
		_sleep 0.224
		clear
	done
}

_initscr

stop_radioactivity; _sleep 0.398; clear
print_radioactivity; clear

_endscr
