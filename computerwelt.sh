#!/bin/bash
#
#   Author:
#       sasairc (@sasairc_2)
#
#   License
#       MIT
#

N="`tput smso`  `tput rmso`"
#SLEEP='sleepenh 0.1'
SLEEP='sleep 1'

function c()
{
	echo -e "\
    $N$N$N   
    $N$N$N   
  $N      $N 
  $N      $N 
  $N         
  $N         
  $N         
  $N         
  $N         
  $N         
  $N      $N 
  $N      $N 
    $N$N$N   
    $N$N$N   
	"
}

function co()
{
	echo -e "\
    $N$N$N      $N$N$N   
    $N$N$N      $N$N$N   
  $N      $N  $N      $N 
  $N      $N  $N      $N 
  $N          $N      $N 
  $N          $N      $N 
  $N          $N      $N 
  $N          $N      $N 
  $N          $N      $N 
  $N          $N      $N 
  $N      $N  $N      $N 
  $N      $N  $N      $N 
    $N$N$N      $N$N$N   
    $N$N$N      $N$N$N   
	"
}

function com()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N 
    $N$N$N      $N$N$N   $N      $N 
  $N      $N  $N      $N $N$N  $N$N 
  $N      $N  $N      $N $N$N  $N$N 
  $N          $N      $N $N  $N  $N 
  $N          $N      $N $N  $N  $N 
  $N          $N      $N $N  $N  $N 
  $N          $N      $N $N  $N  $N 
  $N          $N      $N $N      $N 
  $N          $N      $N $N      $N 
  $N      $N  $N      $N $N      $N 
  $N      $N  $N      $N $N      $N 
    $N$N$N      $N$N$N   $N      $N 
    $N$N$N      $N$N$N   $N      $N 
	"
}

function comp()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   
  $N      $N  $N      $N $N$N  $N$N $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   
  $N          $N      $N $N  $N  $N $N$N$N$N   
  $N          $N      $N $N      $N $N         
  $N          $N      $N $N      $N $N         
  $N      $N  $N      $N $N      $N $N         
  $N      $N  $N      $N $N      $N $N         
    $N$N$N      $N$N$N   $N      $N $N         
    $N$N$N      $N$N$N   $N      $N $N         
	"
}

function compu()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N 
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N 
  $N          $N      $N $N      $N $N         $N      $N 
  $N          $N      $N $N      $N $N         $N      $N 
  $N      $N  $N      $N $N      $N $N         $N      $N 
  $N      $N  $N      $N $N      $N $N         $N      $N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N   
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N   
	"
}

function comput()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     
  $N          $N      $N $N      $N $N         $N      $N     $N     
  $N          $N      $N $N      $N $N         $N      $N     $N     
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     
	"
}

function compute()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N 
	"
}

function computer()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N 
	"
}

function computerw()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N 
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N 
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N 
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N 
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N 
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N 
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N 
	"
}

function computerwe()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N 
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N 
	"
}

function computerwel()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N $N         
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N $N         
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N         
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N         
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N         
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   $N         
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   $N         
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         $N         
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         $N         
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         $N         
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N $N$N$N$N$N 
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N $N$N$N$N$N 
	"
}

function computerwelt()
{
	echo -e "\
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N $N         $N$N$N$N$N
    $N$N$N      $N$N$N   $N      $N $N$N$N$N   $N      $N $N$N$N$N$N $N$N$N$N$N $N$N$N$N   $N      $N $N$N$N$N$N $N         $N$N$N$N$N
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N             $N
  $N      $N  $N      $N $N$N  $N$N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N             $N
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N             $N
  $N          $N      $N $N  $N  $N $N      $N $N      $N     $N     $N         $N      $N $N      $N $N         $N             $N
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   $N             $N
  $N          $N      $N $N  $N  $N $N$N$N$N   $N      $N     $N     $N$N$N$N   $N$N$N$N   $N  $N  $N $N$N$N$N   $N             $N
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         $N             $N
  $N          $N      $N $N      $N $N         $N      $N     $N     $N         $N  $N     $N  $N  $N $N         $N             $N
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         $N             $N
  $N      $N  $N      $N $N      $N $N         $N      $N     $N     $N         $N    $N   $N$N  $N$N $N         $N             $N
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N $N$N$N$N$N     $N
    $N$N$N      $N$N$N   $N      $N $N           $N$N$N       $N     $N$N$N$N$N $N      $N $N      $N $N$N$N$N$N $N$N$N$N$N     $N
	"
}

clear
c
${SLEEP}
clear
co
${SLEEP}
clear
com
${SLEEP}
clear
comp
${SLEEP}
clear
compu
${SLEEP}
clear
comput
${SLEEP}
clear
compute
${SLEEP}
clear
computer
${SLEEP}
clear
computerw
${SLEEP}
clear
computerwe
${SLEEP}
clear
computerwel
${SLEEP}
clear
computerwelt
