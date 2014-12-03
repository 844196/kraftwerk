#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly FW="\033[48;5;255m  \033[m"
readonly FB="\033[48;5;16m  \033[m"
readonly BW="\033[48;5;255m \033[m"
readonly BB="\033[48;5;16m \033[m"
F=""   # Dynamic variable (Foreground)
B=""   # Dynamic variable (Background)

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

function tschernobyl() {
_margin_width 156
local TSCHERNOBYL="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$F$F$F$F$F$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -ne "${TSCHERNOBYL}"
}

function harrisburg() {
_margin_width 156
local HARRISBURG="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${HARRISBURG}"
}

function sellafield() {
_margin_width 156
local SELLAFIELD="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$F$F$B$B$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${SELLAFIELD}"
}

function hiroshima() {
_margin_width 156
local HIROSHIMA="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$F$B$B$F$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$F$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${HIROSHIMA}"
}

function fukushima() {
_margin_width 156
local FUKUSHIMA="
${MARGIN_H}
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$F$B$B$B$B$F$F$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$F$B$B$F$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$F$B$B$B$F$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$F$F$F$F$F$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$F$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$F$F$F$F$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$F$F$F$F$B$B$B$B$B$B$F$F$F$F$B$B$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$F$B$B$B$B$B$B$B$B$F$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
${MARGIN_W}$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B$B
"
echo -en "${FUKUSHIMA}"
}

function print_tschernobyl() {
	F=${FW}
	B=${BB}
	tschernobyl
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		tschernobyl
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		tschernobyl
		${SLEEP} 0.076 > /dev/null
		clear
	done
}

function print_harrisburg() {
	F=${FW}
	B=${BB}
	harrisburg
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		harrisburg
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		harrisburg
		${SLEEP} 0.076 > /dev/null
		clear
	done
}

function print_sellafield() {
	F=${FW}
	B=${BB}
	sellafield
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		sellafield
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		sellafield
		${SLEEP} 0.076 > /dev/null
		clear
	done
}

function print_hiroshima() {
	F=${FW}
	B=${BB}
	hiroshima
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		hiroshima	
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		hiroshima
		${SLEEP} 0.076 > /dev/null
		clear
	done
}

function print_fukushima() {
	F=${FW}
	B=${BB}
	fukushima
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		fukushima
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		fukushima
		${SLEEP} 0.076 > /dev/null
		clear
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
