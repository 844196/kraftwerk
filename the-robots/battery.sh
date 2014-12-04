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
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$E  $R$R            $R$R$R$R$R      $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R  $R$R            $R$R$R$R$R$R    $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R  $R$R            $R$R            $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R            $R$R            $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R    $R$R            $R$R    $R$R    $R$R$R$R$R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R$R$R$R$R    $R$R            $R$R$R$R$R$R    $R$R$R$R$R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R                            $R$R$R$R        $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                            $R$R  $R$R      $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                            $R$R    $R$R    $R$R
${MARGIN_W}$R$R$R  $R$R$R  $R$R                            $R$R    $R$R    $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R                  $R$R      $R$R  $R$R$R$R$R$R$R
${MARGIN_W}$R          $R  $R$R$R$R$R$R$R                  $R$R      $R$R  $R$R$R$R$R$R$R
"
}

function charging() {
_margin_width 126
echo -e "
${MARGIN_H}
${MARGIN_W}  $R$R$R$R$R     $R$R    $R$R       $R$R$R      $R$R$R$R$R        $R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R    $R$R     $R$R$R$R$R    $R$R$R$R$R$R    $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R      $R$R  $R$R    $R$R    $R$R                 $R$R        $R$R$R  $R$R   $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R      $R$R  $R$R    $R$R    $R$R  $R$R$R$R       $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R             $R$R$R$R$R$R   $R$R      $R$R  $R$R    $R$R    $R$R  $R$R$R$R       $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
${MARGIN_W}$R$R             $R$R$R$R$R$R   $R$R      $R$R  $R$R$R$R$R$R    $R$R      $R$R       $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R             $R$R    $R$R   $R$R$R$R$R$R$R  $R$R$R$R        $R$R      $R$R       $R$R        $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R             $R$R    $R$R   $R$R$R$R$R$R$R  $R$R  $R$R      $R$R      $R$R       $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R      $R$R  $R$R    $R$R    $R$R      $R$R       $R$R        $R$R  $R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R      $R$R  $R$R    $R$R    $R$R      $R$R       $R$R        $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R    $R$R   $R$R      $R$R  $R$R      $R$R  $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}  $R$R$R$R$R     $R$R    $R$R   $R$R      $R$R  $R$R      $R$R    $R$R$R$R$R     $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R
"
}

function our() {
_margin_width 46
echo -e "
${MARGIN_H}
${MARGIN_W}   $R$R$R$R     $R$R      $R$R  $R$R$R$R$R
${MARGIN_W} $R$R$R$R$R$R   $R$R      $R$R  $R$R$R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R    $R$R 
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R$R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R  $R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
${MARGIN_W} $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
${MARGIN_W} $R$R$R$R$R$R   $R$R$R$R$R$R$R  $R$R      $R$R
${MARGIN_W}   $R$R$R$R       $R$R$R$R$R    $R$R      $R$R
"
}

function battery() {
_margin_width 109
echo -e "
${MARGIN_H}
${MARGIN_W} $W$W$W$W$W         $W$W$W       $W$W$W$W$W$W    $W$W$W$W$W$W   $W$W$W$W$W$W$W  $W$W$W$W$W      $W$W    $W$W 
${MARGIN_W} $W$W$W$W$W$W     $W$W$W$W$W     $W$W$W$W$W$W    $W$W$W$W$W$W   $W$W$W$W$W$W$W  $W$W$W$W$W$W    $W$W    $W$W 
${MARGIN_W} $W$W    $W$W   $W$W      $W$W       $W$W            $W$W       $W$W            $W$W    $W$W    $W$W    $W$W 
${MARGIN_W} $W$W    $W$W   $W$W      $W$W       $W$W            $W$W       $W$W            $W$W    $W$W    $W$W    $W$W 
${MARGIN_W} $W$W$W$W$W$W   $W$W      $W$W       $W$W            $W$W       $W$W$W$W$W$W    $W$W    $W$W      $W$W$W$W   
${MARGIN_W} $W$W$W$W$W     $W$W      $W$W       $W$W            $W$W       $W$W$W$W$W$W    $W$W$W$W$W$W      $W$W$W$W   
${MARGIN_W} $W$W    $W$W   $W$W$W$W$W$W$W       $W$W            $W$W       $W$W            $W$W$W$W            $W$W     
${MARGIN_W} $W$W    $W$W   $W$W$W$W$W$W$W       $W$W            $W$W       $W$W            $W$W  $W$W          $W$W     
${MARGIN_W} $W$W    $W$W   $W$W      $W$W       $W$W            $W$W       $W$W            $W$W    $W$W        $W$W     
${MARGIN_W} $W$W    $W$W   $W$W      $W$W       $W$W            $W$W       $W$W            $W$W    $W$W        $W$W     
${MARGIN_W} $W$W$W$W$W$W   $W$W      $W$W       $W$W            $W$W       $W$W$W$W$W$W$W  $W$W      $W$W      $W$W     
${MARGIN_W} $W$W$W$W$W     $W$W      $W$W       $W$W            $W$W       $W$W$W$W$W$W$W  $W$W      $W$W      $W$W     
"
}

