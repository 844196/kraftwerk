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
readonly NULL="  "
A="  "; B="  " # One
C="  "; D="  " # Two
E="  "; F="  " #Three

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

function one_two_three() {
_margin_width 108
_margin_height 15
local ONE="
${MARGIN_H}
${MARGIN_W}          $A$A$A$A$A$A                  $C$C$C$C$C$C$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E
${MARGIN_W}          $A$B$B$B$B$A                $C$C$D$D$D$D$D$D$D$D$D$D$D$C$C$C      $E$F$F$F$F$F$F$F$F$F$F$F$F$F$F$E
${MARGIN_W}  $A$A$A$A$A$B$B$B$B$A                $C$C$D$C$C$C$C$C$C$C$C$C$D$D$D$C      $E$E$E$E$E$E$E$E$E$F$F$F$F$E$E$E
${MARGIN_W}  $A$B$B$B$B$B$B$B$B$A                $C$D$D$C              $C$D$D$D$C                      $E$F$F$F$F$E
${MARGIN_W}  $A$A$A$A$A$B$B$B$B$A                $C$C$C$C              $C$D$C$C$C                      $E$F$E$E$E$E
${MARGIN_W}          $A$B$B$B$B$A                                $C$C$C$C$D$C                    $E$E$E$E$F$E
${MARGIN_W}          $A$B$B$B$B$A                                $C$D$D$D$D$C                    $E$F$F$F$F$E
${MARGIN_W}          $A$B$B$B$B$A                          $C$C$C$C$D$C$C$C$C                    $E$E$E$E$F$E$E$E$E
${MARGIN_W}          $A$B$B$B$B$A                          $C$D$D$D$D$C                                $E$F$F$F$F$E
${MARGIN_W}          $A$B$B$B$B$A                      $C$C$C$D$C$C$C$C                                $E$E$E$F$F$E
${MARGIN_W}          $A$B$B$B$B$A                      $C$D$D$D$C                      $E$E$E$E$E            $E$F$F$F$E
${MARGIN_W}          $A$B$B$B$B$A                      $C$D$D$D$C                      $E$F$F$F$E            $E$F$F$F$E
${MARGIN_W}$A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A      $C$C$C$C$D$D$D$C$C$C$C$C$C$C$C$C      $E$F$F$F$F$F$F$F$F$F$F$F$F$F$F$E
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $C$D$D$D$D$D$D$D$D$D$D$D$D$D$D$C      $E$E$E$F$F$F$F$F$F$F$F$F$F$F$E$E
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $C$C$C$C$C$C$C$C$C$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E
"
echo -e "${ONE}"
}

function print_one_two_three() {
	for ((i = 0; i < 4; i++)); do
		A=${green_a}; B=${green_b}
		one_two_three
		_sleep 0.02
		clear
		A=${NULL}; B=${NULL}
		one_two_three
		_sleep 0.02
		clear
	done
	A=${green_a}; B=${green_b}
	one_two_three
	_sleep 0.2
	clear

	C=${green_a}; D=${green_b}

	one_two_three
	_sleep 0.3
	clear

	E=${green_a}; F=${green_b}
	one_two_three
	_sleep 0.3
	clear
}

_initscr

print_one_two_three

_endscr
