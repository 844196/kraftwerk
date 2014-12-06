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
B="$(tput smso)$(tput setaf 0)  $(tput sgr 0)$(tput rmso)"
N="  "


# char set
function HALB() {
_MarginHeight 40; _MarginWidth 132;
local HALB="
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                      $R$R$R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R$R  $R$R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                        $R$R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R$R  $R$R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                          $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R$R  $R$R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R        $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R          $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R          $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R          $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R              $R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R              $R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R      $R$R$R
${MARGIN_W}$R$R        $R$R              $R$R$R$R$R$R$R$R              $R$R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                        $R$R$R
${MARGIN_W}$R$R        $R$R              $R$R$R$R$R$R$R                  $R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                        $R$R$R
${MARGIN_W}$R$R        $R$R              $R$R$R$R$R$R$R                  $R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R                        $R$R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R        $R$R      $R$R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R        $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R          $R$R        $R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R          $R$R        $R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R        $R$R$R$R      $R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R$R        $R$R$R$R      $R$R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R          $R$R$R$R        $R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R        $R$R$R$R$R$R      $R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R$R        $R$R$R            $R$R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R          $R$R                $R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R$R        $R$R$R                $R$R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R          $R$R                    $R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R$R      $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R          $R$R$R$R$R$R$R          $R$R$R        $R$R$R$R$R$R$R$R$R        $R$R$R$R$R        $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R$R          $R$R$R$R$R$R$R          $R$R$R                    $R$R$R                          $R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R          $R$R$R$R$R$R$R$R$R          $R$R                    $R$R$R                        $R$R$R
${MARGIN_W}$R$R        $R$R$R$R$R        $R$R          $R$R$R$R$R$R$R$R$R          $R$R                    $R$R$R                      $R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
"
echo "${HALB}"
}

function WESEN() {
_MarginHeight 40; _MarginWidth 132;
local WESEN="
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R      $R$R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R      $R$R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R      $R$R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R      $R$R$R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R              $R$R$R$R              $R$R$R$R                $R$R$R      $R$R$R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R              $R$R$R                  $R$R$R                $R$R$R      $R$R$R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R        $R$R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R        $R$R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R          $R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R          $R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R          $R$R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R$R      $R$R$R$R$R$R$R$R            $R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R      $R$R$R              $R$R$R$R$R      $R$R      $R$R$R            $R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R      $R$R$R                  $R$R$R      $R$R      $R$R$R      $R    $R$R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R      $R$R$R$R                $R$R$R      $R$R      $R$R$R      $R      $R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R      $R$R$R$R$R$R$R$R$R      $R$R$R      $R$R      $R$R$R      $R      $R      $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R            $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R            $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R          $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R$R$R$R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R          $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R          $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R$R        $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R$R        $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R      $R$R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R$R        $R
${MARGIN_W}$R      $R$R$R$R      $R$R$R$R      $R$R$R      $R$R$R$R$R$R$R        $R$R      $R$R$R      $R$R$R$R$R$R$R$R      $R$R$R$R$R      $R
${MARGIN_W}$R                                  $R$R$R              $R$R$R                  $R$R$R                $R$R$R      $R$R$R$R$R      $R
${MARGIN_W}$R                                  $R$R$R              $R$R$R$R              $R$R$R$R                $R$R$R      $R$R$R$R$R$R    $R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R$R
"
echo "${WESEN}"
}


# main
clear; _CursorInvisible;
HALB; _Sleep 0.4; clear;
WESEN
