#!/bin/bash
#
#    Author:
#        sasairc (@sasairc2)
#
#    License
#        MIT
#

readonly W="\033[48;5;255m  \033[m"
readonly R="\033[48;5;1m  \033[m"
readonly BR="\033[48;5;1m \033[m"
readonly N="  " # Space (12x9)
T=""	# Dynamic variable

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

function chain_reaction() {
_margin_width 174
_margin_height 9
local CHAIN_REACTION="
${MARGIN_H}
${MARGIN_W}  $a$a$a$a   $b        $b       $c       $d  $e        $e  $N$N$N$N$N$N  $f$f$f$f$f    $g$g$g$g$g$g       $h         $m$m$m$m    $n$n$n$n$n$n  $o    $q$q$q$q    $s        $s
${MARGIN_W}$a       $a  $b        $b       $c       $d  $e$e      $e  $N$N$N$N$N$N  $f        $f  $g                 $h       $m        $m       $n       $o  $p        $q  $s$s      $s
${MARGIN_W}$a           $b        $b     $c  $c     $d  $e$e      $e  $N$N$N$N$N$N  $f        $f  $g               $h  $h     $m                 $n       $o  $p        $q  $s$s      $s
${MARGIN_W}$a           $b        $b     $c  $c     $d  $e  $e    $e  $N$N$N$N$N$N  $f        $f  $g               $h  $h     $m                 $n       $o  $p        $q  $s  $s    $s
${MARGIN_W}$a           $b$b$b$b$b$b   $c      $c   $d  $e  $e    $e  $N$N$N$N$N$N  $f$f$f$f$f    $g$g$g$g$g$g   $h      $h   $m                 $n       $o  $p        $q  $s  $s    $s
${MARGIN_W}$a           $b        $b   $c      $c   $d  $e    $e  $e  $N$N$N$N$N$N  $f  $f        $g             $h      $h   $m                 $n       $o  $p        $p  $s    $s  $s
${MARGIN_W}$a           $b        $b  $c$c$c$c$c$c  $d  $e    $e  $e  $N$N$N$N$N$N  $f    $f      $g            $h$h$h$h$h$h  $m                 $n       $o  $p        $p  $s    $s  $s
${MARGIN_W}$a        $a $b        $b  $c        $c  $d  $e      $e$e  $N$N$N$N$N$N  $f      $f    $g            $h        $h  $m        $m       $n       $o  $p        $p  $s      $s$s
${MARGIN_W}  $a$a$a$a   $b        $b  $c        $c  $d  $e      $e$e  $N$N$N$N$N$N  $f        $f  $g$g$g$g$g$g  $h        $h    $m$m$m$m         $n       $o    $p$p$p$p    $s      $s$s
"
echo -ne "${CHAIN_REACTION}"
}

#
# :81, 91s /\$T/ /g　して読んで、どうぞ
#
function and_mutation() {
_margin_width 104
_margin_height 11
local MUTATION="
${MARGIN_H}
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$W$W$W$W$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$W$W$W$W$W$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$W$T$T$T$T$W$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$W$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$W$T$T$W$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$W$T$T$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$W$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$W$T$T$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$W$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$W$W$W$W$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$W$T$T$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$T$T$W$T$T$W$T$T$T$T$T$T$W$W$T$T
${MARGIN_W}$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$T$T$T$W$T$T$T$T$W$W$W$W$T$T$T$T$W$T$T$T$T$T$T$W$W$T$T
${MARGIN_W}$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T$T
"
echo -ne "${MUTATION}"
}

function print_chain_reaction() {
	a=$W; b=$W; c=$W; d=$W; e=$W
	f=$W; g=$W; h=$W; m=$W; n=$W; o=$W; p=$W; q=$W; s=$W

	for ((i = 0; i < 15; i++)); do
		test $i -eq 0 && a=$R
		test $i -eq 1 && b=$R
		test $i -eq 2 && c=$R
		test $i -eq 3 && d=$R
		test $i -eq 4 && e=$R
		test $i -eq 5
		test $i -eq 6 && f=$R
		test $i -eq 7 && g=$R
		test $i -eq 8 && h=$R
		test $i -eq 9 && m=$R
		test $i -eq 10 && n=$R
		test $i -eq 11 && o=$R
		test $i -eq 12 && p=$R
		test $i -eq 13 && q=$R
		test $i -eq 14 && s=$R
		chain_reaction
		_sleep 0.12
		clear
	done
}

function print_and_mutation() {
	for ((i = 0; i < 2; i++)); do
		T=${BR}
		and_mutation
		_sleep 0.228
		clear

		T=' '
		and_mutation
		_sleep 0.228
		clear
	done
	T=${BR}
	and_mutation
	_sleep 0.228
	clear
}	

# main
_initscr

print_chain_reaction
_sleep 0.18
print_and_mutation

_endscr
