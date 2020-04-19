#!/bin/sh
#function:

#1) 从字符串左边开始计数
#如果想从字符串的左边开始计数，那么截取字符串的具体格式如下：
#${string: start :length}
#
#其中，string 是要截取的字符串，start 是起始位置（从左边开始，从 0 开始计数），length 是要截取的长度（省略的话表示直到字符串的末尾）。

url="c.biancheng.net"
echo ${url:2:9}


#2) 从右边开始计数
#如果想从字符串的右边开始计数，那么截取字符串的具体格式如下：
#${string: 0-start :length}
#
#同第 1) 种格式相比，第 2) 种格式仅仅多了0-，这是固定的写法，专门用来表示从字符串右边开始计数。
#
#这里需要强调两点：
#从左边开始计数时，起始数字是 0（这符合程序员思维）；从右边开始计数时，起始数字是 1（这符合常人思维）。计数方向不同，起始数字也不同。
#不管从哪边开始计数，截取方向都是从左到右。

echo ${url:0-13:9}




#从指定字符（子字符串）开始截取
#这种截取方式无法指定字符串长度，只能从指定字符（子字符串）截取到字符串末尾。Shell 可以截取指定字符（子字符串）右边的所有字符，也可以截取左边的所有字符。
#1) 使用 # 号截取右边字符
#使用#号可以截取指定字符（或者子字符串）右边的所有字符，具体格式如下：
#${string#*chars}
#
#其中，string 表示要截取的字符，chars 是指定的字符（或者子字符串），*是通配符的一种，表示任意长度的字符串。*chars连起来使用的意思是：忽略左边的所有字符，直到遇见 chars（chars 会被截取）。


url="http://c.biancheng.net/index.html"
echo ${url#*:}
echo ${url#*p:}
echo ${url#*ttp:}
echo ${url#*/}
echo ${url#*//}
echo ${url#*//c}

#如果不需要忽略 chars 左边的字符，那么也可以不写*，例如：
echo ${url#http://}


#注意，以上写法遇到第一个匹配的字符（子字符串）就结束了。
#如果希望直到最后一个指定字符（子字符串）再匹配结束，那么可以使用##，具体格式为：
#${string##*chars}

url="http://c.biancheng.net/index.html"
echo ${url#*/}    #结果为 /c.biancheng.net/index.html
echo ${url##*/}   #结果为 index.html
str="---aa+++aa@@@"
echo ${str#*aa}   #结果为 +++aa@@@
echo ${str##*aa}  #结果为 @@@



#2) 使用 % 截取左边字符
#使用%号可以截取指定字符（或者子字符串）左边的所有字符，具体格式如下：
#${string%chars*}
#请注意*的位置，因为要截取 chars 左边的字符，而忽略 chars 右边的字符，所以*应该位于 chars 的右侧。其他方面%和#的用法相同，这里不再赘述，仅举例说明：


url="http://c.biancheng.net/index.html"
echo ${url%/*}  #结果为 http://c.biancheng.net
echo ${url%%/*}  #结果为 http:
str="---aa+++aa@@@"
echo ${str%aa*}  #结果为 ---aa+++
echo ${str%%aa*}  #结果为 ---











