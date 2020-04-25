#!/bin/sh
#function:


sum=0
for ((i=1; i<=100; i++))
do
    ((sum += i))
done
echo "The sum is: $sum"


sum=0
i=1
for ((; i<=100; i++))
do
    ((sum += i))
done
echo "The sum is: $sum"





sum=0
for ((i=1; ; i++))
do
    if(( i>100 )); then
        break
    fi
    ((sum += i))
done
echo "The sum is: $sum"


sum=0
for ((i=1; i<=100; ))
do
    ((sum += i))
    ((i++))
done
echo "The sum is: $sum"



sum=0
i=0
for (( ; ; ))
do
     if(( i>100 )); then
        break
    fi
    ((sum += i))
    ((i++))
done
echo "The sum is: $sum"


sum=0
for n in 1 2 3 4 5 6
do
    echo $n
     ((sum+=n))
done
echo "The sum is "$sum
