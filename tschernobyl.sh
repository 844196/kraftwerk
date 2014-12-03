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

T_COLS=$(tput cols)
T_LINES=$(tput lines)
if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

function _margin_width() {
	WIDTH=$(expr \( ${T_COLS} - ${1} \) / 2)
	MARGIN_W=$(
			for i in `seq 1 $WIDTH`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	HEIGHT=$(expr \( ${T_LINES} - ${1} \) / 2)
	MARGIN_H=$(
			for i in `seq 1 $HEIGHT`; do
				echo " "
			done
		)
}

function tschernobyl() {
_margin_width 156
_margin_height 11
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
_margin_height 11
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
_margin_height 11
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
_margin_height 11
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
_margin_height 11
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

function print_strings() {
	case ${1} in
		0)
			TAG="tschernobyl"
			;;
		1)
			TAG="harrisburg"
			;;
		2)
			TAG="sellafield"
			;;
		3)
			TAG="hiroshima"
			;;
		4)
			TAG="fukushima"
			;;
	esac

	F=${FW}
	B=${BB}
	${TAG}
	${SLEEP} 1.78 > /dev/null
	clear
	for ((i = 0;i < 12; i++)); do
		F=${FB}
		B=${BW}
		${TAG}
		${SLEEP} 0.076 > /dev/null
		clear

		F=${FW}
		B=${BB}
		${TAG}
		${SLEEP} 0.076 > /dev/null
		clear
	done
}

clear
trap 'clear; tput cnorm; exit 1' SIGINT
tput civis

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
