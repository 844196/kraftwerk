#!/bin/bash

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

chikachika() {
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

$SLEEP 0.1; clear
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

$SLEEP 0.1; clear
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

$SLEEP 0.1; clear
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

$SLEEP 0.1; clear
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

$SLEEP 0.1; clear
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

$SLEEP 0.1; clear
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
    for i in 吊 吊 吊 吊; do
        chikachika; $SLEEP 0.1; clear
    done
    chikachika
}

WE; ARE; THE; ROBOTS;