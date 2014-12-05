#!/bin/bash
#
#   @(#) 中央フリーウェイ
#
#   Author:
#       844196 (@84____)
#
#   License:
#       MIT
#


# Variable and Function
function _CursorInvisible() {
    trap "tput cnorm;" EXIT
    trap "tput cnorm; exit 1" SIGINT
    tput civis
}

background="\033[48;5;32m\033[38;5;32m..\033[m"
PALETTE_a="48;5;254m \033[m"
PALETTE_N="48;5;32m \033[m"
PALETTE_Z="m\n"
read X Y <<< `tput cols; tput lines`
xp=$[(X-68)/2]; yp=$[(Y-44)/2]
j=0; k=0

AUTOBAHN="NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaNNNNaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaNNNNaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaNNNNaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaNNNNaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaNNNNaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaNNNNaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaaNNNNaaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaaNNNNaaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaaaNNNNaaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNZNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaNZNNNNNNNNNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNNNNNNNNNZNNNNNNNNNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNNNNNNNNNZNNNNNNNNNNNNaaaaaaNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNaaaaaNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaNNNNaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaNNNNaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaNNNNaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaNNNNaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaNNNNaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaNNNNaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaNNNNaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaNNNNaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaNNNNaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNNZNNNNNNNNNNNNNNaaaaaaaaaaaaaaaaaaNNNNaaaaaaaaaaaaaaaaaaNNNNNNNNNNNNNNZ"

# CursorInvisible
_CursorInvisible; clear

# Print Background
for i in `seq 1 $[X*Y]`; do
    printf "%b" $background
done

# Print Autobahn
for i in {0..3105}; do
    p=${AUTOBAHN:$i:1}
    echo -en "\033[$[j+yp];$[k+xp]H\033[$(eval 'echo $PALETTE_'$p)"
    if [ $k -le 68 ]; then
        k=$[++k]
    else
        k=1
    fi
    if [ "$p" = "Z" ]; then
        : j=$[j++]
    fi
done

# Sleep and End
sleep 3; clear
