#!/bin/bash
#
#   @(#) 今すぐやめろ
#
#   Author:
#       844196 (@84____)
#
#   License:
#       MIT
#


# library
function _CursorInvisible() {
    trap "tput cnorm;" EXIT
    trap "tput cnorm; exit 1" SIGINT
    tput civis
}

function _Sleep() {
    local t="${@}"
    if $(which sleepenh >/dev/null 2>&1); then
        local sleep='sleepenh'
    else
        local sleep='sleep'
    fi
    ${sleep} ${t} >/dev/null
}

function _MarginHeight() {
    local height=$(tput lines)
    local m=$(expr \( ${height} - ${1} \) / 2)
    for i in $(seq 1 ${m}); do
        echo " "
    done
}

function _MarginWidth() {
    local cols=$(tput cols)
    local w=$(expr \( ${cols} - ${1} \) / 2)
    MARGIN_W=$(for i in `seq 1 ${w}`; do printf " "; done)
}


# charactor set
W="$(tput smso)$(tput setaf 7)  $(tput sgr 0)$(tput rmso)"
N="  "

function NIHONDEMO() {
_MarginHeight 14; _MarginWidth 92
local NIHONDEMO="
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N      $W$W$W$N$N$N$N$N$N$N    $W
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N      $W$W$W$N$N$N$N$N$N$N    $W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N$W$W$W$W$W$W$W$N$N$N$N$N$N$N$W$W$W  $W  $N$N$N$N$N$N$N$W$W$W$W$W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N$W$W$W$W$W$W$W$N$N$N$N$N$N$N$W$W$W  $W  $N$N$N$N$N$N$N$W$W$W$W$W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N      $W  $W$N$N$N$N$N$N$N  $W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N      $W  $W$N$N$N$N$N$N$N  $W
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N    $W$W$W    $N$N$N$N$N$N$N    $W      $N$N$N$N$N$N$N$W$W$W$W$W
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N    $W$W$W    $N$N$N$N$N$N$N    $W      $N$N$N$N$N$N$N$W$W$W$W$W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N  $W  $W  $W  $N$N$N$N$N$N$N    $W      $N$N$N$N$N$N$N  $W      $W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N  $W  $W  $W  $N$N$N$N$N$N$N    $W      $N$N$N$N$N$N$N  $W      $W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N$W  $W$W$W  $W$N$N$N$N$N$N$N      $W    $N$N$N$N$N$N$N  $W      $W
${MARGIN_W}$W        $W$N$N$N$N$N$N$N$W  $W$W$W  $W$N$N$N$N$N$N$N      $W    $N$N$N$N$N$N$N  $W      $W
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N        $W$W$N$N$N$N$N$N$N    $W$W$W
${MARGIN_W}$W$W$W$W$W$W$N$N$N$N$N$N$N      $W      $N$N$N$N$N$N$N        $W$W$N$N$N$N$N$N$N    $W$W$W
"
echo "${NIHONDEMO}"
}

function HOUSYANOU() {
_MarginHeight 14; _MarginWidth 70
local HOUSYANOU="
${MARGIN_W}    $W    $W  $N$N$N$N$N$N$N    $W      $W$N$N$N$N$N$N$N    $W    $W
${MARGIN_W}    $W    $W  $N$N$N$N$N$N$N    $W      $W$N$N$N$N$N$N$N    $W    $W
${MARGIN_W}$W$W$W$W  $W$W$N$N$N$N$N$N$N  $W$W$W$W$W$W$N$N$N$N$N$N$N  $W  $W  $W$W
${MARGIN_W}$W$W$W$W  $W$W$N$N$N$N$N$N$N  $W$W$W$W$W$W$N$N$N$N$N$N$N  $W  $W  $W$W
${MARGIN_W}  $W    $W  $W$N$N$N$N$N$N$N  $W  $W    $W$N$N$N$N$N$N$N$W$W$W$W  $W
${MARGIN_W}  $W    $W  $W$N$N$N$N$N$N$N  $W  $W    $W$N$N$N$N$N$N$N$W$W$W$W  $W
${MARGIN_W}  $W$W$W$W  $W$N$N$N$N$N$N$N  $W$W$W$W  $W$N$N$N$N$N$N$N  $W$W$W  $W$W
${MARGIN_W}  $W$W$W$W  $W$N$N$N$N$N$N$N  $W$W$W$W  $W$N$N$N$N$N$N$N  $W$W$W  $W$W
${MARGIN_W}  $W  $W$W  $W$N$N$N$N$N$N$N$W$W  $W  $W$W$N$N$N$N$N$N$N  $W  $W  $W$W
${MARGIN_W}  $W  $W$W  $W$N$N$N$N$N$N$N$W$W  $W  $W$W$N$N$N$N$N$N$N  $W  $W  $W$W
${MARGIN_W}  $W  $W  $W  $N$N$N$N$N$N$N    $W$W    $W$N$N$N$N$N$N$N  $W$W$W  $W
${MARGIN_W}  $W  $W  $W  $N$N$N$N$N$N$N    $W$W    $W$N$N$N$N$N$N$N  $W$W$W  $W
${MARGIN_W}$W  $W$W$W  $W$N$N$N$N$N$N$N$W$W  $W  $W$W$N$N$N$N$N$N$N  $W  $W  $W$W
${MARGIN_W}$W  $W$W$W  $W$N$N$N$N$N$N$N$W$W  $W  $W$W$N$N$N$N$N$N$N  $W  $W  $W$W
"
echo "${HOUSYANOU}"
}


# main
clear; _CursorInvisible;
NIHONDEMO; _Sleep 1.8; clear;
HOUSYANOU; _Sleep 1.8; clear
