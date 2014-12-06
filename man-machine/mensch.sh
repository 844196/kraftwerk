#!/bin/bash
#
#   Author:
#       844196 (@84____)
#
#   License
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


# char color
R="$(tput smso)$(tput setaf 1)  $(tput sgr 0)$(tput rmso)"
W="$(tput smso)$(tput setaf 7)  $(tput sgr 0)$(tput rmso)"
N="  "


# char set
function MENSCH() {
_MarginHeight 12; _MarginWidth 82;
local MENSCH="
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
${MARGIN_W}
${MARGIN_W}  $W$W      $W$W  $W$W$W$W$W  $W$W      $W$W    $W$W$W      $W$W$W$W    $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W$W$W$W  $W$W      $W$W  $W$W$W$W$W  $W$W$W$W$W$W  $W$W    $W$W
${MARGIN_W}  $W$W$W  $W$W$W  $W$W        $W$W$W    $W$W  $W$W  $W$W  $W$W    $W$W  $W$W    $W$W
${MARGIN_W}  $W$W$W  $W$W$W  $W$W        $W$W$W    $W$W  $W$W        $W$W    $W$W  $W$W    $W$W
${MARGIN_W}  $W$W$W$W  $W$W  $W$W$W$W$W  $W$W$W$W  $W$W  $W$W        $W$W          $W$W  $W$W$W
${MARGIN_W}  $W$W  $W  $W$W  $W$W$W$W$W  $W$W$W$W  $W$W  $W$W$W      $W$W          $W$W  $W$W$W
${MARGIN_W}  $W$W  $W  $W$W  $W$W        $W$W$W$W  $W$W    $W$W$W$W  $W$W          $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W        $W$W  $W  $W$W        $W$W  $W$W          $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W        $W$W  $W  $W$W        $W$W  $W$W    $W$W  $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W        $W$W      $W$W  $W$W  $W$W  $W$W    $W$W  $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W  $W$W  $W$W      $W$W  $W$W$W$W$W  $W$W$W$W$W$W  $W$W    $W$W
${MARGIN_W}  $W$W      $W$W  $W$W  $W$W  $W$W      $W$W    $W$W$W      $W$W$W$W    $W$W    $W$W
${MARGIN_W}
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
"
echo "${MENSCH}"
}

function REFLECTION() {
    for i in {0..6};
    do
        T=${N}; MENSCH; _Sleep 0.1; clear;
        T=${R}; MENSCH; _Sleep 0.1; clear;
    done
}

# main
clear; _CursorInvisible;
REFLECTION
