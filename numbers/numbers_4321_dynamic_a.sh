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
readonly NULL="  "
A="  "; B="  " # Eins
C="  "; D="  " # Zwei 
E="  "; F="  " # Drei
G="  "; H="  " # Vier
FA=(A C E G)
FB=(B D F H)

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

function vier_drei_twei_eins() {
_margin_width 146
_margin_height 16
local VIER="
${MARGIN_H}
${MARGIN_W}                  $A$A$A$A$A          $C$C$C$C$C$C$C$C$C$C$C$C$C$C$C$C        $E$E$E$E$E$E$E$E$E$E$E$E$E                    $G$G$G$G$G$G
${MARGIN_W}                  $A$B$B$B$A          $C$D$D$D$D$D$D$D$D$D$D$D$D$D$D$C      $E$E$F$F$F$F$F$F$F$F$F$F$F$E$E$E                $G$H$H$H$H$G
${MARGIN_W}            $A$A$A$A$B$B$B$A          $C$C$C$C$C$C$C$C$C$D$D$D$D$C$C$C      $E$F$F$E$E$E$E$E$E$E$E$E$F$F$F$E        $G$G$G$G$G$H$H$H$H$G
${MARGIN_W}            $A$B$B$B$B$B$B$A                          $C$D$D$D$D$C          $E$F$F$E              $E$F$F$F$E        $G$H$H$H$H$H$H$H$H$G
${MARGIN_W}            $A$B$B$B$B$B$B$A                          $C$D$D$D$D$C          $E$E$E$E              $E$F$F$F$E        $G$G$G$G$G$H$H$H$H$G
${MARGIN_W}      $A$A$A$A$B$B$B$B$B$B$A                          $C$D$C$C$C$C                                $E$F$E$E$E                $G$H$H$H$H$G
${MARGIN_W}      $A$B$B$B$B$B$B$B$B$B$A                    $C$C$C$C$D$C                                $E$E$E$E$F$E                    $G$H$H$H$H$G
${MARGIN_W}      $A$B$A$A$A$A$A$B$B$B$A                    $C$D$D$D$D$C                                $E$F$F$F$F$E                    $G$H$H$H$H$G
${MARGIN_W}$A$A$A$A$B$A      $A$B$B$B$A                    $C$C$C$C$D$C$C$C$C                    $E$E$E$E$F$E$E$E$E                    $G$H$H$H$H$G
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A                          $C$D$D$D$D$C                    $E$F$F$F$F$E                          $G$H$H$H$H$G
${MARGIN_W}$A$B$B$B$B$A      $A$B$B$B$A                          $C$C$C$C$D$C                $E$E$E$F$E$E$E$E                          $G$H$H$H$H$G
${MARGIN_W}$A$B$B$B$B$A$A$A$A$A$B$B$B$A$A$A      $C$C$C$C$C            $C$D$C$C$C            $E$F$F$F$E                                $G$H$H$H$H$G
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C            $E$F$F$F$E                                $G$H$H$H$H$G
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$B$B$B$A$A$A      $C$D$D$D$C$C$C$C$C$C$C$C$D$D$D$C      $E$E$E$E$F$F$F$E$E$E$E$E$E$E$E$E      $G$G$G$G$G$G$H$H$H$H$G$G$G$G$G$G
${MARGIN_W}                  $A$B$B$B$A          $C$C$C$D$D$D$D$D$D$D$D$D$D$C$C$C      $E$F$F$F$F$F$F$F$F$F$F$F$F$F$F$E      $G$H$H$H$H$H$H$H$H$H$H$H$H$H$H$G
${MARGIN_W}                  $A$A$A$A$A              $C$C$C$C$C$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E      $G$G$G$G$G$G$G$G$G$G$G$G$G$G$G$G
"
echo -e "${VIER}"
}

function print_vier_drei_twei_eins() {
	for ((i = 0; i < 4; i++)); do
		printf -v "${FA[$i]}" "${grey}"
		printf -v "${FB[$i]}" "${white}"
		vier_drei_twei_eins
	
		test $i -ne 3 &&\
			_sleep 0.888
			clear

		test $i -eq 3 &&\
			for ((j = 0; j < 16; j++)); do
				printf -v "${FA[$i]}" "${grey}"
				printf -v "${FB[$i]}" "${white}"
				vier_drei_twei_eins
				_sleep 0.014
				clear

				printf -v "${FA[$i]}" "${NULL}"
				printf -v "${FB[$i]}" "${NULL}"
				vier_drei_twei_eins
				_sleep 0.014
				clear
			done

		printf -v "${FA[$i]}" "${NULL}"
		printf -v "${FB[$i]}" "${NULL}"
	done
}

# main
_initscr

print_vier_drei_twei_eins

_endscr
