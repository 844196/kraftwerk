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
A="  "; B="  " # One
C="  "; D="  " # Two
E="  "; F="  " # Three
FA=(A C E)
FB=(B D F)

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

function five_six_seven() {
_margin_width 108
_margin_height 16
local FIVE="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A              $C$C$C$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A          $C$C$C$D$D$D$D$D$D$D$D$C          $E$F$F$F$F$F$F$F$F$F$F$F$F$F$F$E
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A      $C$C$C$D$D$D$D$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$F$F$F$E
${MARGIN_W}$A$B$B$B$A                            $C$D$D$D$C$C$C$C                                            $E$F$F$F$E
${MARGIN_W}$A$B$B$B$A                            $C$D$D$D$C                                                  $E$F$F$F$E
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A          $C$D$D$D$C                                              $E$E$E$F$F$E$E
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $C$D$D$D$C$C$C$C$C$C$C$C$C$C                            $E$F$F$F$F$E
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $C$D$D$D$D$D$D$D$D$D$D$D$D$C$C$C                  $E$E$E$E$F$F$F$F$E
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C$C$C$C$C$C$C$C$D$D$D$C                  $E$F$F$F$F$F$E$E$E
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C                  $E$F$F$F$F$F$E
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C                  $E$F$F$E$E$E$E
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C            $E$E$E$E$F$F$E
${MARGIN_W}$A$A$A$A$A            $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C            $E$F$F$F$F$F$E
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $C$D$D$D$C$C$C$C$C$C$C$C$D$D$D$C            $E$F$F$F$F$F$E
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $C$C$C$D$D$D$D$D$D$D$D$D$D$C$C$C            $E$F$F$F$F$F$E
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $C$C$C$C$C$C$C$C$C$C$C$C                $E$E$E$E$E$E$E
"
echo -e "${FIVE}"
}

function print_five_six_seven() {
	for ((i = 0; i < 3; i++)); do
		printf -v "${FA[$i]}" "${green_a}"
		printf -v "${FB[$i]}" "${green_b}"
		five_six_seven
		test $i -eq 0 && _sleep 0.3
		test $i -ne 0 && _sleep 0.24
		clear
	done
	five_six_seven
	_sleep 0.6
}

# main
_initscr

print_five_six_seven

_endscr