function and_now() {
_margin_width 110
echo -e "
${MARGIN_H}
${MARGIN_W}    $R$R$R       $R$R    $R$R   $R$R$R$R$R      $N$N$N$N$N$N$N   $R$R    $R$R      $R$R$R$R     $R$R      $R$R
${MARGIN_W}  $R$R$R$R$R     $R$R    $R$R   $R$R$R$R$R$R    $N$N$N$N$N$N$N   $R$R    $R$R    $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R  $R$R$R$R  $N$N$N$N$N$N$N   $R$R$R  $R$R    $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R    $R$R$R  $N$N$N$N$N$N$N   $R$R$R  $R$R    $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R  $R$R   $R$R      $R$R  $N$N$N$N$N$N$N   $R$R$R  $R$R    $R$R    $R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N   $R$R$R$R$R$R    $R$R    $R$R   $R$R  $R  $R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R$R$R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N   $R$R$R$R$R$R    $R$R    $R$R   $R$R  $R  $R$R
${MARGIN_W}$R$R$R$R$R$R$R   $R$R  $R$R$R   $R$R      $R$R  $N$N$N$N$N$N$N   $R$R  $R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R  $R$R$R   $R$R    $R$R$R  $N$N$N$N$N$N$N   $R$R  $R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R  $R$R$R$R  $N$N$N$N$N$N$N   $R$R    $R$R    $R$R    $R$R   $R$R$R  $R$R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R$R$R$R$R    $N$N$N$N$N$N$N   $R$R    $R$R    $R$R$R$R$R$R   $R$R      $R$R
${MARGIN_W}$R$R      $R$R   $R$R    $R$R   $R$R$R$R$R      $N$N$N$N$N$N$N   $R$R    $R$R      $R$R$R$R     $R          $R 
"
}

function we_re_full() {
_margin_width 158
echo -e "
${MARGIN_H}
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R  $R$R          $R$R$R$R$R        $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R  $R$R          $R$R$R$R$R$R      $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R$R$R$R$R$R  $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R      $R$R  $R$R            $R$R          $R$R    $R$R      $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R      $R$R  $R$R            $R$R          $R$R    $R$R      $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R    $R$R          $R$R    $R$R      $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R$R$R$R$R    $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R$R$R$R$R    $R$R          $R$R$R$R$R$R      $R$R$R$R$R$R    $N$N$N$N$N$N$N  $R$R$R$R$R$R    $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R  $R  $R$R  $R$R                          $R$R$R$R$R        $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                          $R$R    $R$R      $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R$R$R$R$R$R  $R$R                          $R$R      $R$R    $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R$R  $R$R$R  $R$R                          $R$R      $R$R    $R$R            $N$N$N$N$N$N$N  $R$R            $R$R      $R$R  $R$R            $R$R
${MARGIN_W}$R$R      $R$R  $R$R$R$R$R$R$R                $R$R        $R$R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R            $R$R$R$R$R$R$R  $R$R$R$R$R$R$R  $R$R$R$R$R$R$R
${MARGIN_W}$R          $R  $R$R$R$R$R$R$R                $R$R        $R$R  $R$R$R$R$R$R$R  $N$N$N$N$N$N$N  $R$R              $R$R$R$R$R    $R$R$R$R$R$R$R  $R$R$R$R$R$R$R
"
}

