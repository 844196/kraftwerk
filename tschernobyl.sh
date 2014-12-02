#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

W="\033[48;5;255m  \033[m"	# White
B="\033[48;5;232m  \033[m"  # Black
N="  "
COLS=$(tput cols)
LINES=$(tput lines)

if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
elif $(which usleep >/dev/null 2>&1); then
	SLEEP='usleep'
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

function tschernobyl() {
_margin_width 152
local TSCHERNOBYL="
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W$W    $W$W$W$W      $W$W$W$W    $W        $W  $W$W$W$W$W$W  $W$W$W$W$W    $W        $W    $W$W$W$W    $W$W$W$W$W    $W        $W  $W
${MARGIN_W}     $W       $W        $W  $W        $W  $W        $W  $W            $W        $W  $W$W      $W  $W        $W  $W        $W  $W        $W  $W
${MARGIN_W}     $W       $W            $W            $W        $W  $W            $W        $W  $W$W      $W  $W        $W  $W        $W   $W      $W   $W
${MARGIN_W}     $W       $W            $W            $W        $W  $W            $W        $W  $W  $W    $W  $W        $W  $W        $W     $W  $W     $W
${MARGIN_W}     $W         $W$W$W$W    $W            $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W$W    $W  $W    $W  $W        $W  $W$W$W$W$W         $W       $W
${MARGIN_W}     $W                 $W  $W            $W        $W  $W            $W  $W        $W    $W  $W  $W        $W  $W        $W       $W       $W
${MARGIN_W}     $W                 $W  $W            $W        $W  $W            $W    $W      $W    $W  $W  $W        $W  $W        $W       $W       $W
${MARGIN_W}     $W       $W        $W  $W        $W  $W        $W  $W            $W      $W    $W      $W$W  $W        $W  $W        $W       $W       $W
${MARGIN_W}     $W         $W$W$W$W      $W$W$W$W    $W        $W  $W$W$W$W$W$W  $W        $W  $W      $W$W    $W$W$W$W    $W$W$W$W$W         $W       $W$W$W$W$W$W
"
echo -en "${TSCHERNOBYL}"
}

function harrisburg() {
_margin_width 128
local HARRISBURG="
${MARGIN_H}
${MARGIN_W}$W        $W       $W       $W$W$W$W$W    $W$W$W$W$W    $W    $W$W$W$W    $W$W$W$W$W    $W        $W  $W$W$W$W$W      $W$W$W$W
${MARGIN_W}$W        $W       $W       $W        $W  $W        $W  $W  $W        $W  $W        $W  $W        $W  $W        $W  $W        $W
${MARGIN_W}$W        $W     $W  $W     $W        $W  $W        $W  $W  $W            $W        $W  $W        $W  $W        $W  $W
${MARGIN_W}$W        $W     $W  $W     $W        $W  $W        $W  $W  $W            $W        $W  $W        $W  $W        $W  $W
${MARGIN_W}$W$W$W$W$W$W   $W      $W   $W$W$W$W$W    $W$W$W$W$W    $W    $W$W$W$W    $W$W$W$W$W    $W        $W  $W$W$W$W$W    $W  $W$W$W$W
${MARGIN_W}$W        $W   $W      $W   $W  $W        $W  $W        $W            $W  $W        $W  $W        $W  $W  $W        $W        $W
${MARGIN_W}$W        $W  $W$W$W$W$W$W  $W    $W      $W    $W      $W            $W  $W        $W  $W        $W  $W    $W      $W        $W
${MARGIN_W}$W        $W  $W        $W  $W      $W    $W      $W    $W  $W        $W  $W        $W  $W        $W  $W      $W    $W        $W
${MARGIN_W}$W        $W  $W        $W  $W        $W  $W        $W  $W    $W$W$W$W    $W$W$W$W$W      $W$W$W$W    $W        $W    $W$W$W$W
"
echo -en "${HARRISBURG}"
}

