#!/bin/sh
#function:


i=1
sum=0
while ((i <= 100))
do
    ((sum += i))
    ((i++))
done
echo "The sum is: $sum"



read m
read n
sum=0
while ((m <= n))
do
    ((sum += m))
    ((m++))
done
echo "The sum is: $sum"



sum=0
echo "请输入您要计算的数字，按 Ctrl+D 组合键结束读取"
while read n
do
    ((sum += n))
done
echo "The sum is: $sum"




