#!/bin/bash


# 
# 1 - function definition - should be first before calling
# 2 - function call


fact(){      #argument will be special variables like $1 $2
valueofx=$1
if [ $valueofx -eq 0 -o $valueofx -eq 1 ]
    then
    return 1
else
    f=1
        while [ $valueofx -gt 0 ]
        do
        f=$(($valueofx*$f))
        valueofx=$(($valueofx-1))   #n--
        done
    return $fact
fi
}



echo -n "enter the number:"
read x
if [ $x -lt 0 ]
then
echo "no factorial for negative numbers"
else
fact $x    #functioncall
result=$?   #value returned by above function
echo "the factorial of $x is $result"
fi