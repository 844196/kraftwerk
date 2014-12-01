#!/bin/bash
#
#   Author:
#       sasairc (@sasairc_2)
#
#   License
#       MIT
#

R="\033[0;41m  \033[m"
W="\033[0;47m  \033[m"
N="  "	# Nを14個で等幅スペース入れられて便利
COLS=$(tput cols)
LINES=$(tput lines)

if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

function _margin_width() {
	WIDTH=$(expr \( $COLS - $1 \) / 2)
	MARGIN_W=$(
			for i in `seq 1 $WIDTH`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	HEIGHT=$(expr \( $LINES - 13 \) / 2)
	MARGIN_H=$(
			for i in `seq 1 $HEIGHT`; do
				echo " "
			done
		)
}

function were() {
_margin_width 78
echo -e "
${MARGIN_H}
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$E   $R$R           $R$R$R$R$R      $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R   $R$R           $R$R$R$R$R$R    $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R             $R$R           $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R             $R$R           $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R     $R$R           $R$R    $R$R    $R$R$R$R$R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R$R$R$R$R     $R$R           $R$R$R$R$R$R    $R$R$R$R$R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R                            $R$R$R$R        $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                            $R$R  $R$R      $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                            $R$R    $R$R    $R$R
${MARGIN_W}$R$R$R  $R$R$R  $R$R                            $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R                  $R$R      $R$R  $R$R$R$R$R$R$R
${MARGIN_W}$R          $R  $R$R$R$R$R$R$R                  $R$R      $R$R  $R$R$R$R$R$R$R
"
}

function functioning() {
_margin_width 174
echo -e "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R$R$R  $R$R      $R$R   $R$R    $R$R     $R$R$R$R$R     $R$R$R$R$R$R    $R$R$R$R$R$R     $R$R$R$R$R     $R$R    $R$R    $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R      $R$R   $R$R    $R$R   $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R$R$R$R$R   $R$R$R$R$R$R$R   $R$R    $R$R    $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R       $R$R            $R$R       $R$R      $R$R   $R$R$R  $R$R        $R$R        $R$R$R  $R$R   $R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R       $R$R            $R$R       $R$R      $R$R   $R$R$R  $R$R        $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R$R$R$R$R    $R$R      $R$R   $R$R$R  $R$R   $R$R                 $R$R            $R$R       $R$R      $R$R   $R$R$R  $R$R        $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R$R$R$R$R    $R$R      $R$R   $R$R$R$R$R$R   $R$R                 $R$R            $R$R       $R$R      $R$R   $R$R$R$R$R$R        $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R$R$R$R$R   $R$R                 $R$R            $R$R       $R$R      $R$R   $R$R$R$R$R$R        $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R  $R$R$R   $R$R                 $R$R            $R$R       $R$R      $R$R   $R$R  $R$R$R        $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R  $R$R$R   $R$R      $R$R       $R$R            $R$R       $R$R      $R$R   $R$R  $R$R$R        $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R            $R$R      $R$R   $R$R    $R$R   $R$R      $R$R       $R$R            $R$R       $R$R      $R$R   $R$R    $R$R        $R$R        $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R            $R$R$R$R$R$R$R   $R$R    $R$R   $R$R$R$R$R$R$R       $R$R        $R$R$R$R$R$R   $R$R$R$R$R$R$R   $R$R    $R$R    $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R              $R$R$R$R$R     $R$R    $R$R     $R$R$R$R$R         $R$R        $R$R$R$R$R$R     $R$R$R$R$R     $R$R    $R$R    $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R
"
}

function automatik() {
_margin_width 142
echo -e "
${MARGIN_H}
${MARGIN_W}    $W$W$W      $W$W      $W$W   $W$W$W$W$W$W     $W$W$W$W$W    $W$W      $W$W      $W$W$W       $W$W$W$W$W$W    $W$W$W$W$W$W   $W$W   $W$W
${MARGIN_W}  $W$W$W$W$W    $W$W      $W$W   $W$W$W$W$W$W   $W$W$W$W$W$W$W  $W$W      $W$W    $W$W$W$W$W     $W$W$W$W$W$W    $W$W$W$W$W$W   $W$W   $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W$W  $W$W$W  $W$W      $W$W       $W$W            $W$W       $W$W $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W$W  $W$W$W  $W$W      $W$W       $W$W            $W$W       $W$W $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W$W$W$W$W$W  $W$W      $W$W       $W$W            $W$W       $W$W$W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W  $W  $W$W  $W$W      $W$W       $W$W            $W$W       $W$W$W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W  $W  $W$W  $W$W$W$W$W$W$W       $W$W            $W$W       $W$W  $W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W      $W$W  $W$W$W$W$W$W$W       $W$W            $W$W       $W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W      $W$W  $W$W      $W$W       $W$W            $W$W       $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W       $W$W       $W$W      $W$W  $W$W      $W$W  $W$W      $W$W       $W$W            $W$W       $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W       $W$W       $W$W$W$W$W$W$W  $W$W      $W$W  $W$W      $W$W       $W$W        $W$W$W$W$W$W   $W$W      $W$W
${MARGIN_W}$W$W      $W$W    $W$W$W$W$W         $W$W         $W$W$W$W$W    $W$W      $W$W  $W$W      $W$W       $W$W        $W$W$W$W$W$W   $W$W      $W$W
"
}

function and_we_are() {
_margin_width 160
echo -e "
${MARGIN_H}
${MARGIN_W}    $R$R$R       $R$R    $R$R   $R$R$R$R$R      $N$N$N$N$N$N$N  $R$R      $R$R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N      $R$R$R      $R$R$R$R$R        $R$R$R$R$R$R$R
${MARGIN_W}  $R$R$R$R$R     $R$R    $R$R   $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R      $R$R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N    $R$R$R$R$R    $R$R$R$R$R$R      $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R  $R$R$R$R  $N$N$N$N$N$N$N  $R$R      $R$R  $R$R            $N$N$N$N$N$N$N  $R$R      $R$R  $R$R    $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R    $R$R$R  $N$N$N$N$N$N$N  $R$R      $R$R  $R$R            $N$N$N$N$N$N$N  $R$R      $R$R  $R$R    $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R  $N$N$N$N$N$N$N  $R$R      $R$R  $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R      $R$R  $R$R    $R$R      $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N  $R$R  $R  $R$R  $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R      $R$R  $R$R$R$R$R$R      $R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R$R$R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N  $R$R  $R  $R$R  $R$R            $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R$R$R$R        $R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R  $R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R            $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R    $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R  $R$R$R   $R$R    $R$R$R  $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R            $N$N$N$N$N$N$N  $R$R      $R$R  $R$R      $R$R    $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R  $R$R$R$R  $N$N$N$N$N$N$N  $R$R$R  $R$R$R  $R$R            $N$N$N$N$N$N$N  $R$R      $R$R  $R$R      $R$R    $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R      $R$R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R      $R$R  $R$R        $R$R  $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R$R$R$R      $N$N$N$N$N$N$N  $R          $R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R      $R$R  $R$R        $R$R  $R$R$R$R$R$R$R
"
}

function dancing() {
_margin_width 110
echo -e "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R          $R$R$R       $R$R    $R$R     $R$R$R$R$R     $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R      $R$R$R$R$R     $R$R    $R$R   $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R  $R$R$R$R  $R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R       $R$R        $R$R$R  $R$R   $R$R
${MARGIN_W}$R$R    $R$R$R  $R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R       $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R      $R$R   $R$R$R  $R$R   $R$R                 $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R      $R$R   $R$R$R$R$R$R   $R$R                 $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R   $R$R$R$R$R$R   $R$R                 $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R   $R$R  $R$R$R   $R$R                 $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R    $R$R$R  $R$R      $R$R   $R$R  $R$R$R   $R$R      $R$R       $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R  $R$R$R$R  $R$R      $R$R   $R$R    $R$R   $R$R      $R$R       $R$R        $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R$R$R$R$R    $R$R      $R$R   $R$R    $R$R   $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R      $R$R      $R$R   $R$R    $R$R     $R$R$R$R$R     $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R
"
}

function mekanik() {
_margin_width 110
echo -e "
${MARGIN_H}
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W  $W$W    $W$W        $W$W$W       $W$W    $W$W    $W$W$W$W$W$W   $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W  $W$W    $W$W      $W$W$W$W$W     $W$W    $W$W    $W$W$W$W$W$W   $W$W    $W$W
${MARGIN_W}$W$W$W  $W$W$W  $W$W            $W$W  $W$W      $W$W      $W$W   $W$W$W  $W$W        $W$W       $W$W  $W$W
${MARGIN_W}$W$W$W  $W$W$W  $W$W            $W$W  $W$W      $W$W      $W$W   $W$W$W  $W$W        $W$W       $W$W  $W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W$W$W$W$W    $W$W$W$W        $W$W      $W$W   $W$W$W  $W$W        $W$W       $W$W$W$W
${MARGIN_W}$W$W  $W  $W$W  $W$W$W$W$W$W    $W$W$W$W        $W$W      $W$W   $W$W$W$W$W$W        $W$W       $W$W$W$W
${MARGIN_W}$W$W  $W  $W$W  $W$W            $W$W  $W$W      $W$W$W$W$W$W$W   $W$W$W$W$W$W        $W$W       $W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W            $W$W  $W$W      $W$W$W$W$W$W$W   $W$W  $W$W$W        $W$W       $W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W            $W$W    $W$W    $W$W      $W$W   $W$W  $W$W$W        $W$W       $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W            $W$W    $W$W    $W$W      $W$W   $W$W    $W$W        $W$W       $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W  $W$W      $W$W  $W$W      $W$W   $W$W    $W$W    $W$W$W$W$W$W   $W$W      $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W  $W$W      $W$W  $W$W      $W$W   $W$W    $W$W    $W$W$W$W$W$W   $W$W      $W$W
"
}

function print_automatik() {
	automatik
	${SLEEP} 0.8 > /dev/null
	clear
	for ((i = 0; i < 4; i++)); do
		automatik
		${SLEEP} 0.13 > /dev/null
		clear
		${SLEEP} 0.13 > /dev/null
	done
	for ((i = 0; i < 12; i++)); do
		automatik
		${SLEEP} 0.02 > /dev/null
		clear
		${SLEEP} 0.02 > /dev/null
	done
	return;
}

function print_mekanik() {
	mekanik
	${SLEEP} 0.8 > /dev/null
	clear
	for ((i = 0; i < 4; i++)); do
		mekanik
		${SLEEP} 0.13 > /dev/null
		clear
		${SLEEP} 0.13 > /dev/null
	done
	for ((i = 0; i < 12;i ++)); do
		mekanik
		${SLEEP} 0.02 > /dev/null
		clear
		${SLEEP} 0.02 > /dev/null
	done
	return;
}

clear
trap 'clear; tput cnorm; exit1' SIGINT
tput civis
_margin_height

were; ${SLEEP} 0.1 > /dev/null; clear
functioning; ${SLEEP} 0.58 > /dev/null; clear
print_automatik
clear
${SLEEP} 0.6 > /dev/null

and_we_are; ${SLEEP} 0.1 > /dev/null; clear
dancing; ${SLEEP} 0.58 > /dev/null; clear
print_mekanik
clear
${SLEEP} 0.42 > /dev/null	# ROBOTSに繋ぐ時の時間調整

tput cnorm

exit 0;
