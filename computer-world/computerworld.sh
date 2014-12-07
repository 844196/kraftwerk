#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

FG="\033[48;5;2m  \033[m"

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

function computerworld() {
_margin_width 154
_margin_height 14
local COMPUTERWORLD="
${MARGIN_H}
${MARGIN_W}  $A$A$A      $B$B$B    $C      $C  $D$D$D$D    $E      $E  $F$F$F$F$F  $G$G$G$G$G  $H$H$H$H    $I      $I    $J$J$J    $K$K$K$K    $L          $M$M$M
${MARGIN_W}  $A$A$A      $B$B$B    $C      $C  $D$D$D$D    $E      $E  $F$F$F$F$F  $G$G$G$G$G  $H$H$H$H    $I      $I    $J$J$J    $K$K$K$K    $L          $M$M$M
${MARGIN_W}$A      $A  $B      $B  $C$C  $C$C  $D      $D  $E      $E      $F      $G          $H      $H  $I      $I  $J      $J  $K      $K  $L          $M    $M
${MARGIN_W}$A      $A  $B      $B  $C$C  $C$C  $D      $D  $E      $E      $F      $G          $H      $H  $I      $I  $J      $J  $K      $K  $L          $M    $M
${MARGIN_W}$A          $B      $B  $C  $C  $C  $D      $D  $E      $E      $F      $G          $H      $H  $I      $I  $J      $J  $K      $K  $L          $M      $M
${MARGIN_W}$A          $B      $B  $C  $C  $C  $D      $D  $E      $E      $F      $G          $H      $H  $I      $I  $J      $J  $K      $K  $L          $M      $M
${MARGIN_W}$A          $B      $B  $C  $C  $C  $D$D$D$D    $E      $E      $F      $G$G$G$G    $H$H$H$H    $I  $I  $I  $J      $J  $K$K$K$K    $L          $M      $M
${MARGIN_W}$A          $B      $B  $C  $C  $C  $D$D$D$D    $E      $E      $F      $G$G$G$G    $H$H$H$H    $I  $I  $I  $J      $J  $K$K$K$K    $L          $M      $M
${MARGIN_W}$A          $B      $B  $C      $C  $D          $E      $E      $F      $G          $H  $H      $I  $I  $I  $J      $J  $K  $K      $L          $M      $M
${MARGIN_W}$A          $B      $B  $C      $C  $D          $E      $E      $F      $G          $H  $H      $I  $I  $I  $J      $J  $K  $K      $L          $M      $M
${MARGIN_W}$A      $A  $B      $B  $C      $C  $D          $E      $E      $F      $G          $H    $H    $I$I  $I$I  $J      $J  $K    $K    $L          $M    $M
${MARGIN_W}$A      $A  $B      $B  $C      $C  $D          $E      $E      $F      $G          $H    $H    $I$I  $I$I  $J      $J  $K    $K    $L          $M    $M
${MARGIN_W}  $A$A$A      $B$B$B    $C      $C  $D            $E$E$E        $F      $G$G$G$G$G  $H      $H  $I      $I    $J$J$J    $K      $K  $L$L$L$L$L  $M$M$M
${MARGIN_W}  $A$A$A      $B$B$B    $C      $C  $D            $E$E$E        $F      $G$G$G$G$G  $H      $H  $I      $I    $J$J$J    $K      $K  $L$L$L$L$L  $M$M$M
"
echo -en "${COMPUTERWORLD}"
}


# main
_initscr

A="  "; B="  "; C="  "; D="  "; E="  "; F="  "; G="  "; H="  "; I="  "; J="  "; K="  "; L="  "; M="  "
V=(A B C D E F G H I J K L M)

for ((i = 0; i < 13; i++)); do
	clear
	printf -v "${V[$i]}" "${FG}"
	computerworld
	_sleep 0.1
done

_sleep 4

_endscr
