#!/bin/sh
#function:
##?用来提示用户输入菜单编号；^D表示按下 Ctrl+D 组合键，它的作用是结束 select in 循环。


echo "What is your favourite OS?"
select name in "Linux" "Windows" "Mac OS" "UNIX" "Android" "WeilaiOS"
do
    echo $name
	# echo "You have selected $name"
done
echo "You have selected $name"
echo "Done"



