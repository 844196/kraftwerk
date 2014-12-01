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
if $(which sleepenh >/dev/null 2>&1); then
    SLEEP='sleepenh'
else
    SLEEP='sleep'
fi

clear

WE() {
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
                            $W          $W  $W$W$W$W$W$W$W
"
$SLEEP 0.5; clear
}

ARE() {
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

THE() {
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

chikachika_first() {
echo "
$W$W$W$W$W       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$W$W$W$W$W$W   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$W$W    $W$W   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$W$W$W$W$W$W   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$W$W$W$W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$W$W  $W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$W$W      $W$W $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$W$W      $W$W   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $W$W$W$W    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $W$W    $W$W  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $W$W    $W$W  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $W$W$W$W    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $R$R$R$R    $W$W$W$W$W      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $W$W$W$W$W$W  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $W$W$W$W$W    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $W$W$W$W$W      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $W$W$W$W   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $W$W    $W$W     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $W$W    $W$W     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $W$W$W$W       $R$R     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $W$W$W$W$W$W   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $W$W$W$W$W$W $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $W$W     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $W$W       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $W$W     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $W$W     $R$R$R$R$R  
"

$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $W$W$W$W$W
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $W$W$W$W$W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $W$W$W      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $W$W$W    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $W$W$W  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $W$W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $W$W$W$W$W$W
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $W$W$W$W$W  
"
}

robots_allred(){
$SLEEP 0.15; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"
tput sgr 0
}

chikachika_second() {
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $W$W$W$W$W
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $W$W$W$W$W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $W$W        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $W$W$W      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $W$W$W    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $W$W$W  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $W$W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $W$W
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $W$W$W$W$W$W
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $W$W$W$W$W  
"

clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $W$W$W$W$W$W   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $W$W$W$W$W$W $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $W$W     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $W$W       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $W$W             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $W$W     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $W$W     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $W$W$W$W   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $W$W    $W$W     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $W$W    $W$W     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $W$W    $W$W     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $W$W$W$W$W$W     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $W$W$W$W       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
$R$R$R$R$R       $R$R$R$R    $W$W$W$W$W      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $W$W$W$W$W$W  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $W$W$W$W$W    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $W$W    $W$W  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $W$W$W$W$W$W  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $W$W$W$W$W      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
$R$R$R$R$R       $W$W$W$W    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $W$W    $W$W  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $W$W    $W$W  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $W$W    $W$W  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $W$W$W$W$W$W  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $W$W$W$W    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
$W$W$W$W$W       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$W$W$W$W$W$W   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$W$W    $W$W   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$W$W$W$W$W$W   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$W$W$W$W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$W$W  $W$W     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$W$W    $W$W   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$W$W      $W$W $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$W$W      $W$W   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"

$SLEEP 0.14; clear
echo "
$R$R$R$R$R       $R$R$R$R    $R$R$R$R$R      $R$R$R$R   $R$R$R$R$R$R   $R$R$R$R$R
$R$R$R$R$R$R   $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R $R$R$R$R$R$R $R$R$R$R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R     $R$R        
$R$R    $R$R   $R$R    $R$R  $R$R$R$R$R$R  $R$R    $R$R     $R$R     $R$R$R      
$R$R$R$R$R$R   $R$R    $R$R  $R$R$R$R$R    $R$R    $R$R     $R$R       $R$R$R    
$R$R$R$R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R         $R$R$R  
$R$R  $R$R     $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R           $R$R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R    $R$R   $R$R    $R$R  $R$R    $R$R  $R$R    $R$R     $R$R             $R$R
$R$R      $R$R $R$R$R$R$R$R  $R$R$R$R$R$R  $R$R$R$R$R$R     $R$R     $R$R$R$R$R$R
$R$R      $R$R   $R$R$R$R    $R$R$R$R$R      $R$R$R$R       $R$R     $R$R$R$R$R  
"
tput sgr 0
}

ROBOTS() {
    for ((i = 0; i < 3; i++)); do
        if [ $LAST -eq 1 -a $i -eq 2 ]; then
            chikachika_second; robots_allred; $SLEEP 0.07 > /dev/null; clear
        else 
       	    chikachika_first; robots_allred; $SLEEP 0.07 > /dev/null; clear
        fi
    done
}

trap 'clear; tput cnorm;exit 1' SIGINT
tput civis

for ((j = 0; j < 3; j++)); do
    WE; ARE; THE; ROBOTS;
done
LAST=1
WE; ARE; THE; ROBOTS;

tput cnorm
exit 0;
