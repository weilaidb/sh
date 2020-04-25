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



下表列出了 Bash Shell 中直接可用的内建命令。<br />
<br />
<table>
<caption>
Bash Shell 内建命令</caption>
<tbody>
<tr>
<th>
命令</th>
<th>
说明</th>
</tr>
<tr>
<td>
:</td>
<td>
扩展参数列表，执行重定向操作</td>
</tr>
<tr>
<td>
.</td>
<td>
读取并执行指定文件中的命令（在当前 shell 环境中）</td>
</tr>
<tr>
<td>
alias</td>
<td>
为指定命令定义一个别名</td>
</tr>
<tr>
<td>
bg</td>
<td>
将作业以后台模式运行</td>
</tr>
<tr>
<td>
bind</td>
<td>
将键盘序列绑定到一个 readline 函数或宏</td>
</tr>
<tr>
<td>
break</td>
<td>
退出 for、while、select 或 until 循环</td>
</tr>
<tr>
<td>
builtin</td>
<td>
执行指定的 shell 内建命令</td>
</tr>
<tr>
<td>
caller</td>
<td>
返回活动子函数调用的上下文</td>
</tr>
<tr>
<td>
cd</td>
<td>
将当前目录切换为指定的目录</td>
</tr>
<tr>
<td>
command</td>
<td>
执行指定的命令，无需进行通常的 shell 查找</td>
</tr>
<tr>
<td>
compgen</td>
<td>
为指定单词生成可能的补全匹配</td>
</tr>
<tr>
<td>
complete</td>
<td>
显示指定的单词是如何补全的</td>
</tr>
<tr>
<td>
compopt</td>
<td>
修改指定单词的补全选项</td>
</tr>
<tr>
<td>
continue</td>
<td>
继续执行 for、while、select 或 until 循环的下一次迭代</td>
</tr>
<tr>
<td>
declare</td>
<td>
声明一个变量或变量类型。</td>
</tr>
<tr>
<td>
dirs</td>
<td>
显示当前存储目录的列表</td>
</tr>
<tr>
<td>
disown</td>
<td>
从进程作业表中刪除指定的作业</td>
</tr>
<tr>
<td>
echo</td>
<td>
将指定字符串输出到 STDOUT</td>
</tr>
<tr>
<td>
enable</td>
<td>
启用或禁用指定的内建shell命令</td>
</tr>
<tr>
<td>
eval</td>
<td>
将指定的参数拼接成一个命令，然后执行该命令</td>
</tr>
<tr>
<td>
exec</td>
<td>
用指定命令替换 shell 进程</td>
</tr>
<tr>
<td>
exit</td>
<td>
强制 shell 以指定的退出状态码退出</td>
</tr>
<tr>
<td>
export</td>
<td>
设置子 shell 进程可用的变量</td>
</tr>
<tr>
<td>
fc</td>
<td>
从历史记录中选择命令列表</td>
</tr>
<tr>
<td>
fg</td>
<td>
将作业以前台模式运行</td>
</tr>
<tr>
<td>
getopts</td>
<td>
分析指定的位置参数</td>
</tr>
<tr>
<td>
hash</td>
<td>
查找并记住指定命令的全路径名</td>
</tr>
<tr>
<td>
help</td>
<td>
显示帮助文件</td>
</tr>
<tr>
<td>
history</td>
<td>
显示命令历史记录</td>
</tr>
<tr>
<td>
jobs</td>
<td>
列出活动作业</td>
</tr>
<tr>
<td>
kill</td>
<td>
向指定的进程 ID(PID) 发送一个系统信号</td>
</tr>
<tr>
<td>
let</td>
<td>
计算一个数学表达式中的每个参数</td>
</tr>
<tr>
<td>
local</td>
<td>
在函数中创建一个作用域受限的变量</td>
</tr>
<tr>
<td>
logout</td>
<td>
退出登录 shell</td>
</tr>
<tr>
<td>
mapfile</td>
<td>
从 STDIN 读取数据行，并将其加入索引数组</td>
</tr>
<tr>
<td>
popd</td>
<td>
从目录栈中删除记录</td>
</tr>
<tr>
<td>
printf</td>
<td>
使用格式化字符串显示文本</td>
</tr>
<tr>
<td>
pushd</td>
<td>
向目录栈添加一个目录</td>
</tr>
<tr>
<td>
pwd</td>
<td>
显示当前工作目录的路径名</td>
</tr>
<tr>
<td>
read</td>
<td>
从 STDIN 读取一行数据并将其赋给一个变量</td>
</tr>
<tr>
<td>
readarray</td>
<td>
从 STDIN 读取数据行并将其放入索引数组</td>
</tr>
<tr>
<td>
readonly</td>
<td>
从 STDIN 读取一行数据并将其赋给一个不可修改的变量</td>
</tr>
<tr>
<td>
return</td>
<td>
强制函数以某个值退出，这个值可以被调用脚本提取</td>
</tr>
<tr>
<td>
set</td>
<td>
设置并显示环境变量的值和 shell 属性</td>
</tr>
<tr>
<td>
shift</td>
<td>
将位置参数依次向下降一个位置</td>
</tr>
<tr>
<td>
shopt</td>
<td>
打开/关闭控制 shell 可选行为的变量值</td>
</tr>
<tr>
<td>
source</td>
<td>
读取并执行指定文件中的命令（在当前 shell 环境中）</td>
</tr>
<tr>
<td>
suspend</td>
<td>
暂停 Shell 的执行，直到收到一个 SIGCONT 信号</td>
</tr>
<tr>
<td>
test</td>
<td>
基于指定条件返回退出状态码 0 或 1</td>
</tr>
<tr>
<td>
times</td>
<td>
显示累计的用户和系统时间</td>
</tr>
<tr>
<td>
trap</td>
<td>
如果收到了指定的系统信号，执行指定的命令</td>
</tr>
<tr>
<td>
type</td>
<td>
显示指定的单词如果作为命令将会如何被解释</td>
</tr>
<tr>
<td>
typeset</td>
<td>
声明一个变量或变量类型。</td>
</tr>
<tr>
<td>
ulimit</td>
<td>
为系统用户设置指定的资源的上限</td>
</tr>
<tr>
<td>
umask</td>
<td>
为新建的文件和目录设置默认权限</td>
</tr>
<tr>
<td>
unalias</td>
<td>
刪除指定的别名</td>
</tr>
<tr>
<td>
unset</td>
<td>
刪除指定的环境变量或 shell 属性</td>
</tr>
<tr>
<td>
wait</td>
<td>
等待指定的进程完成，并返回退出状态码</td>
</tr>
</tbody>
</table>
<br />