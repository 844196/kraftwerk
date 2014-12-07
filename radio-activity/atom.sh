#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#
 
readonly E="\033[48;5;149m  \033[m"
readonly EB="\033[48;5;6m  \033[m"
readonly N="\033[48;5;1m  \033[m"
readonly YP="\033[48;5;163m  \033[m"
readonly YN="  "
Y=""   # Dynamic variable (a, b, c, d, e, f, g, h, m)

function _sleep() {
	if $(which sleepenh > /dev/null 2>&1); then
		SLEEP='sleepenh'
	elif $(which usleep > /dev/null 2>&1); then
		SLEEP='usleep'
	else
   		SLEEP='sleep'
	fi
	${SLEEP} ${1} > /dev/null
}

function _margin_width() {
	local cols=$(tput cols)
	local width=$(expr \( ${cols} - ${1} \) / 2)
	MARGIN_W=$(
			for i in `seq 1 ${width}`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	local lines=$(tput lines)
	local height=$(expr \( ${lines} - ${1} \) / 2)
	MARGIN_H=$(
			for i in `seq 1 ${height}`; do
				echo " "
			done
		)
}

function _initscr() {
	clear
	trap 'tput cnorm; exit 1' SIGINT
	trap 'tput cnorm; exit 0' EXIT
	tput civis
}

function _endscr() {
	clear
	tput cnorm
}

function atom() {
_margin_height 33
_margin_width 64
local ATOM="
${MARGIN_H}
${MARGIN_W}                $E$E$E                    $E$E$E                 
${MARGIN_W}              $E      $g                $d      $E               
${MARGIN_W}             $f        $E              $E        $e              
${MARGIN_W}             $E         $E            $E         $E              
${MARGIN_W}             $E           $E        $E           $E              
${MARGIN_W}             $E            $E      $E            $E              
${MARGIN_W}             $E             $h    $c             $E              
${MARGIN_W}              $E             $E  $E             $E               
${MARGIN_W}               $E             $E$E             $E                
${MARGIN_W}                $e             $E             $E                 
${MARGIN_W}                 $E          $E  $E          $f                  
${MARGIN_W}                  $E        $E    $E        $E                   
${MARGIN_W}             $E$E$E$E$E$E$E$E$E$a$E$E$E$E$E$E$E$E$b              
${MARGIN_W}       $E$E$E       $E    $E        $E    $E       $E$E$E        
${MARGIN_W}    $E$E             $E  $b   $Y$Y   $m  $E              $E$c    
${MARGIN_W}  $m                  $E$E  $Y$N$N$Y  $E$E                   $E  
${MARGIN_W}$E                     $E  $Y$N$N$N$Y  $E                      $E
${MARGIN_W}  $E                  $E$E  $Y$N$N$Y  $E$E                   $E  
${MARGIN_W}    $h$E             $E  $d   $Y$Y   $g  $E              $d$E    
${MARGIN_W}       $E$E$E       $E    $E        $E    $E       $E$E$E        
${MARGIN_W}             $g$E$E$E$E$E$E$E$E$f$E$E$E$E$E$E$E$e$E              
${MARGIN_W}                 $E         $E    $E         $E                  
${MARGIN_W}                $E           $E  $E           $E                 
${MARGIN_W}               $a              $E              $E                
${MARGIN_W}              $E              $E$E              $E               
${MARGIN_W}             $E              $E  $c               $E             
${MARGIN_W}            $E              $h    $E              $E             
${MARGIN_W}            $E             $E      $E             $E             
${MARGIN_W}            $E            $E        $E            $E             
${MARGIN_W}            $E          $E            $E          $E             
${MARGIN_W}            $E         $E              $b         $E             
${MARGIN_W}             $E      $m                  $E      $a              
${MARGIN_W}               $E$E$E                      $E$E$E                
"
echo -ne "${ATOM}"
}

function print_atom() {
	for ((i = 0; i < 4; i++)); do
		Y=$YP
		a=$EB; b=$E; c=$E; d=$E; e=$E; f=$E; g=$E; h=$E; m=$E;
		atom
		_sleep 0.1
		clear
		a=$E; b=$EB; c=$E; d=$E; e=$E; f=$E; g=$E; h=$E; m=$E;
		atom
		_sleep 0.1
		clear

		Y=$YN
		a=$E; b=$E; c=$EB; d=$E; e=$E; f=$E; g=$E; h=$E; m=$E;
		atom
		_sleep 0.1
		clear
		Y=$YP
		a=$E; b=$E; c=$E; d=$EB; e=$E; f=$E; g=$E; h=$E; m=$E;
		atom
		_sleep 0.1
		clear

		a=$E; b=$E; c=$E; d=$E; e=$EB; f=$E; g=$E; h=$E; m=$E
		atom
		_sleep 0.2
		clear

		Y=$YN
		a=$E; b=$E; c=$E; d=$E; e=$EB; f=$E; g=$E; h=$E; m=$E
		atom
		_sleep 0.1
		clear

		Y=$YP
		a=$E; b=$E; c=$E; d=$E; e=$E; f=$EB; g=$E; h=$E; m=$E
		atom
		_sleep 0.2
		clear
	
		a=$E; b=$E; c=$E; d=$E; e=$E; f=$E; g=$EB; h=$E; m=$E
		atom
		_sleep 0.2
		clear

		Y=$YN
		a=$E; b=$E; c=$E; d=$E; e=$E; f=$E; g=$E; h=$EB; m=$E
		atom
		_sleep 0.1
		clear

		Y=$YP
		a=$E; b=$E; c=$E; d=$E; e=$E; f=$E; g=$E; h=$E; m=$EB
		atom
		_sleep 0.1
		clear
	done

}


# main
_initscr

print_atom

_endscr
