#!/bin/bash -x

function arithmetic()
{
x=$1
operator="$2"
y=$3
case $operator in 
     "+")
     z=$(($x+$y))
     ;; 
     "*")
     z=$(($x*$y))
     ;; 
     "/")
     z=$(($x/$y))
     ;; 
     "%")
     z=$(($x%$y))
     ;; 
esac
return $z
}

read -p "enter value of a" a
read -p "enter value of b" b
read -p "enter value of c" c


arithmetic $b "*" $c
result=$?
arithmetic $result "+" $a
result1=$?


arithmetic $a "*" $b
result=$?
arithmetic $result "+" $c
result2=$?


arithmetic $a "/" $b
result=$?
arithmetic $result "+" $c
result3=$?


arithmetic $a "%" $b
result=$?
arithmetic $result "+" $c
result4=$?

declare -A storeResultsdict
counter=0
storeResultsdict[result1]=$result1
storeResultsdict[result2]=$result2
storeResultsdict[result3]=$result3
storeResultsdict[result4]=$result4

counter=0

storearray[((counter++))]=${storeResultsdict[result1]}
storearray[((counter++))]=${storeResultsdict[result2]}
storearray[((counter++))]=${storeResultsdict[result3]}
storearray[((counter++))]=${storeResultsdict[result4]}

