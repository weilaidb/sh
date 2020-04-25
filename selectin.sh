#!/bin/sh
#function:

echo "What is your favourite OS?"
select name in "Linux" "Windows" "Mac OS" "UNIX" "Android" "WeilaiOS"
do
    echo $name
	echo "You have selected $name"
done
echo "Done"




