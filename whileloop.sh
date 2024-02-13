#!/bin/bash

echo "how many iterations needed ? "
read n 

while [ $n -gt 0 ]
do
echo "hi - $n"
n=$(($n-1))
done
