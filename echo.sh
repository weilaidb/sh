#!/bin/sh
#function:

#echo 是一个 Shell 内建命令，用来在终端输出字符串，并在最后默认加上换行符。
#echo 命令输出结束后默认会换行，如果不希望换行，可以加上-n参数

name="Shell教程"
url="http://c.biancheng.net/shell/"
echo "读者，你好！"  #直接输出字符串
echo $url  #输出变量
echo "${name}的网址是：${url}"  #双引号包围的字符串中可以解析变量
echo '${name}的网址是：${url}'  #单引号包围的字符串中不能解析变量


name="Tom"
age=20
height=175
weight=62
echo -n "${name} is ${age} years old, "
echo -n "${height}cm in height "
echo "and ${weight}kg in weight."
echo "Thank you!"


#默认情况下，echo 不会解析以反斜杠\开头的转义字符。比如，\n表示换行，echo 默认会将它作为普通字符对待。
#可以添加-e参数来让 echo 命令解析转义字符
echo "hello \nworld"
echo -e "hello \nworld"
