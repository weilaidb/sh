#!/bin/sh
echo "====show argv list"

showargvlist()
{
echo "参数个数为: $#"
x=1
until [ $# -eq 0 ]
do
printf "第%3d个参数为: $1\n"  ${x}
shift
((x=x+1))
done

}

showargvlist $*



