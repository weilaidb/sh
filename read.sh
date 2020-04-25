#!/bin/sh
#function:


read -p "Enter some information > " name url age
echo "网站名字：$name"
echo "网址：$url"
echo "年龄：$age"

#-n 1表示只读取一个字符。运行脚本后，只要用户输入一个字符，立即读取结束，不用等待用户按下回车键。
read -n 1 -p "Enter a char > " char
printf "\n"  #换行
echo $char


#在指定时间内输入密码。
if
    read -t 20 -sp "Enter password in 20 seconds(once) > " pass1 && printf "\n" &&  #第一次输入密码
    read -t 20 -sp "Enter password in 20 seconds(again)> " pass2 && printf "\n" &&  #第二次输入密码
    [ $pass1 == $pass2 ]  #判断两次输入的密码是否相等
then
    echo "Valid password"
else
    echo "Invalid password"
fi

