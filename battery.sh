#!/bin/bash

R="\033[0;41m  \033[m"
W="\033[0;47m  \033[m"
if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

function were() {
echo -e "
                        $R$R      $R$R   $R$R$R$R$R$R$E  $R$R           $R$R$R$R$R      $R$R$R$R$R$R$R
                        $R$R      $R$R   $R$R$R$R$R$R$R  $R$R           $R$R$R$R$R$R    $R$R$R$R$R$R$R
                        $R$R      $R$R   $R$R            $R$R           $R$R    $R$R    $R$R
                        $R$R      $R$R   $R$R            $R$R           $R$R    $R$R    $R$R
                        $R$R      $R$R   $R$R$R$R$R$R    $R$R           $R$R    $R$R    $R$R$R$R$R$R
                        $R$R  $R  $R$R   $R$R$R$R$R$R    $R$R           $R$R$R$R$R$R    $R$R$R$R$R$R
                        $R$R  $R  $R$R   $R$R                           $R$R$R$R        $R$R
                        $R$R$R$R$R$R$R   $R$R                           $R$R  $R$R      $R$R
                        $R$R$R$R$R$R$R   $R$R                           $R$R    $R$R    $R$R
                        $R$R$R  $R$R$R   $R$R                           $R$R    $R$R    $R$R
                        $R$R      $R$R   $R$R$R$R$R$R$R                 $R$R      $R$R  $R$R$R$R$R$R$R
                        $R          $R   $R$R$R$R$R$R$R                 $R$R      $R$R  $R$R$R$R$R$R$R
"
}

function charging() {
echo -e "
  $R$R$R$R$R    $R$R    $R$R        $R$R$R      $R$R$R$R$R        $R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R$R
$R$R$R$R$R$R$R  $R$R    $R$R      $R$R$R$R$R    $R$R$R$R$R$R    $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
$R$R      $R$R  $R$R    $R$R    $R$R      $R$R  $R$R    $R$R    $R$R                 $R$R        $R$R$R  $R$R   $R$R
$R$R      $R$R  $R$R    $R$R    $R$R      $R$R  $R$R    $R$R    $R$R  $R$R$R$R       $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
$R$R            $R$R$R$R$R$R    $R$R      $R$R  $R$R    $R$R    $R$R  $R$R$R$R       $R$R        $R$R$R  $R$R   $R$R  $R$R$R$R
$R$R            $R$R$R$R$R$R    $R$R      $R$R  $R$R$R$R$R$R    $R$R      $R$R       $R$R        $R$R$R$R$R$R   $R$R      $R$R
$R$R            $R$R    $R$R    $R$R$R$R$R$R$R  $R$R$R$R        $R$R      $R$R       $R$R        $R$R$R$R$R$R   $R$R      $R$R
$R$R            $R$R    $R$R    $R$R$R$R$R$R$R  $R$R  $R$R      $R$R      $R$R       $R$R        $R$R  $R$R$R   $R$R      $R$R
$R$R      $R$R  $R$R    $R$R    $R$R      $R$R  $R$R    $R$R    $R$R      $R$R       $R$R        $R$R  $R$R$R   $R$R      $R$R
$R$R      $R$R  $R$R    $R$R    $R$R      $R$R  $R$R    $R$R    $R$R      $R$R       $R$R        $R$R    $R$R   $R$R      $R$R
$R$R$R$R$R$R$R  $R$R    $R$R    $R$R      $R$R  $R$R      $R$R  $R$R$R$R$R$R$R   $R$R$R$R$R$R    $R$R    $R$R   $R$R$R$R$R$R$R
  $R$R$R$R$R    $R$R    $R$R    $R$R      $R$R  $R$R      $R$R    $R$R$R$R$R     $R$R$R$R$R$R    $R$R    $R$R     $R$R$R$R$R
"
}

function our() {
echo -e "
                                            $R$R$R$R     $R$R      $R$R  $R$R$R$R$R
                                          $R$R$R$R$R$R   $R$R      $R$R  $R$R$R$R$R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R$R$R$R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R$R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R  $R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
                                          $R$R    $R$R   $R$R      $R$R  $R$R    $R$R
                                          $R$R$R$R$R$R   $R$R$R$R$R$R$R  $R$R      $R$R
                                            $R$R$R$R       $R$R$R$R$R    $R$R      $R$R
"
}

function battery() {
echo -e "
           $W$W$W$W$W          $W$W$W      $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W$W$W$W  $W$W$W$W$W     $W$W    $W$W
           $W$W$W$W$W$W      $W$W$W$W$W    $W$W$W$W$W$W  $W$W$W$W$W$W  $W$W$W$W$W$W$W  $W$W$W$W$W$W   $W$W    $W$W
           $W$W    $W$W    $W$W      $W$W      $W$W          $W$W      $W$W            $W$W    $W$W   $W$W    $W$W
           $W$W    $W$W    $W$W      $W$W      $W$W          $W$W      $W$W            $W$W    $W$W   $W$W    $W$W
           $W$W$W$W$W$W    $W$W      $W$W      $W$W          $W$W      $W$W$W$W$W$W    $W$W    $W$W     $W$W$W$W
           $W$W$W$W$W      $W$W      $W$W      $W$W          $W$W      $W$W$W$W$W$W    $W$W$W$W$W$W     $W$W$W$W
           $W$W    $W$W    $W$W$W$W$W$W$W      $W$W          $W$W      $W$W            $W$W$W$W           $W$W
           $W$W    $W$W    $W$W$W$W$W$W$W      $W$W          $W$W      $W$W            $W$W  $W$W         $W$W
           $W$W    $W$W    $W$W      $W$W      $W$W          $W$W      $W$W            $W$W    $W$W       $W$W
           $W$W    $W$W    $W$W      $W$W      $W$W          $W$W      $W$W            $W$W    $W$W       $W$W
           $W$W$W$W$W$W    $W$W      $W$W      $W$W          $W$W      $W$W$W$W$W$W$W  $W$W      $W$W     $W$W
           $W$W$W$W$W      $W$W      $W$W      $W$W          $W$W      $W$W$W$W$W$W$W  $W$W      $W$W     $W$W
"
}


function print_battery() {
	battery
	${SLEEP} 0.8
	clear
	for ((i = 0; i < 4; i++)); do
		battery
		${SLEEP} 0.13 > /dev/null
		clear
		${SLEEP} 0.13 > /dev/null
	done
	for ((i = 0; i < 12; i++)); do
		battery
		${SLEEP} 0.02 > /dev/null
		clear
		${SLEEP} 0.02 > /dev/null
	done
	return;
}

tput civis # Macだと "tput vi" かも

clear
were; ${SLEEP} 0.1 > /dev/null; clear
charging; ${SLEEP}  0.58 > /dev/null; clear
our; ${SLEEP} 0.34 > /dev/null; clear
print_battery

tput cnorm # Macだと "tput vs" かも

exit 0;