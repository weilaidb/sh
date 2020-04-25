#!/bin/sh
#function:

# case、in 和 esac 都是 Shell 关键字，expression 表示表达式，pattern 表示匹配模式。
# expression 既可以是一个变量、一个数字、一个字符串，还可以是一个数学计算表达式，或者是命令的执行结果，只要能够得到 expression 的值就可以。
# pattern 可以是一个数字、一个字符串，甚至是一个简单的正则表达式。

# case 会将 expression  的值与 pattern1、pattern2、pattern3 逐个进行匹配：
# 如果 expression 和某个模式（比如 pattern2）匹配成功，就会执行这模式（比如 pattern2）后面对应的所有语句（该语句可以有一条，也可以有多条），直到遇见双分号;;才停止；然后整个 case 语句就执行完了，程序会跳出整个 case 语句，执行 esac 后面的其它语句。
# 如果 expression 没有匹配到任何一个模式，那么就执行*)后面的语句（*表示其它所有值），直到遇见双分号;;或者esac才结束。*)相当于多个 if 分支语句中最后的 else 部分。
# 如果你有C语言、C++、Java 等编程经验，这里的;;和*)就相当于其它编程语言中的 break 和 default。


printf "Input integer number: "
read num
case $num in
    1)
        echo "Monday"
        ;;
    2)
        echo "Tuesday"
        ;;
    3)
        echo "Wednesday"
        ;;
    4)
        echo "Thursday"
        ;;
    5)
        echo "Friday"
        ;;
    6)
        echo "Saturday"
        ;;
    7)
        echo "Sunday"
        ;;
    *)
        echo "error"
esac





printf "Input a character: "
read -n 1 char
case $char in
    [a-zA-Z])
        printf "\nletter\n"
        ;;
    [0-9])
        printf "\nDigit\n"
        ;;
    [0-9])
        printf "\nDigit\n"
        ;;
    [,.?!])
        printf "\nPunctuation\n"
        ;;
    *)
        printf "\nerror\n"
esac