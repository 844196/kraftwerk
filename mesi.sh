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
function MACHINE1() {
_MarginHeight 48; _MarginWidth 126;
local MACHINE1="
${MARGIN_W}                                                            $M7M  $M7M      $M7        $M7$M7    $M7  $M7    $M7$M7$M7    $M7$M7      $M7$M7$M7
${MARGIN_W}                                                            $M7M$M7M$M7M    $M7  $M7    $M7        $M7  $M7      $M7      $M7  $M7    $M7
${MARGIN_W}                                                            $M7M$M7M$M7M    $M7  $M7    $M7        $M7  $M7      $M7      $M7  $M7    $M7$M7
${MARGIN_W}                                                            $M7M  $M7M    $M7$M7$M7    $M7        $M7$M7$M7      $M7      $M7  $M7    $M7
${MARGIN_W}                                                            $M7M  $M7M    $M7  $M7    $M7        $M7  $M7      $M7      $M7  $M7    $M7
${MARGIN_W}                                                            $M7M  $M7M    $M7  $M7      $M7$M7    $M7  $M7    $M7$M7$M7    $M7  $M7    $M7$M7$M7
${MARGIN_W}
${MARGIN_W}                                                  $M6  $M6      $M6A        $M6$M6    $M6  $M6    $M6$M6$M6    $M6$M6      $M6$M6$M6
${MARGIN_W}                                                  $M6$M6$M6    $M6A  $M6A    $M6        $M6  $M6      $M6      $M6  $M6    $M6
${MARGIN_W}                                                  $M6$M6$M6    $M6A  $M6A    $M6        $M6  $M6      $M6      $M6  $M6    $M6$M6
${MARGIN_W}                                                  $M6  $M6    $M6A$M6A$M6A    $M6        $M6$M6$M6      $M6      $M6  $M6    $M6
${MARGIN_W}                                                  $M6  $M6    $M6A  $M6A    $M6        $M6  $M6      $M6      $M6  $M6    $M6
${MARGIN_W}                                                  $M6  $M6    $M6A  $M6A      $M6$M6    $M6  $M6    $M6$M6$M6    $M6  $M6    $M6$M6$M6
${MARGIN_W}
${MARGIN_W}                                        $M5  $M5      $M5        $M5C$M5C    $M5  $M5    $M5$M5$M5    $M5$M5      $M5$M5$M5
${MARGIN_W}                                        $M5$M5$M5    $M5  $M5    $M5C        $M5  $M5      $M5      $M5  $M5    $M5
${MARGIN_W}                                        $M5$M5$M5    $M5  $M5    $M5C        $M5  $M5      $M5      $M5  $M5    $M5$M5
${MARGIN_W}                                        $M5  $M5    $M5$M5$M5    $M5C        $M5$M5$M5      $M5      $M5  $M5    $M5
${MARGIN_W}                                        $M5  $M5    $M5  $M5    $M5C        $M5  $M5      $M5      $M5  $M5    $M5
${MARGIN_W}                                        $M5  $M5    $M5  $M5      $M5C$M5C    $M5  $M5    $M5$M5$M5    $M5  $M5    $M5$M5$M5
${MARGIN_W}
${MARGIN_W}                              $M4  $M4      $M4        $M4$M4    $M4H  $M4H    $M4$M4$M4    $M4$M4      $M4$M4$M4
${MARGIN_W}                              $M4$M4$M4    $M4  $M4    $M4        $M4H  $M4H      $M4      $M4  $M4    $M4
${MARGIN_W}                              $M4$M4$M4    $M4  $M4    $M4        $M4H  $M4H      $M4      $M4  $M4    $M4$M4
${MARGIN_W}                              $M4  $M4    $M4$M4$M4    $M4        $M4H$M4H$M4H      $M4      $M4  $M4    $M4
${MARGIN_W}                              $M4  $M4    $M4  $M4    $M4        $M4H  $M4H      $M4      $M4  $M4    $M4
${MARGIN_W}                              $M4  $M4    $M4  $M4      $M4$M4    $M4H  $M4H    $M4$M4$M4    $M4  $M4    $M4$M4$M4
${MARGIN_W}
${MARGIN_W}                    $M3  $M3      $M3        $M3$M3    $M3  $M3    $M3I$M3I$M3I    $M3$M3      $M3$M3$M3
${MARGIN_W}                    $M3$M3$M3    $M3  $M3    $M3        $M3  $M3      $M3I      $M3  $M3    $M3
${MARGIN_W}                    $M3$M3$M3    $M3  $M3    $M3        $M3  $M3      $M3I      $M3  $M3    $M3$M3
${MARGIN_W}                    $M3  $M3    $M3$M3$M3    $M3        $M3$M3$M3      $M3I      $M3  $M3    $M3
${MARGIN_W}                    $M3  $M3    $M3  $M3    $M3        $M3  $M3      $M3I      $M3  $M3    $M3
${MARGIN_W}                    $M3  $M3    $M3  $M3      $M3$M3    $M3  $M3    $M3I$M3I$M3I    $M3  $M3    $M3$M3$M3
${MARGIN_W}
${MARGIN_W}          $M2  $M2      $M2        $M2$M2    $M2  $M2    $M2$M2$M2    $M2N$M2N      $M2$M2$M2
${MARGIN_W}          $M2$M2$M2    $M2  $M2    $M2        $M2  $M2      $M2      $M2N  $M2N    $M2
${MARGIN_W}          $M2$M2$M2    $M2  $M2    $M2        $M2  $M2      $M2      $M2N  $M2N    $M2$M2
${MARGIN_W}          $M2  $M2    $M2$M2$M2    $M2        $M2$M2$M2      $M2      $M2N  $M2N    $M2
${MARGIN_W}          $M2  $M2    $M2  $M2    $M2        $M2  $M2      $M2      $M2N  $M2N    $M2
${MARGIN_W}          $M2  $M2    $M2  $M2      $M2$M2    $M2  $M2    $M2$M2$M2    $M2N  $M2N    $M2$M2$M2
${MARGIN_W}
${MARGIN_W}$M1  $M1      $M1        $M1$M1    $M1  $M1    $M1$M1$M1    $M1$M1      $M1E$M1E$M1E
${MARGIN_W}$M1$M1$M1    $M1  $M1    $M1        $M1  $M1      $M1      $M1  $M1    $M1E
${MARGIN_W}$M1$M1$M1    $M1  $M1    $M1        $M1  $M1      $M1      $M1  $M1    $M1E$M1E
${MARGIN_W}$M1  $M1    $M1$M1$M1    $M1        $M1$M1$M1      $M1      $M1  $M1    $M1E
${MARGIN_W}$M1  $M1    $M1  $M1    $M1        $M1  $M1      $M1      $M1  $M1    $M1E
${MARGIN_W}$M1  $M1    $M1  $M1      $M1$M1    $M1  $M1    $M1$M1$M1    $M1  $M1    $M1E$M1E$M1E
"
echo "${MACHINE1}"
}

