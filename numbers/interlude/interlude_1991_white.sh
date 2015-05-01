#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly white="\033[48;5;255m  \033[m"
readonly grey="\033[48;5;250m  \033[m"
readonly INTERVAL="0.2"

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

function one() {
_margin_width 146
_margin_height 16
local ONE="
${MARGIN_H}
${MARGIN_W}          $A$A$A$A$A$A                          $A$A$A$A$A$A                          $A$A$A$A$A$A                          $A$A$A$A$A$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A
${MARGIN_W}  $A$B$B$B$B$B$B$B$B$A                  $A$B$B$B$B$B$B$B$B$A                  $A$B$B$B$B$B$B$B$B$A                  $A$B$B$B$B$B$B$B$B$A
${MARGIN_W}  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A                  $A$A$A$A$A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A      $A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A      $A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A      $A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${ONE}"
}

function two() {
_margin_width 146
_margin_height 16
local TWO="
${MARGIN_H}
${MARGIN_W}  $A$A$A$A$A$A$A$A$A$A$A$A$A            $A$A$A$A$A$A$A$A$A$A$A$A$A            $A$A$A$A$A$A$A$A$A$A$A$A$A            $A$A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$A$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$B$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}$A$B$B$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$A$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$B$B$A              $A$B$B$B$A      $A$B$B$A              $A$B$B$B$A      $A$B$B$A              $A$B$B$B$A      $A$B$B$A              $A$B$B$B$A
${MARGIN_W}$A$A$A$A              $A$B$B$B$A      $A$A$A$A              $A$B$B$B$A      $A$A$A$A              $A$B$B$B$A      $A$A$A$A              $A$B$B$B$A
${MARGIN_W}                      $A$B$A$A$A                            $A$B$A$A$A                            $A$B$A$A$A                            $A$B$A$A$A
${MARGIN_W}                $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A
${MARGIN_W}                $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}      $A$A$A$B$A$A$A$A                      $A$A$A$B$A$A$A$A                      $A$A$A$B$A$A$A$A                      $A$A$A$B$A$A$A$A
${MARGIN_W}      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$A$A$A$B$B$B$A$A$A$A$A$A$A$A$A      $A$A$A$A$B$B$B$A$A$A$A$A$A$A$A$A      $A$A$A$A$B$B$B$A$A$A$A$A$A$A$A$A      $A$A$A$A$B$B$B$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${TWO}"
}

function three() {
_margin_width 146
_margin_height 16
local THREE="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$B$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$B$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$B$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$B$B$B$B$A$A$A
${MARGIN_W}                $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}                $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}                $A$B$A$A$A$A                          $A$B$A$A$A$A                          $A$B$A$A$A$A                          $A$B$A$A$A$A
${MARGIN_W}          $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A
${MARGIN_W}          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}          $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A
${MARGIN_W}                $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}                $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A                          $A$A$A$A$B$A
${MARGIN_W}$A$A$A$A$A            $A$B$A$A$A      $A$A$A$A$A            $A$B$A$A$A      $A$A$A$A$A            $A$B$A$A$A      $A$A$A$A$A            $A$B$A$A$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${THREE}"
}

function four() {
_margin_width 146
_margin_height 16
local FOUR="
${MARGIN_H}
${MARGIN_W}                  $A$A$A$A$A                            $A$A$A$A$A                            $A$A$A$A$A                            $A$A$A$A$A
${MARGIN_W}                  $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}            $A$A$A$A$B$B$B$A                      $A$A$A$A$B$B$B$A                      $A$A$A$A$B$B$B$A                      $A$A$A$A$B$B$B$A
${MARGIN_W}            $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A
${MARGIN_W}            $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A                      $A$B$B$B$B$B$B$A
${MARGIN_W}      $A$A$A$A$B$B$B$B$B$B$A                $A$A$A$A$B$B$B$B$B$B$A                $A$A$A$A$B$B$B$B$B$B$A                $A$A$A$A$B$B$B$B$B$B$A
${MARGIN_W}      $A$B$B$B$B$B$B$B$B$B$A                $A$B$B$B$B$B$B$B$B$B$A                $A$B$B$B$B$B$B$B$B$B$A                $A$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}      $A$B$A$A$A$A$A$B$B$B$A                $A$B$A$A$A$A$A$B$B$B$A                $A$B$A$A$A$A$A$B$B$B$A                $A$B$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$A$B$A      $A$B$B$B$A          $A$A$A$A$B$A      $A$B$B$B$A          $A$A$A$A$B$A      $A$B$B$B$A          $A$A$A$A$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A          $A$B$B$B$B$A      $A$B$B$B$A
${MARGIN_W}$A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A      $A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A      $A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A      $A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A      $A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A
${MARGIN_W}                  $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                  $A$A$A$A$A                            $A$A$A$A$A                            $A$A$A$A$A                            $A$A$A$A$A
"
echo -e "${FOUR}"
}

