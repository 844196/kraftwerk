#!/bin/bash

clear

LAST=0
R="$(tput smso)$(tput setaf 1)  $(tput sgr 0)$(tput rmso)"
W="$(tput smso)$(tput setaf 7)  $(tput sgr 0)$(tput rmso)"
if $(which sleepenh >/dev/null 2>&1); then SLEEP='sleepenh'; else SLEEP='sleep'; fi

function WE() {
echo "
                            $W$W      $W$W  $W$W$W$W$W$W$W
                            $W$W      $W$W  $W$W$W$W$W$W$W
                            $W$W      $W$W  $W$W
                            $W$W      $W$W  $W$W
                            $W$W      $W$W  $W$W$W$W$W$W
                            $W$W  $W  $W$W  $W$W$W$W$W$W
                            $W$W  $W  $W$W  $W$W
                            $W$W$W$W$W$W$W  $W$W
                            $W$W$W$W$W$W$W  $W$W
                            $W$W$W  $W$W$W  $W$W
                            $W$W      $W$W  $W$W$W$W$W$W$W
                            $W          $W  $W$W$W$W$W$W$W"
$SLEEP 0.5; clear
}

function ARE() {
echo "
                        $W$W$W      $W$W$W$W$W      $W$W$W$W$W$W$W
                      $W$W$W$W$W    $W$W$W$W$W$W    $W$W$W$W$W$W$W
                    $W$W      $W$W  $W$W    $W$W    $W$W
                    $W$W      $W$W  $W$W    $W$W    $W$W
                    $W$W      $W$W  $W$W    $W$W    $W$W$W$W$W$W
                    $W$W$W$W$W$W$W  $W$W$W$W$W$W    $W$W$W$W$W$W
                    $W$W$W$W$W$W$W  $W$W$W$W$W      $W$W
                    $W$W      $W$W  $W$W  $W$W      $W$W
                    $W$W      $W$W  $W$W    $W$W    $W$W
                    $W$W      $W$W  $W$W    $W$W    $W$W
                    $W$W      $W$W  $W$W      $W$W  $W$W$W$W$W$W$W
                    $W$W      $W$W  $W$W      $W$W  $W$W$W$W$W$W$W
"
$SLEEP 0.2; clear
}

function THE() {
echo "
                     $W$W$W$W$W$W  $W$W      $W$W  $W$W$W$W$W$W$W
                     $W$W$W$W$W$W  $W$W      $W$W  $W$W$W$W$W$W$W
                         $W$W      $W$W      $W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W$W$W$W$W
                         $W$W      $W$W$W$W$W$W$W  $W$W$W$W$W$W
                         $W$W      $W$W$W$W$W$W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W
                         $W$W      $W$W      $W$W  $W$W$W$W$W$W$W
                         $W$W      $W$W      $W$W  $W$W$W$W$W$W$W
"
$SLEEP 0.2; clear
}

function chikachika() {
ROBOTS="
$A$A$A$A$A       $B$B$B$B    $C$C$C$C$C      $D$D$D$D   $E$E$E$E$E$E   $F$F$F$F$F
$A$A$A$A$A$A   $B$B$B$B$B$B  $C$C$C$C$C$C  $D$D$D$D$D$D $E$E$E$E$E$E $F$F$F$F$F$F
$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E     $F$F        
$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E     $F$F        
$A$A    $A$A   $B$B    $B$B  $C$C$C$C$C$C  $D$D    $D$D     $E$E     $F$F$F      
$A$A$A$A$A$A   $B$B    $B$B  $C$C$C$C$C    $D$D    $D$D     $E$E       $F$F$F    
$A$A$A$A$A     $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E         $F$F$F  
$A$A  $A$A     $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E           $F$F$F
$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E             $F$F
$A$A    $A$A   $B$B    $B$B  $C$C    $C$C  $D$D    $D$D     $E$E             $F$F
$A$A      $A$A $B$B$B$B$B$B  $C$C$C$C$C$C  $D$D$D$D$D$D     $E$E     $F$F$F$F$F$F
$A$A      $A$A   $B$B$B$B    $C$C$C$C$C      $D$D$D$D       $E$E     $F$F$F$F$F  
"
echo "$ROBOTS"
}

ROBOTS() {
    for i in $(seq 1 2); do
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$W"; chikachika; $SLEEP 0.14; clear;
    done
    if [ "$LAST" = '1' ]; then
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.07; clear;
    else
        A="$W"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$W"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$W"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$W"; E="$R"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$W"; F="$R"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$W"; chikachika; $SLEEP 0.14; clear;
        A="$R"; B="$R"; C="$R"; D="$R"; E="$R"; F="$R"; chikachika; $SLEEP 0.07; clear;
    fi
}

for i in $(seq 1 3); do
    WE; ARE; THE; ROBOTS;
done
LAST=1
WE; ARE; THE; ROBOTS;