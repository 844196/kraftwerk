#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly W="\033[48;5;255m  \033[m"

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

function is_in_the_air() {
_margin_width 30
_margin_height 9
local AIR="
${MARGIN_H}
${MARGIN_W}     $W       $W  $W$W$W$W$W
${MARGIN_W}     $W       $W  $W        $W
${MARGIN_W}   $W  $W     $W  $W        $W
${MARGIN_W}   $W  $W     $W  $W        $W
${MARGIN_W} $W      $W   $W  $W$W$W$W$W
${MARGIN_W} $W      $W   $W  $W  $W
${MARGIN_W}$W$W$W$W$W$W  $W  $W    $W
${MARGIN_W}$W        $W  $W  $W      $W
${MARGIN_W}$W        $W  $W  $W        $W
"
echo -ne "${AIR}"
}

function for_you() {
_margin_width 40
_margin_height 9
local YOU="
${MARGIN_H}
${MARGIN_W}$W        $W    $W$W$W$W    $W        $W
${MARGIN_W}$W        $W  $W        $W  $W        $W
${MARGIN_W} $W      $W   $W        $W  $W        $W
${MARGIN_W}   $W  $W     $W        $W  $W        $W
${MARGIN_W}     $W       $W        $W  $W        $W
${MARGIN_W}     $W       $W        $W  $W        $W
${MARGIN_W}     $W       $W        $W  $W        $W
${MARGIN_W}     $W       $W        $W  $W        $W
${MARGIN_W}     $W         $W$W$W$W      $W$W$W$W
"
echo -ne "${YOU}"
}

function and_me() {
_margin_width 26
_margin_height 9
local ME="
${MARGIN_H}
${MARGIN_W}$W        $W  $W$W$W$W$W$W
${MARGIN_W}$W$W    $W$W  $W
${MARGIN_W}$W $W  $W $W  $W
${MARGIN_W}$W   $W   $W  $W
${MARGIN_W}$W        $W  $W$W$W$W$W$W
${MARGIN_W}$W        $W  $W
${MARGIN_W}$W        $W  $W
${MARGIN_W}$W        $W  $W
${MARGIN_W}$W        $W  $W$W$W$W$W$W
"
echo -ne "${ME}"
}

_initscr

is_in_the_air; _sleep 1.64; clear
_sleep 0.2

for_you; _sleep 0.54; clear
_sleep 0.2

and_me; _sleep 0.4; clear

_endscr
