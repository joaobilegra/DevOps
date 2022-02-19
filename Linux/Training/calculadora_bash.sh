#!/bin/bash
printf "enter the first number: "
read n1
printf "enter the second number: "
read n2
printf "enter with operation ->(+)sum, (-)subtraction, (x)multiplication, (/) division: "
read op
function sum(){
    s=$(($n1+$n2))
     echo "Result": $s
}
function sub(){
    sb=$(($n1-$n2))
      echo "Result": $sb
}
function multi(){
    m=$(($n1*$n2))
      echo "Result": $m
}
function div(){
    d=$(($n1 /$n2))
      echo "Result": $d
}

case $op in 
+)
  sum;;
  -)
    sub;;
     x)
        multi;;

          /)
             div;;

                  *)
esac





