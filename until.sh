#!/bin/sh
#function:


i=1
sum=0
until ((i > 100))
do
    ((sum += i))
    ((i++))
done
echo "The sum is: $sum"




