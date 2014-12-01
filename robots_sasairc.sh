#!/bin/bash
#
#   Author:
#       sasairc (@sasairc_2)
#
#   License
#       MIT
#

LAST=0
R="$(tput smso)$(tput setaf 1)  $(tput rmso)"
W="$(tput smso)$(tput setaf 7)  $(tput rmso)"
COLS=$(tput cols)
LINES=$(tput lines)

if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

function _margin_width() {
	WIDTH=$(expr \( $COLS - $1 \) / 2)
	MARGIN_W=$(
			for i in `seq 1 $WIDTH`; do
				echo -n " "
			done
		)
}

function _margin_height() {
	HEIGHT=$(expr \( $LINES - 13 \) / 2)
	MARGIN_H=$(
			for i in `seq 1 $HEIGHT`; do
				echo " "
			done
		)
}

WE() {
_margin_width 30
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
$SLEEP 0.5; clear
}

ARE() {
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

THE() {
_margin_width 46
echo "
${MARGIN_H}
${MARGIN_W} $W$W$W$W$W$W   $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W} $W$W$W$W$W$W   $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W$W$W$W$W
${MARGIN_W}     $W$W       $W$W$W$W$W$W$W  $W$W$W$W$W$W
${MARGIN_W}     $W$W       $W$W$W$W$W$W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W$W$W$W$W$W
${MARGIN_W}     $W$W       $W$W      $W$W  $W$W$W$W$W$W$W
"
$SLEEP 0.2; clear
}

chikachika_first() {
_margin_width 81
echo "
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$W$W$W$W$W$W   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$W$W$W$W$W$W   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$W$W$W$W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$W$W  $W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$W$W      $W$W $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$W$W      $W$W   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $W$W$W$W    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $W$W    $W$W  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $W$W$W$W    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $W$W$W$W$W      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W$W$W$W$W  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $W$W$W$W$W    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $W$W$W$W$W      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $W$W$W$W   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $W$W    $W$W     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $W$W    $W$W     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $W$W$W$W       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $W$W$W$W$W$W   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $W$W$W$W$W$W $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $W$W     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $W$W       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $W$W     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $W$W     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $W$W$W$W$W
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $W$W$W$W$W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $W$W$W      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $W$W$W    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $W$W$W  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $W$W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $W$W$W$W$W$W
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $W$W$W$W$W  
"
}

robots_allred(){
_margin_width 81
$SLEEP 0.15; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"
tput sgr 0
}

chikachika_second() {
_margin_width 81
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $W$W$W$W$W
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $W$W$W$W$W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $W$W$W      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $W$W$W    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $W$W$W  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $W$W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $W$W$W$W$W$W
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $W$W$W$W$W  
"

clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $W$W$W$W$W$W   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $W$W$W$W$W$W $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $W$W     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $W$W       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $W$W     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $W$W     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $W$W$W$W   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $W$W    $W$W     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $W$W    $W$W     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $W$W$W$W       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $W$W$W$W$W      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W$W$W$W$W  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $W$W$W$W$W    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $W$W$W$W$W      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $W$W$W$W    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $W$W    $W$W  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $W$W$W$W    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
${MARGIN_H}
${MARGIN_W}$W$W$W$W$W       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$W$W$W$W$W$W   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$W$W$W$W$W$W   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$W$W$W$W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$W$W  $W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$W$W      $W$W $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$W$W      $W$W   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
${MARGIN_H}
${MARGIN_W}$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
${MARGIN_W}$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
${MARGIN_W}$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
${MARGIN_W}$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
${MARGIN_W}$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
${MARGIN_W}$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
${MARGIN_W}$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"
tput sgr 0
}

ROBOTS() {
    for ((i = 0; i < 3; i++)); do
        if [ $LAST -eq 1 -a $i -eq 2 ]; then
            chikachika_second; robots_allred; $SLEEP 0.07 1>&2 /dev/null; clear
        else 
       	    chikachika_first; robots_allred; $SLEEP 0.07 1>&2 /dev/null; clear
        fi
    done
}

_margin_height
trap 'clear; tput cnorm;exit 1' SIGINT
tput civis

clear
for ((j = 0; j < 3; j++)); do
    WE; ARE; THE; ROBOTS;
done
LAST=1
WE; ARE; THE; ROBOTS;

tput cnorm
exit 0;