function sellafield() {
_margin_width 128
local SELLAFIELD="
${MARGIN_H}
${MARGIN_W}  $W$W$W$W    $W$W$W$W$W$W  $W            $W                 $W       $W$W$W$W$W$W  $W  $W$W$W$W$W$W  $W            $W$W$W$W
${MARGIN_W}$W        $W  $W            $W            $W                 $W       $W            $W  $W            $W            $W      $W
${MARGIN_W}$W            $W            $W            $W               $W  $W     $W            $W  $W            $W            $W        $W
${MARGIN_W}$W            $W            $W            $W               $W  $W     $W            $W  $W            $W            $W        $W
${MARGIN_W}  $W$W$W$W    $W$W$W$W$W$W  $W            $W             $W      $W   $W$W$W$W$W$W  $W  $W$W$W$W$W$W  $W            $W        $W
${MARGIN_W}          $W  $W            $W            $W             $W      $W   $W            $W  $W            $W            $W        $W
${MARGIN_W}          $W  $W            $W            $W            $W$W$W$W$W$W  $W            $W  $W            $W            $W        $W
${MARGIN_W}$W        $W  $W            $W            $W            $W        $W  $W            $W  $W            $W            $W      $W
${MARGIN_W}  $W$W$W$W    $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W$W$W  $W        $W  $W            $W  $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W
"
echo -en "${SELLAFIELD}"
}

function hiroshima() {
_margin_width 104
local HIROSHIMA="
${MARGIN_H}
${MARGIN_W}$W        $W  $W  $W$W$W$W$W      $W$W$W$W      $W$W$W$W    $W        $W  $W  $W        $W       $W
${MARGIN_W}$W        $W  $W  $W        $W  $W        $W  $W        $W  $W        $W  $W  $W$W    $W$W       $W
${MARGIN_W}$W        $W  $W  $W        $W  $W        $W  $W            $W        $W  $W  $W $W  $W $W     $W  $W
${MARGIN_W}$W        $W  $W  $W        $W  $W        $W  $W            $W        $W  $W  $W   $W   $W     $W  $W
${MARGIN_W}$W$W$W$W$W$W  $W  $W$W$W$W$W    $W        $W    $W$W$W$W    $W$W$W$W$W$W  $W  $W        $W   $W      $W
${MARGIN_W}$W        $W  $W  $W  $W        $W        $W            $W  $W        $W  $W  $W        $W   $W      $W
${MARGIN_W}$W        $W  $W  $W    $W      $W        $W            $W  $W        $W  $W  $W        $W  $W$W$W$W$W$W
${MARGIN_W}$W        $W  $W  $W      $W    $W        $W  $W        $W  $W        $W  $W  $W        $W  $W        $W
${MARGIN_W}$W        $W  $W  $W        $W    $W$W$W$W      $W$W$W$W    $W        $W  $W  $W        $W  $W        $W
"
echo -en "${HIROSHIMA}"
}

function fukushima() {
_margin_width 114
local FUKUSHIMA="
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W$W  $W        $W  $W        $W  $W        $W    $W$W$W$W    $W        $W  $W  $W        $W       $W
${MARGIN_W}$W            $W        $W  $W      $W    $W        $W  $W        $W  $W        $W  $W  $W$W    $W$W       $W
${MARGIN_W}$W            $W        $W  $W    $W      $W        $W  $W            $W        $W  $W  $W $W  $W $W     $W  $W
${MARGIN_W}$W            $W        $W  $W  $W        $W        $W  $W            $W        $W  $W  $W   $W   $W     $W  $W
${MARGIN_W}$W$W$W$W$W$W  $W        $W  $W$W          $W        $W    $W$W$W$W    $W$W$W$W$W$W  $W  $W        $W   $W      $W
${MARGIN_W}$W            $W        $W  $W  $W        $W        $W            $W  $W        $W  $W  $W        $W   $W      $W
${MARGIN_W}$W            $W        $W  $W    $W      $W        $W            $W  $W        $W  $W  $W        $W  $W$W$W$W$W$W
${MARGIN_W}$W            $W        $W  $W      $W    $W        $W  $W        $W  $W        $W  $W  $W        $W  $W        $W
${MARGIN_W}$W              $W$W$W$W    $W        $W    $W$W$W$W      $W$W$W$W    $W        $W  $W  $W        $W  $W        $W
"
echo -en "${FUKUSHIMA}"
}

clear
trap 'clear; tput cnorm; exit 1' SIGINT
tput civis
_margin_height

tschernobyl; sleep 2; clear
harrisburg; sleep 2; clear
sellafield; sleep 2; clear
hiroshima; sleep 2; clear
fukushima; sleep 2; clear

tput cnorm
exit 0;
