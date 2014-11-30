#!/bin/bash

clear

LAST=0
if $(which sleepenh >/dev/null 2>&1); then SLEEP='sleepenh'; else SLEEP='sleep'; fi

COLS=$(tput cols)
_margin_width() {
    WIDTH=$(expr \( $COLS - $1 \) / 2)
    MARGIN_W=$(for i in `seq 1 $WIDTH`; do printf " "; done)
}
LINES=$(tput lines)
_margin_height() {
    HEIGHT=$(expr \( $LINES - 7 \) / 2)
    MARGIN_H=$(for i in `seq 1 $HEIGHT`; do echo " "; done)
}; _margin_height

function NORMAL() {
_margin_width 9
echo -n "
${MARGIN_H}
${MARGIN_W}  _(-)_  
${MARGIN_W} /\   /\ 
${MARGIN_W} | \ / | 
${MARGIN_W} o [ ] o 
${MARGIN_W}   | |   
${MARGIN_W}   | |   
${MARGIN_W} __|_|__ 
"
}

function UDEKUMI() {
_margin_width 9
echo -n "
${MARGIN_H}
${MARGIN_W}  _(-)_  
${MARGIN_W} /\   /\ 
${MARGIN_W}/---o/ | 
${MARGIN_W}   [ ] o 
${MARGIN_W}   | |   
${MARGIN_W}   | |   
${MARGIN_W} __|_|__ 
"
$SLEEP $1; clear

echo -n "
${MARGIN_H}
${MARGIN_W}  _(-)_  
${MARGIN_W} /\o---\ 
${MARGIN_W}/---o/   
${MARGIN_W}   [ ]   
${MARGIN_W}   | |   
${MARGIN_W}   | |   
${MARGIN_W} __|_|__ 
"
$SLEEP $2; clear
}

function BURUBURU() {
_margin_width 9
echo -n "
${MARGIN_H}
${MARGIN_W}  __(-)  
${MARGIN_W} /\   /\ 
${MARGIN_W}/  \ / | 
${MARGIN_W}o  [ ] o 
${MARGIN_W}   | |   
${MARGIN_W}   | |   
${MARGIN_W} __|_|__ 
"
$SLEEP 0.08; clear

echo -n "
${MARGIN_H}
${MARGIN_W}  (-)__   
${MARGIN_W} /\   /\  
${MARGIN_W} | \ /  \ 
${MARGIN_W} o [ ]  o 
${MARGIN_W}   | |    
${MARGIN_W}   | |    
${MARGIN_W} __|_|__  
"
$SLEEP 0.08; clear
}

function KAKUSU() {
_margin_width 9
echo -n "
${MARGIN_H}
${MARGIN_W}  _(o--- 
${MARGIN_W} /\   /  
${MARGIN_W}/---o/   
${MARGIN_W}   [ ]   
${MARGIN_W}   | |   
${MARGIN_W}   | |   
${MARGIN_W} __|_|__ 
"
$SLEEP 0.09; clear
}

trap 'tput cnorm; exit 1' SIGINT
tput civis

NORMAL; $SLEEP 0.6; clear
UDEKUMI 0.4 0.4; BURUBURU; BURUBURU;
NORMAL; $SLEEP 1.4; clear
UDEKUMI 0.1 0.1; KAKUSU; NORMAL; $SLEEP 0.7; clear

tput cnorm