function five() {
_margin_width 146
_margin_height 16
local FIVE="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A      $A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A      $A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A      $A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$A$A$A$A            $A$B$B$B$A      $A$A$A$A$A            $A$B$B$B$A      $A$A$A$A$A            $A$B$B$B$A      $A$A$A$A$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${FIVE}"
}

function six() {
_margin_width 146
_margin_height 16
local SIX="
${MARGIN_H}
${MARGIN_W}        $A$A$A$A$A$A$A$A$A$A                  $A$A$A$A$A$A$A$A$A$A                  $A$A$A$A$A$A$A$A$A$A                  $A$A$A$A$A$A$A$A$A$A
${MARGIN_W}    $A$A$A$B$B$B$B$B$B$B$B$A              $A$A$A$B$B$B$B$B$B$B$B$A              $A$A$A$B$B$B$B$B$B$B$B$A              $A$A$A$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$B$B$B$B$A$A$A$A$A$A$A          $A$A$A$B$B$B$B$A$A$A$A$A$A$A          $A$A$A$B$B$B$B$A$A$A$A$A$A$A          $A$A$A$B$B$B$B$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$A$A$A$A                      $A$B$B$B$A$A$A$A                      $A$B$B$B$A$A$A$A                      $A$B$B$B$A$A$A$A
${MARGIN_W}$A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A          $A$B$B$B$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${SIX}"
}

function seven() {
_margin_width 146
_margin_height 16
local SEVEN="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                      $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A                            $A$B$B$B$A
${MARGIN_W}                  $A$A$A$B$B$A$A                        $A$A$A$B$B$A$A                        $A$A$A$B$B$A$A                        $A$A$A$B$B$A$A
${MARGIN_W}                  $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A                          $A$B$B$B$B$A
${MARGIN_W}            $A$A$A$A$B$B$B$B$A                    $A$A$A$A$B$B$B$B$A                    $A$A$A$A$B$B$B$B$A                    $A$A$A$A$B$B$B$B$A
${MARGIN_W}            $A$B$B$B$B$B$A$A$A                    $A$B$B$B$B$B$A$A$A                    $A$B$B$B$B$B$A$A$A                    $A$B$B$B$B$B$A$A$A
${MARGIN_W}            $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A
${MARGIN_W}            $A$B$B$A$A$A$A                        $A$B$B$A$A$A$A                        $A$B$B$A$A$A$A                        $A$B$B$A$A$A$A
${MARGIN_W}      $A$A$A$A$B$B$A                        $A$A$A$A$B$B$A                        $A$A$A$A$B$B$A                        $A$A$A$A$B$B$A
${MARGIN_W}      $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A
${MARGIN_W}      $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A
${MARGIN_W}      $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A                        $A$B$B$B$B$B$A
${MARGIN_W}      $A$A$A$A$A$A$A                        $A$A$A$A$A$A$A                        $A$A$A$A$A$A$A                        $A$A$A$A$A$A$A
"
echo -e "${SEVEN}"
}

function eight() {
_margin_width 146
_margin_height 16
local EIGHT="
${MARGIN_H}
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A
${MARGIN_W}    $A$B$B$B$B$B$B$B$B$B$B$A              $A$B$B$B$B$B$B$B$B$B$B$A              $A$B$B$B$B$B$B$B$B$B$B$A              $A$B$B$B$B$B$B$B$B$B$B$A
${MARGIN_W}$A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A      $A$A$A$B$A$A$A$A$A$A$A$A$B$A$A$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A      $A$B$B$B$A            $A$B$B$B$A
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A              $A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${EIGHT}"
}

function print_numbers() {
	A=${grey}
	B=${white}
	numbers=(one two three four five six seven eight)
	for ((i = 0; i < 8; i++)); do
		${numbers[$i]}
		_sleep ${INTERVAL}
		clear
	done
}

# main
_initscr

print_numbers

_endscr
