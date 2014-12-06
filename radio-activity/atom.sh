#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#
 
readonly E="\033[48;5;148m  \033[m"
readonly N="\033[48;5;1m  \033[m"
readonly YP="\033[48;5;128m  \033[m"
Y=""   # Dynamic variable

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

function atom() {
_margin_height 33
_margin_width 64
local ATOM="
${MARGIN_H}
${MARGIN_W}                $E$E$E                    $E$E$E                 #
${MARGIN_W}              $E      $E                $E      $E               #
${MARGIN_W}             $E        $E              $E        $E              #
${MARGIN_W}             $E         $E            $E         $E              #
${MARGIN_W}             $E           $E        $E           $E              #
${MARGIN_W}             $E            $E      $E            $E              #
${MARGIN_W}             $E             $E    $E             $E              #
${MARGIN_W}              $E             $E  $E             $E               #
${MARGIN_W}               $E             $E$E             $E                #
${MARGIN_W}                $E             $E             $E                 #
${MARGIN_W}                 $E          $E  $E          $E                  #
${MARGIN_W}                  $E        $E    $E        $E                   #
${MARGIN_W}             $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E              #
${MARGIN_W}       $E$E$E       $E    $E        $E    $E       $E$E$E        #
${MARGIN_W}    $E$E             $E  $E   $Y$Y   $E  $E              $E$E    #
${MARGIN_W}  $E                  $E$E  $Y$N$N$Y  $E$E                   $E  #
${MARGIN_W}$E                     $E  $Y$N$N$N$Y  $E                      $E#
${MARGIN_W}  $E                  $E$E  $Y$N$N$Y  $E$E                   $E  #
${MARGIN_W}    $E$E             $E  $E   $Y$Y   $E  $E              $E$E    #
${MARGIN_W}       $E$E$E       $E    $E        $E    $E       $E$E$E        #
${MARGIN_W}             $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E              #
${MARGIN_W}                 $E         $E    $E         $E                  #
${MARGIN_W}                $E           $E  $E           $E                 #
${MARGIN_W}               $E              $E              $E                #
${MARGIN_W}              $E              $E$E              $E               #
${MARGIN_W}             $E              $E  $E               $E             #
${MARGIN_W}            $E              $E    $E              $E             #
${MARGIN_W}            $E             $E      $E             $E             #
${MARGIN_W}            $E            $E        $E            $E             #
${MARGIN_W}            $E          $E            $E          $E             #
${MARGIN_W}            $E         $E              $E         $E             #
${MARGIN_W}             $E      $E                  $E      $E              #
${MARGIN_W}               $E$E$E                      $E$E$E                #
"
echo -ne "${ATOM}"
}


function print_atom() {
	for ((i = 0; i < 8; i++)); do
		Y="  "
		atom
		_sleep 0.5
		clear
		Y=$YP
		atom
		_sleep 0.1
		clear
	done
}


# main
_initscr

print_atom

_endscr
