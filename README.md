# sh
shell script for linux <br/>
using www <br/>
test [[]] http://c.biancheng.net/view/2751.html<br/>
shell数学计算 http://c.biancheng.net/view/1164.html<br/>

那么怎么把sh改为指向bash呢？<br/>
最暴力的方法当然是直接把/bin/sh的软链接改到bash中，<br/>
如：ln -s /bin/bash /bin/sh<br/>
但是，有优雅一些的方法,<br/>
sudo dpkg-reconfigure dash<br/>
出现菜单问你是否要dash的时候，选no就可以了。<br/>
再次检查一下， ls /bin/sh -al 发现软链接指向/bin/bash就可以了。 <br/>



还记得系统变量 $PATH 吗？$PATH 变量包含的目录中几乎聚集了系统中绝大多数的可执行命令，它们都是外部命令。</br>
</br>
通常来说，内建命令会比外部命令执行得更快，执行外部命令时不但会触发磁盘 I/O，还需要 fork 出一个单独的进程来执行，执行完成后再退出。而执行内建命令相当于调用当前 Shell 进程的一个函数。</br>
</br>
下表列出了 Bash Shell 中直接可用的内建命令。</br>
</br>
Bash Shell 内建命令</br>
命令	说明</br>
:	扩展参数列表，执行重定向操作</br>
.	读取并执行指定文件中的命令（在当前 shell 环境中）</br>
alias	为指定命令定义一个别名</br>
bg	将作业以后台模式运行</br>
bind	将键盘序列绑定到一个 readline 函数或宏</br>
break	退出 for、while、select 或 until 循环</br>
builtin	执行指定的 shell 内建命令</br>
caller	返回活动子函数调用的上下文</br>
cd	将当前目录切换为指定的目录</br>
command	执行指定的命令，无需进行通常的 shell 查找</br>
compgen	为指定单词生成可能的补全匹配</br>
complete	显示指定的单词是如何补全的</br>
compopt	修改指定单词的补全选项</br>
continue	继续执行 for、while、select 或 until 循环的下一次迭代</br>
declare	声明一个变量或变量类型。</br>
dirs	显示当前存储目录的列表</br>
disown	从进程作业表中刪除指定的作业</br>
echo	将指定字符串输出到 STDOUT</br>
enable	启用或禁用指定的内建shell命令</br>
eval	将指定的参数拼接成一个命令，然后执行该命令</br>
exec	用指定命令替换 shell 进程</br>
exit	强制 shell 以指定的退出状态码退出</br>
export	设置子 shell 进程可用的变量</br>
fc	从历史记录中选择命令列表</br>
fg	将作业以前台模式运行</br>
getopts	分析指定的位置参数</br>
hash	查找并记住指定命令的全路径名</br>
help	显示帮助文件</br>
history	显示命令历史记录</br>
jobs	列出活动作业</br>
kill	向指定的进程 ID(PID) 发送一个系统信号</br>
let	计算一个数学表达式中的每个参数</br>
local	在函数中创建一个作用域受限的变量</br>
logout	退出登录 shell</br>
mapfile	从 STDIN 读取数据行，并将其加入索引数组</br>
popd	从目录栈中删除记录</br>
printf	使用格式化字符串显示文本</br>
pushd	向目录栈添加一个目录</br>
pwd	显示当前工作目录的路径名</br>
read	从 STDIN 读取一行数据并将其赋给一个变量</br>
readarray	从 STDIN 读取数据行并将其放入索引数组</br>
readonly	从 STDIN 读取一行数据并将其赋给一个不可修改的变量</br>
return	强制函数以某个值退出，这个值可以被调用脚本提取</br>
set	设置并显示环境变量的值和 shell 属性</br>
shift	将位置参数依次向下降一个位置</br>
shopt	打开/关闭控制 shell 可选行为的变量值</br>
source	读取并执行指定文件中的命令（在当前 shell 环境中）</br>
suspend	暂停 Shell 的执行，直到收到一个 SIGCONT 信号</br>
test	基于指定条件返回退出状态码 0 或 1</br>
times	显示累计的用户和系统时间</br>
trap	如果收到了指定的系统信号，执行指定的命令</br>
type	显示指定的单词如果作为命令将会如何被解释</br>
typeset	声明一个变量或变量类型。</br>
ulimit	为系统用户设置指定的资源的上限</br>
umask	为新建的文件和目录设置默认权限</br>
unalias	刪除指定的别名</br>
unset	刪除指定的环境变量或 shell 属性</br>
wait	等待指定的进程完成，并返回退出状态码</br>
接下来的几节我们将重点讲解几个常用的 Shell 内置命令。</br>
