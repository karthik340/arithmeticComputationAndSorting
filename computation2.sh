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


arithmetic $a "*" $b
result=$?
arithmetic $result "+" $c
result2=$?