function kaidan() {
    M1=${N}; M1E=${N};
    M2=${N}; M2N=${N};
    M3=${N}; M3I=${N};
    M4=${N}; M4H=${N};
    M5=${N}; M5C=${N};
    M6=${N}; M6A=${N};
    M7=${N}; M7M=${N}; 

    M1=${W}; M1E=${W}; MACHINE1; _Sleep 0.6; clear;
    M2=${W}; M2N=${W}; MACHINE1; _Sleep 0.6; clear;
    M3=${W}; M3I=${W}; MACHINE1; _Sleep 0.6; clear;
    M4=${W}; M4H=${W}; MACHINE1; _Sleep 0.6; clear;
    M5=${W}; M5C=${W}; MACHINE1; _Sleep 0.6; clear;
    M6=${W}; M6A=${W}; MACHINE1; _Sleep 0.6; clear;
    M7=${W}; M7M=${W}; MACHINE1; _Sleep 0.6; clear;

    M7M=${R}; MACHINE1; _Sleep 0.1; clear;
    M6A=${R}; MACHINE1; _Sleep 0.1; clear;
    M5C=${R}; MACHINE1; _Sleep 0.1; clear;
    M4H=${R}; MACHINE1; _Sleep 0.1; clear;
    M3I=${R}; MACHINE1; _Sleep 0.1; clear;
    M2N=${R}; MACHINE1; _Sleep 0.1; clear;
    M1E=${R}; MACHINE1; _Sleep 1.0; clear;
}

