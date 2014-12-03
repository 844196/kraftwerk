#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

W="\033[48;5;255m  \033[m"
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

# 描画が追いつかない
function init_flash_screen() {
	HEIGHT=$(expr $COLS / 2)
	FLASH=$(
				for i in `seq 1 $LINES`; do
					for j in `seq 1 $HEIGHT`; do
							echo -n "$W"
					done
					echo -n '\n'
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

function print_tschernobyl() {
	tschernobyl
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		tschernobyl
		${SLEEP} 0.076 > /dev/null
		clear
		echo -en "${FLASH}"
		${SLEEP} 0.076 > /dev/null
	done
}

function print_harrisburg() {
	harrisburg
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		harrisburg
		${SLEEP} 0.076 > /dev/null
		clear
		echo -en "${FLASH}"
		${SLEEP} 0.076 > /dev/null
	done
}

function print_sellafield() {
	sellafield
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		sellafield
		${SLEEP} 0.076 > /dev/null
		clear
		echo -en "${FLASH}"
		${SLEEP} 0.076 > /dev/null
	done
}

function print_hiroshima() {
	hiroshima
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		hiroshima	
		${SLEEP} 0.076 > /dev/null
		clear
		echo -en "${FLASH}"
		${SLEEP} 0.076 > /dev/null
	done
}

function print_fukushima() {
	fukushima
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		fukushima
		${SLEEP} 0.076 > /dev/null
		clear
		echo -en "${FLASH}"
		${SLEEP} 0.076 > /dev/null
	done
}

function print_strings() {
	case ${1} in
		0)
			print_tschernobyl
			;;
		1)
			print_harrisburg
			;;
		2)
			print_sellafield
			;;
		3)
			print_hiroshima
			;;
		4)
			print_fukushima
			;;
	esac
}

clear
trap 'clear; tput cnorm; exit 1' SIGINT
tput civis
_margin_height
init_flash_screen	# こ↑こ↓

for ((step = 0; step < 4; step++)); do
	print_strings $step
	clear
done

for ((step = 0; step < 5; step++)); do
	test $step -ne 3 && print_strings $step
	clear
done

tput cnorm
exit 0