function of() {
_margin_width 30
echo -e "
${MARGIN_H}
${MARGIN_W}   $R$R$R$R     $R$R$R$R$R$R$R 
${MARGIN_W} $R$R$R$R$R$R   $R$R$R$R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R    $R$R   $R$R$R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R$R$R$R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R    $R$R   $R$R
${MARGIN_W} $R$R$R$R$R$R   $R$R
${MARGIN_W}   $R$R$R$R     $R$R
"
}

function energy() {
_margin_width 96
echo -e "
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W$W$W   $W$W    $W$W   $W$W$W$W$W$W$W  $W$W$W$W$W          $W$W$W$W$W$W   $W$W    $W$W 
${MARGIN_W}$W$W$W$W$W$W$W   $W$W    $W$W   $W$W$W$W$W$W$W  $W$W$W$W$W$W      $W$W$W$W$W$W$W   $W$W    $W$W 
${MARGIN_W}$W$W             $W$W$W  $W$W   $W$W            $W$W    $W$W      $W$W             $W$W    $W$W 
${MARGIN_W}$W$W             $W$W$W  $W$W   $W$W            $W$W    $W$W      $W$W  $W$W$W$W   $W$W    $W$W 
${MARGIN_W}$W$W$W$W$W$W     $W$W$W  $W$W   $W$W$W$W$W$W    $W$W    $W$W      $W$W  $W$W$W$W     $W$W$W$W   
${MARGIN_W}$W$W$W$W$W$W     $W$W$W$W$W$W   $W$W$W$W$W$W    $W$W$W$W$W$W      $W$W      $W$W     $W$W$W$W   
${MARGIN_W}$W$W             $W$W$W$W$W$W   $W$W            $W$W$W$W$W        $W$W      $W$W       $W$W     
${MARGIN_W}$W$W             $W$W  $W$W$W   $W$W            $W$W    $W$W      $W$W      $W$W       $W$W     
${MARGIN_W}$W$W             $W$W  $W$W$W   $W$W            $W$W      $W$W    $W$W      $W$W       $W$W     
${MARGIN_W}$W$W             $W$W    $W$W   $W$W            $W$W      $W$W    $W$W      $W$W       $W$W     
${MARGIN_W}$W$W$W$W$W$W$W   $W$W    $W$W   $W$W$W$W$W$W$W  $W$W        $W$W  $W$W$W$W$W$W$W       $W$W     
${MARGIN_W}$W$W$W$W$W$W$W   $W$W    $W$W   $W$W$W$W$W$W$W  $W$W        $W$W    $W$W$W$W$W         $W$W     
"
}

function print_battery() {
	battery
	${SLEEP} 0.8 > /dev/null
	clear
	for ((i = 0; i < 4; i++)); do
		battery
		${SLEEP} 0.13 > /dev/null
		clear
		${SLEEP} 0.13 > /dev/null
	done
	for ((i = 0; i < 12; i++)); do
		battery
		${SLEEP} 0.02 > /dev/null
		clear
		${SLEEP} 0.02 > /dev/null
	done
	return;
}

function print_energy() {
	energy
	${SLEEP} 0.8 > /dev/null
	clear
	for ((i = 0; i < 4; i++)); do
		energy
		${SLEEP} 0.13 > /dev/null
		clear
		${SLEEP} 0.13 > /dev/null
	done
	for ((i = 0; i < 12; i++)); do
		energy
		${SLEEP} 0.02 > /dev/null
		clear
		${SLEEP} 0.02 > /dev/null
	done
	return;
}

clear
trap 'clear; tput cnorm;exit 1' SIGINT
tput civis # Macだと "tput vi" かも
_margin_height

were; ${SLEEP} 0.1 > /dev/null; clear
charging; ${SLEEP} 0.58 > /dev/null; clear
our; ${SLEEP} 0.34 > /dev/null; clear
print_battery
clear
${SLEEP} 0.6 > /dev/null

and_now; ${SLEEP} 0.18 > /dev/null; clear
we_re_full; ${SLEEP} 0.58 > /dev/null; clear
of; ${SLEEP} 0.34 > /dev/null; clear
print_energy

${SLEEP} 0.42 > /dev/null
tput cnorm # Macだと "tput vs" かも

exit 0;
