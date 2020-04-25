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
