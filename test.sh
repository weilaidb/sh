#!/bin/sh
#function:test 

reqnum=1
[ $# -lt ${reqnum} ] && echo "argv list size $#,./usage request argc num at leat ${reqnum}" && exit


ifelifelse()
{
	echo "please input age:"
	read age
	if test ${age} -le 2; then
		echo "婴儿"
	elif test ${age} -ge 3 && test ${age} -le 8; then
		echo "幼儿"
	elif [ ${age} -ge 9 ] && [ ${age} -le 17 ]; then
		echo "少年"
	elif [ ${age} -ge 18 ] && [ ${age} -le 25 ]; then
		echo "成年"
	elif test ${age} -ge 26 && test ${age} -le 40; then
		echo "青年"
	elif test ${age} -ge 41 && [ ${age} -le 60 ]; then
		echo "中年"
	else
		echo "老年"
	fi
}

ifelifelse

kuohao()
{
	echo "===zhongkuohao test, please input seperate two string"
	read str1
	read str2
	if [[ -z ${str1} ]] || [[ -z ${str2} ]]  #不需要对变量名加双引号
	then
	    echo "字符串不能为空"
	elif [[ ${str1} < ${str2} ]]  #不需要也不能对 < 进行转义
	then
	    echo "str1 < str2"
	else
	    echo "str1 >= str2"
	fi
}


kuohao

