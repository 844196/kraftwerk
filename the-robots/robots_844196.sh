#!/bin/bash
#
#   Author:
#       844196 (@84____)
#
#   License
#       MIT
#

clear

LAST=0
R="$(tput smso)$(tput setaf 1)  $(tput sgr 0)$(tput rmso)"
W="$(tput smso)$(tput setaf 7)  $(tput sgr 0)$(tput rmso)"
if $(which sleepenh >/dev/null 2>&1); then SLEEP='sleepenh'; else SLEEP='sleep'; fi

COLS=$(tput cols)
_margin_width() {
    WIDTH=$(expr \( $COLS - $1 \) / 2)
    MARGIN_W=$(for i in `seq 1 $WIDTH`; do printf " "; done)
}
LINES=$(tput lines)
_margin_height() {
    HEIGHT=$(expr \( $LINES - 13 \) / 2)
    MARGIN_H=$(for i in `seq 1 $HEIGHT`; do echo " "; done)
}; _margin_height

function WE() {
_margin_width 28
echo "
${MARGIN_H}
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}$W$W      $W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W
${MARGIN_W}$W$W  $W  $W$W  $W$W$W$W$W$W
${MARGIN_W}$W$W  $W  $W$W  $W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W
${MARGIN_W}$W$W$W  $W$W$W  $W$W
${MARGIN_W}$W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}$W          $W  $W$W$W$W$W$W$W
"
$SLEEP 0.6; clear
}

function ARE() {
_margin_width 46
echo "
${MARGIN_H}
${MARGIN_W}    $W$W$W      $W$W$W$W$W      $W$W$W$W$W$W$W
${MARGIN_W}  $W$W$W$W$W    $W$W$W$W$W$W    $W$W$W$W$W$W$W
${MARGIN_W}$W$W      $W$W  $W$W    $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W    $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W    $W$W    $W$W$W$W$W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W$W$W$W$W    $W$W$W$W$W$W
${MARGIN_W}$W$W$W$W$W$W$W  $W$W$W$W$W      $W$W
${MARGIN_W}$W$W      $W$W  $W$W  $W$W      $W$W
${MARGIN_W}$W$W      $W$W  $W$W    $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W    $W$W    $W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}$W$W      $W$W  $W$W      $W$W  $W$W$W$W$W$W$W
"
$SLEEP 0.2; clear
}

function THE() {
_margin_width 44
echo "
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W$W  $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}$W$W$W$W$W$W  $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W$W$W$W$W
${MARGIN_W}    $W$W      $W$W$W$W$W$W$W  $W$W$W$W$W$W
${MARGIN_W}    $W$W      $W$W$W$W$W$W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}    $W$W      $W$W      $W$W  $W$W$W$W$W$W$W
"
$SLEEP 0.2; clear
}

function chikachika() {
_margin_width 81
ROBOTS="
${MARGIN_H}
${MARGIN_W}$A$A$A$A$A       $B$B$B$B    $C$C$C$C$C      $D$D$D$D   $E$E$E$E$E$E   $F$F$F$F$F
${MARGIN_W}$A$A$A$A$A$A   $B$B$B$B$B$B  $C$C$C$C$C$C  $D$D$D$D$D$D $E$E$E$E$E$E $F$F$F$F$F$F
${MARGIN_W}$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E     $F$F        
${MARGIN_W}$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E     $F$F        
${MARGIN_W}$A$A    $A$A   $B$B    $B$B  $C$C$C$C$C$C  $D$D    $D$D     $E$E     $F$F$F      
${MARGIN_W}$A$A$A$A$A$A   $B$B    $B$B  $C$C$C$C$C    $D$D    $D$D     $E$E       $F$F$F    
${MARGIN_W}$A$A$A$A$A     $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E         $F$F$F  
${MARGIN_W}$A$A  $A$A     $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E           $F$F$F
${MARGIN_W}$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E             $F$F
${MARGIN_W}$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E             $F$F
${MARGIN_W}$A$A      $A$A $B$B$B$B$B$B  $C$C$C$C$C$C  $D$D$D$D$D$D     $E$E     $F$F$F$F$F$F
${MARGIN_W}$A$A      $A$A   $B$B$B$B    $C$C$C$C$C      $D$D$D$D       $E$E     $F$F$F$F$F  
"
echo "$ROBOTS"
}

ROBOTS() {
    for i in $(seq 1 2); do
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$W"; chikachika; $SLEEP 0.13; clear;
    done
    if [ "$LAST" = '1' ]; then
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.07; clear;
    else
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$W"; chikachika; $SLEEP 0.13; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.07; clear;
    fi
}

trap 'tput cnorm; exit 1' SIGINT
tput civis

for i in $(seq 1 3); do
    WE; ARE; THE; ROBOTS;
done
LAST=1
WE; ARE; THE; ROBOTS;

tput cnorm
