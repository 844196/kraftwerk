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
readonly INTERVAL="0.096"
A="  "; B="  " # Funf
C="  "; D="  " # Sechs
E="  "; F="  " # Sieben
G="  "; H="  " # Acht
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

function funf_sechs_siben_acht() {
_margin_width 146
_margin_height 16
local FUNF="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A              $C$C$C$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$E$E$E$E          $G$G$G$G$G$G$G$G$G$G$G$G
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A          $C$C$C$D$D$D$D$D$D$D$D$C          $E$F$F$F$F$F$F$F$F$F$F$F$F$F$F$E      $G$G$G$H$H$H$H$H$H$H$H$H$H$G$G$G
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A$A$A      $C$C$C$D$D$D$D$C$C$C$C$C$C$C          $E$E$E$E$E$E$E$E$E$E$E$E$F$F$F$E      $G$H$H$H$G$G$G$G$G$G$G$G$H$H$H$G
${MARGIN_W}$A$B$B$B$A                            $C$D$D$D$C$C$C$C                                            $E$F$F$F$E      $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}$A$B$B$B$A                            $C$D$D$D$C                                                  $E$F$F$F$E      $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$A$A          $C$D$D$D$C                                              $E$E$E$F$F$E$E      $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}$A$B$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $C$D$D$D$C$C$C$C$C$C$C$C$C$C                            $E$F$F$F$F$E        $G$G$G$H$G$G$G$G$G$G$G$G$H$G$G$G
${MARGIN_W}$A$A$A$A$A$A$A$A$A$A$A$A$B$B$B$A      $C$D$D$D$D$D$D$D$D$D$D$D$D$C$C$C                  $E$E$E$E$F$F$F$F$E            $G$H$H$H$H$H$H$H$H$H$H$G
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C$C$C$C$C$C$C$C$D$D$D$C                  $E$F$F$F$F$F$E$E$E        $G$G$G$H$G$G$G$G$G$G$G$G$H$G$G$G
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C                  $E$F$F$F$F$F$E            $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C                  $E$F$F$E$E$E$E            $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}                      $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C            $E$E$E$E$F$F$E                  $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}$A$A$A$A$A            $A$B$B$B$A      $C$D$D$D$C            $C$D$D$D$C            $E$F$F$F$F$F$E                  $G$H$H$H$G            $G$H$H$H$G
${MARGIN_W}$A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A      $C$D$D$D$C$C$C$C$C$C$C$C$D$D$D$C            $E$F$F$F$F$F$E                  $G$H$H$H$G$G$G$G$G$G$G$G$H$H$H$G
${MARGIN_W}$A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A      $C$C$C$D$D$D$D$D$D$D$D$D$D$C$C$C            $E$F$F$F$F$F$E                  $G$G$G$H$H$H$H$H$H$H$H$H$H$G$G$G
${MARGIN_W}    $A$A$A$A$A$A$A$A$A$A$A$A              $C$C$C$C$C$C$C$C$C$C$C$C                $E$E$E$E$E$E$E                      $G$G$G$G$G$G$G$G$G$G$G$G
"
echo -e "${FUNF}"
}

function print_funf() {
	for ((j = 0; j < 8; j++)); do
		test $j -eq 0 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 1 &&\
			printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"

		test $j -eq 2 &&\
	   		printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 3 &&\
			printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"

		test $j -eq 4 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 5 &&\
	   		printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"
		
		test $j -eq 6 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 7 &&\
			printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"

		funf_sechs_siben_acht
		_sleep ${INTERVAL}
		clear
	done
}

function print_sechs() {
	for ((j = 0; j < 8; j++)); do
		test $j -eq 0 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 1 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 2 &&\
	   		printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 3 &&\
			printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"

		test $j -eq 4 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 5 &&\
	   		printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"
		
		test $j -eq 6 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 7 &&\
			printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"

		funf_sechs_siben_acht
		_sleep ${INTERVAL}
		clear
	done
}

function print_siben() {
	for ((j = 0; j < 8; j++)); do
		test $j -eq 0 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 1 &&\
			printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"

		test $j -eq 2 &&\
	   		printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 3 &&\
			printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"

		test $j -eq 4 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 5 &&\
	   		printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"
		
		test $j -eq 6 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 7 &&\
			printf -v "${FA[$1]}" "${NULL}" &&\
			printf -v "${FB[$1]}" "${NULL}"

		funf_sechs_siben_acht
		_sleep ${INTERVAL}
		clear
	done
}

function print_acht() {
	for ((j = 0; j < 8; j++)); do
		test $j -eq 0 &&\
			printf -v "${FA[$1]}" "${green_a}" &&\
			printf -v "${FB[$1]}" "${green_b}"

		test $j -eq 2 &&\
	   		printf -v "${FA[$1]}" "${grey}" &&\
			printf -v "${FB[$1]}" "${white}"

		funf_sechs_siben_acht
		_sleep ${INTERVAL}
		clear
	done
}
function print_funf_sechs_siben_acht() {
	for ((i = 0; i < 4; i++)); do
		test $i -eq 0 && print_funf $i
		test $i -eq 1 && print_sechs $i
		test $i -eq 2 && print_siben $i
		test $i -eq 3 && print_acht $i

		printf -v "${FA[$i]}" "${NULL}"
		printf -v "${FB[$i]}" "${NULL}"
	done
}

# main
_initscr

print_funf_sechs_siben_acht

_endscr
