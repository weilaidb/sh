#!/bin/sh
#function:


read tel
if [[ $tel =~ ^1[0-9]{10}$ ]]
then
    echo "你输入的是手机号码"
else
    echo "你输入的不是手机号码"
fi