function MACHINE2() {
_MarginHeight 22; _MarginWidth 94;
local MACHINE2="
${MARGIN_W}$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5$OU5
${MARGIN_W}$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4$OU4
${MARGIN_W}$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3$OU3
${MARGIN_W}$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2$OU2
${MARGIN_W}$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1$OU1
${MARGIN_W}$CU6$CU6$CUN6$CUN6$CUN6$CU6$CU6$CUN6$CUN6$CUN6$CU6$CU6$CU6$CUN6$CUN6$CUN6$CUN6$CU6$CU6$CU6$CU6$CUN6$CUN6$CUN6$CU6$CU6$CUN6$CUN6$CU6$CU6$CUN6$CU6$CU6$CUN6$CU6$CU6$CUN6$CUN6$CUN6$CU6$CU6$CUN6$CU6$CU6$CU6$CU6$CU6
${MARGIN_W}$CU5$CU5$CUN5$CUN5$CUN5$CU5$CU5$CUN5$CUN5$CU5$CU5$CU5$CU5$CUN5$CUN5$CUN5$CU5$CU5$CU5$CU5$CU5$CU5$CUN5$CUN5$CU5$CU5$CUN5$CUN5$CU5$CU5$CUN5$CU5$CU5$CUN5$CU5$CU5$CUN5$CUN5$CUN5$CU5$CU5$CUN5$CU5$CU5$CU5$CU5$CU5
${MARGIN_W}$CU4$CU4$CU4$CUN4$CU4$CU4$CU4$CUN4$CU4$CU4$CUN4$CUN4$CUN4$CU4$CU4$CUN4$CU4$CU4$CUN4$CUN4$CU4$CU4$CUN4$CUN4$CU4$CU4$CUN4$CUN4$CU4$CU4$CUN4$CU4$CU4$CUN4$CU4$CU4$CU4$CUN4$CUN4$CU4$CU4$CUN4$CU4$CU4$CUN4$CUN4$CUN4
${MARGIN_W}$CU3$CU3$CU3$CUN3$CU3$CU3$CU3$CUN3$CU3$CU3$CUN3$CUN3$CUN3$CU3$CU3$CUN3$CU3$CU3$CUN3$CUN3$CU3$CU3$CUN3$CUN3$CU3$CU3$CUN3$CUN3$CU3$CU3$CUN3$CU3$CU3$CUN3$CU3$CU3$CU3$CUN3$CUN3$CU3$CU3$CUN3$CU3$CU3$CUN3$CUN3$CUN3
${MARGIN_W}$CU2$CU2$CU2$CU2$CUN2$CU2$CU2$CUN2$CU2$CU2$CUN2$CUN2$CUN2$CU2$CU2$CUN2$CU2$CU2$CUN2$CUN2$CUN2$CUN2$CUN2$CUN2$CU2$CU2$CUN2$CU2$CU2$CU2$CUN2$CU2$CU2$CUN2$CU2$CU2$CU2$CU2$CUN2$CU2$CU2$CUN2$CU2$CU2$CU2$CU2$CU2
${MARGIN_W}$CU1$CU1$CUN1$CU1$CUN1$CU1$CU1$CUN1$CU1$CU1$CUN1$CUN1$CUN1$CU1$CU1$CUN1$CU1$CU1$CUN1$CUN1$CUN1$CUN1$CUN1$CUN1$CU1$CU1$CUN1$CU1$CU1$CU1$CUN1$CU1$CU1$CUN1$CU1$CU1$CU1$CU1$CUN1$CU1$CU1$CUN1$CU1$CU1$CU1$CU1$CU1
${MARGIN_W}$CD1$CD1$CDN1$CD1$CDN1$CD1$CD1$CDN1$CD1$CD1$CD1$CD1$CD1$CD1$CD1$CDN1$CD1$CD1$CDN1$CDN1$CDN1$CDN1$CDN1$CDN1$CD1$CD1$CDN1$CDN1$CD1$CD1$CDN1$CD1$CD1$CDN1$CD1$CD1$CD1$CD1$CDN1$CD1$CD1$CDN1$CD1$CD1$CDN1$CDN1$CDN1
${MARGIN_W}$CD2$CD2$CDN2$CDN2$CDN2$CD2$CD2$CDN2$CD2$CD2$CD2$CD2$CD2$CD2$CD2$CDN2$CD2$CD2$CDN2$CDN2$CDN2$CDN2$CDN2$CDN2$CD2$CD2$CDN2$CDN2$CD2$CD2$CDN2$CD2$CD2$CDN2$CD2$CD2$CDN2$CD2$CDN2$CD2$CD2$CDN2$CD2$CD2$CDN2$CDN2$CDN2
${MARGIN_W}$CD3$CD3$CDN3$CDN3$CDN3$CD3$CD3$CDN3$CD3$CD3$CDN3$CDN3$CDN3$CD3$CD3$CDN3$CD3$CD3$CDN3$CDN3$CD3$CD3$CDN3$CDN3$CD3$CD3$CDN3$CDN3$CD3$CD3$CDN3$CD3$CD3$CDN3$CD3$CD3$CDN3$CD3$CDN3$CD3$CD3$CDN3$CD3$CD3$CDN3$CDN3$CDN3
${MARGIN_W}$CD4$CD4$CDN4$CDN4$CDN4$CD4$CD4$CDN4$CD4$CD4$CDN4$CDN4$CDN4$CD4$CD4$CDN4$CD4$CD4$CDN4$CDN4$CD4$CD4$CDN4$CDN4$CD4$CD4$CDN4$CDN4$CD4$CD4$CDN4$CD4$CD4$CDN4$CD4$CD4$CDN4$CDN4$CDN4$CD4$CD4$CDN4$CD4$CD4$CDN4$CDN4$CDN4
${MARGIN_W}$CD5$CD5$CDN5$CDN5$CDN5$CD5$CD5$CDN5$CD5$CD5$CDN5$CDN5$CDN5$CD5$CD5$CDN5$CD5$CD5$CD5$CD5$CD5$CD5$CDN5$CDN5$CD5$CD5$CDN5$CDN5$CD5$CD5$CDN5$CD5$CD5$CDN5$CD5$CD5$CDN5$CDN5$CDN5$CD5$CD5$CDN5$CD5$CD5$CDN5$CD5$CD5
${MARGIN_W}$CD6$CD6$CDN6$CDN6$CDN6$CD6$CD6$CDN6$CD6$CD6$CDN6$CDN6$CDN6$CD6$CD6$CDN6$CDN6$CD6$CD6$CD6$CD6$CDN6$CDN6$CDN6$CD6$CD6$CDN6$CDN6$CD6$CD6$CDN6$CD6$CD6$CDN6$CD6$CD6$CDN6$CDN6$CDN6$CD6$CD6$CDN6$CD6$CD6$CDN6$CD6$CD6
${MARGIN_W}$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1$OD1
${MARGIN_W}$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2$OD2
${MARGIN_W}$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3$OD3
${MARGIN_W}$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4$OD4
${MARGIN_W}$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5$OD5
"
echo "${MACHINE2}"
}

