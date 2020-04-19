#!/bin/sh
#function:


#在 Shell 中，用括号( )来表示数组，数组元素之间用空格来分隔。由此，定义数组的一般形式为：
#array_name=(ele1  ele2  ele3 ... elen)
#
#注意，赋值号=两边不能有空格，必须紧挨着数组名和数组元素。



nums=(29 100 13 8 91 44)
#Shell 是弱类型的，它并不要求所有数组元素的类型必须相同，例如：

arr=(20 56 "http://c.biancheng.net/shell/")

#获取数组元素
#获取数组元素的值，一般使用下面的格式：
#${array_name[index]}
#
#其中，array_name 是数组名，index 是下标。

n=${nums[2]}
echo $n

echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}


#使用@或*可以获取数组中的所有元素
echo ${arr[*]}
echo ${arr[@]}


nums=(29 100 13 8 91 44)
echo ${nums[@]}  #输出所有数组元素
nums[10]=66  #给第10个元素赋值（此时会增加数组长度）
echo ${nums[*]}  #输出所有数组元素
echo ${nums[4]}  #输出第4个元素



