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

function madame() {
_margin_width 82
_margin_height 9
local MADAME="
${MARGIN_H}
${MARGIN_W}$W        $W       $W       $W$W$W$W           $W       $W        $W  $W$W$W$W$W$W
${MARGIN_W}$W$W    $W$W       $W       $W      $W         $W       $W$W    $W$W  $W
${MARGIN_W}$W $W  $W $W     $W  $W     $W        $W     $W  $W     $W $W  $W $W  $W
${MARGIN_W}$W   $W   $W     $W  $W     $W        $W     $W  $W     $W   $W   $W  $W
${MARGIN_W}$W        $W   $W      $W   $W        $W   $W      $W   $W        $W  $W$W$W$W$W$W
${MARGIN_W}$W        $W   $W      $W   $W        $W   $W      $W   $W        $W  $W
${MARGIN_W}$W        $W  $W$W$W$W$W$W  $W        $W  $W$W$W$W$W$W  $W        $W  $W
${MARGIN_W}$W        $W  $W        $W  $W      $W    $W        $W  $W        $W  $W
${MARGIN_W}$W        $W  $W        $W  $W$W$W$W      $W        $W  $W        $W  $W$W$W$W$W$W
"
echo -ne "${MADAME}"
}

function curie() {
_margin_width 58
_margin_height 9
local CURIE="
${MARGIN_H}
${MARGIN_W}  $W$W$W$W    $W        $W  $W$W$W$W$W    $W  $W$W$W$W$W$W
${MARGIN_W}$W        $W  $W        $W  $W        $W  $W  $W
${MARGIN_W}$W            $W        $W  $W        $W  $W  $W
${MARGIN_W}$W            $W        $W  $W        $W  $W  $W
${MARGIN_W}$W            $W        $W  $W$W$W$W$W    $W  $W$W$W$W$W$W
${MARGIN_W}$W            $W        $W  $W  $W        $W  $W
${MARGIN_W}$W            $W        $W  $W    $W      $W  $W
${MARGIN_W}$W        $W  $W        $W  $W      $W    $W  $W
${MARGIN_W}  $W$W$W$W      $W$W$W$W    $W        $W  $W  $W$W$W$W$W$W
"
echo -ne "${CURIE}"
}

_initscr

madame; _sleep 0.57; clear
_sleep 0.2

curie; _sleep 0.64; clear

_endscr
