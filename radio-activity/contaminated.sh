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

function contaminated() {
_margin_width 156
_margin_height 9
local CONTAMINATED="
${MARGIN_H}
${MARGIN_W}  $W$W$W$W      $W$W$W$W    $W        $W  $W$W$W$W$W$W       $W       $W        $W  $W  $W        $W       $W       $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W
${MARGIN_W}$W        $W  $W        $W  $W$W      $W       $W            $W       $W$W    $W$W  $W  $W$W      $W       $W            $W       $W            $W      $W
${MARGIN_W}$W            $W        $W  $W$W      $W       $W          $W  $W     $W $W  $W $W  $W  $W$W      $W     $W  $W          $W       $W            $W        $W
${MARGIN_W}$W            $W        $W  $W  $W    $W       $W          $W  $W     $W   $W   $W  $W  $W  $W    $W     $W  $W          $W       $W            $W        $W
${MARGIN_W}$W            $W        $W  $W  $W    $W       $W        $W      $W   $W        $W  $W  $W  $W    $W   $W      $W        $W       $W$W$W$W$W$W  $W        $W
${MARGIN_W}$W            $W        $W  $W    $W  $W       $W        $W      $W   $W        $W  $W  $W    $W  $W   $W      $W        $W       $W            $W        $W
${MARGIN_W}$W            $W        $W  $W    $W  $W       $W       $W$W$W$W$W$W  $W        $W  $W  $W    $W  $W  $W$W$W$W$W$W       $W       $W            $W        $W
${MARGIN_W}$W        $W  $W        $W  $W      $W$W       $W       $W        $W  $W        $W  $W  $W      $W$W  $W        $W       $W       $W            $W      $W
${MARGIN_W}  $W$W$W$W      $W$W$W$W    $W      $W$W       $W       $W        $W  $W        $W  $W  $W      $W$W  $W        $W       $W       $W$W$W$W$W$W  $W$W$W$W
"
echo -ne "${CONTAMINATED}"
}

function population() {
_margin_width 128
_margin_height 9
local POPULATION="
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W      $W$W$W$W    $W$W$W$W$W    $W        $W  $W                 $W       $W$W$W$W$W$W  $W    $W$W$W$W    $W        $W
${MARGIN_W}$W        $W  $W        $W  $W        $W  $W        $W  $W                 $W            $W       $W  $W        $W  $W$W      $W
${MARGIN_W}$W        $W  $W        $W  $W        $W  $W        $W  $W               $W  $W          $W       $W  $W        $W  $W$W      $W
${MARGIN_W}$W        $W  $W        $W  $W        $W  $W        $W  $W               $W  $W          $W       $W  $W        $W  $W  $W    $W
${MARGIN_W}$W$W$W$W$W    $W        $W  $W$W$W$W$W    $W        $W  $W             $W      $W        $W       $W  $W        $W  $W  $W    $W
${MARGIN_W}$W            $W        $W  $W            $W        $W  $W             $W      $W        $W       $W  $W        $W  $W    $W  $W
${MARGIN_W}$W            $W        $W  $W            $W        $W  $W            $W$W$W$W$W$W       $W       $W  $W        $W  $W    $W  $W
${MARGIN_W}$W            $W        $W  $W            $W        $W  $W            $W        $W       $W       $W  $W        $W  $W      $W$W
${MARGIN_W}$W              $W$W$W$W    $W              $W$W$W$W    $W$W$W$W$W$W  $W        $W       $W       $W    $W$W$W$W    $W      $W$W
"
echo -ne "${POPULATION}"
}


# main
_initscr

contaminated
_sleep 1.92
clear
population
_sleep 1.64

_endscr
