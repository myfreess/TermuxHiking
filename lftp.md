
**lftp**

想交互式地访问ftpserver，用lftp。

```shell
#使用以下命令登录ftp服务器：
lftp ftp://用户名[:密码]@服务器地址[:端口]
#标准方式，推荐
#如果不指定端口，默认21端口
#如果不在命令中使用明文输入密码，连接时会询问密码(推荐)
#可以使用“书签”收藏服务器站点，也可以在lftp中为当前站点定义别名：
lftp >bookmark           #显示所有收藏
lftp >bookmark add <别名>  #使用 别名 收藏当前站点
#使用别名登录 ftp服务器：
lftp <别名>
#文件下载
#单个文件
lftp >get <name>
#目录
lftp >mirror <dirname>
#windows server支持
lftp >set ftp:charset gbk   #设置远程编码为gbk
lftp >set file:charset utf8 #设置本地编码(Linux系统默认使用 UTF-8，这一步通常可以省略)
```

