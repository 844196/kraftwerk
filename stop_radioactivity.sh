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

function stop_radioactivity() {
_margin_width 60
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
local RADIOACTIVITY="
${MARGIN_H}
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$W$W$W$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$W$W$W$T$T$T$T$W$W$W$W$W$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$W$W$W$W$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$W$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$W$T$T$W$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$W$T$T$T$T
${MARGIN_W}$T$T$W$W$W$W$W$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$W$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$W$T$T$T$T$T$T
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
		${SLEEP} 0.224 > /dev/null
		clear

		T=' '
		radioactivity
		${SLEEP} 0.224 > /dev/null
		clear
	done
}

clear
trap 'clear; tput cnorm; exit 1' SIGINT
tput civis
_margin_height

stop_radioactivity; ${SLEEP} 0.398 > /dev/null ; clear
print_radioactivity; clear

tput cnorm
exit 0