function obi() {
    OU1=${R}; OU2=${R}; OU3=${R}; OU4=${R}; OU5=${R};
    OD1=${R}; OD2=${R}; OD3=${R}; OD4=${R}; OD5=${R};

    CU1=${R}; CU2=${R}; CU3=${R}; CU4=${R}; CU5=${R}; CU6=${R};
    CD1=${R}; CD2=${R}; CD3=${R}; CD4=${R}; CD5=${R}; CD6=${R};
    CUN1=${R}; CUN2=${R}; CUN3=${R}; CUN4=${R}; CUN5=${R}; CUN6=${R};
    CDN1=${R}; CDN2=${R}; CDN3=${R}; CDN4=${R}; CDN5=${R}; CDN6=${R};

    OU1=${N}; OD1=${N}; MACHINE2; _Sleep 0.1; clear;
    CUN6=${N}; CUN5=${N}; CDN6=${N}; CDN5=${N}; CU6=${W}; CU5=${W}; CD6=${W}; CD5=${W}; MACHINE2; _Sleep 0.1; clear;
    OU5=${N}; OD5=${N}; CUN4=${N}; CUN3=${N}; CUN2=${N}; CDN4=${N}; CDN3=${N}; CDN2=${N}; CU4=${W}; CU3=${W}; CU2=${W}; CD4=${W}; CD3=${W}; CD2=${W}; MACHINE2; _Sleep 0.1; clear;
    OU4=${N}; OD4=${N}; MACHINE2; _Sleep 0.1; clear;
    OU3=${N}; OD3=${N}; CUN1=${N}; CDN1=${N}; CU1=${W}; CD1=${W}; MACHINE2; _Sleep 2.2; clear;
}

# main
clear; _CursorInvisible;
kaidan; _Sleep 0.3;
obi;
