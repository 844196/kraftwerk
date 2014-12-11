#!/bin/bash
#
#   Author:
#       844196 (@84____)
#
#   License
#       MIT
#


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
    local m=$[(${height}-${1})/2]
    for i in $(seq 1 ${m})
    do
        echo " "
    done
}

function _MarginWidth() {
    local cols=$(tput cols)
    local w=$[(${cols}-${1})/2]
    MARGIN_W=$(
        for i in $(seq 1 ${w})
        do
            printf " "
        done
    )
}

readonly green_a="\033[48;5;40m  \033[m"
readonly green_b="\033[48;5;46m  \033[m"
readonly white="\033[48;5;255m  \033[m"
readonly grey="\033[48;5;250m  \033[m"

function ONE() {
_MarginHeight 16; _MarginWidth 108;
local ONE="
          $A$A$A$A$A$A                  $A$A$A$A$A$A$A$A$A$A$A$A$A          $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A
          $A$B$B$B$B$A                $A$A$B$B$B$B$B$B$B$B$B$B$B$A$A$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A
  $A$A$A$A$A$B$B$B$B$A                $A$B$B$A$A$A$A$A$A$A$A$A$B$B$B$A      $A$A$A$A$A$A$A$A$A$B$B$B$B$A$A$A
  $A$B$B$B$B$B$B$B$B$A                $A$B$B$A              $A$B$B$B$A                      $A$B$B$B$B$A
  $A$A$A$A$A$B$B$B$B$A                $A$A$A$A              $A$B$B$B$A                      $A$B$B$B$B$A
          $A$B$B$B$B$A                                      $A$B$A$A$A                      $A$B$A$A$A$A
          $A$B$B$B$B$A                                $A$A$A$A$B$A                    $A$A$A$A$B$A
          $A$B$B$B$B$A                                $A$B$B$B$B$A                    $A$B$B$B$B$A
          $A$B$B$B$B$A                          $A$A$A$A$B$A$A$A$A                    $A$A$A$A$B$A$A$A$A
          $A$B$B$B$B$A                          $A$B$B$B$B$A                                $A$B$B$B$B$A
          $A$B$B$B$B$A                      $A$A$A$B$A$A$A$A                                $A$A$A$A$B$A
          $A$B$B$B$B$A                      $A$B$B$B$A                      $A$A$A$A$A            $A$B$A$A$A
          $A$B$B$B$B$A                      $A$B$B$B$A                      $A$B$B$B$A            $A$B$B$B$A
$A$A$A$A$A$A$B$B$B$B$A$A$A$A$A$A      $A$A$A$A$B$B$B$A$A$A$A$A$A$A$A$A      $A$B$B$B$A$A$A$A$A$A$A$A$B$B$B$A
$A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$B$B$B$B$B$B$B$B$B$B$B$B$B$B$A      $A$A$A$B$B$B$B$B$B$B$B$B$B$A$A$A
$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A      $A$A$A$A$A$A$A$A$A$A$A$A$A$A$A$A          $A$A$A$A$A$A$A$A$A$A$A$A
"
echo -e "${ONE}"
}

_CursorInvisible;
#A=${green_a}; B=${green_b}; ONE
#A=${grey}; B=${white}; ONE
