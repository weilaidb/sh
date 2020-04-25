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


for str in "C语言中文网" "http://c.biancheng.net/" "成立7年了" "日IP数万"  "xiaopihai"
do
    echo $str
done



sum=0
for n in {1..100}
do
    ((sum+=n))
done
echo $sum



for c in {A..z}
do
    printf "%c" $c
done
echo 

for c in {0..9}
do
    printf "%c" $c
done


echo 




sum=0
for n in $(seq 2 2 100)  #seq 2 2 100表示从 2 开始，每次增加 2，到 100 结束
do
    ((sum+=n))
done
echo $sum



for filename in $(ls *.sh)
do
    echo $filename
done



for filename in *.sh
do
    echo $filename
done



function func(){
    for str in $@
    do
        echo $str
    done
}
func C++ Java Python C#



function func(){
    for str
    do
        echo $str
    done
}
func C++ Java Python C#













