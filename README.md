## ImmortalWrt-CI
云编译ImmortalWrt固件（小米4A千兆版/R4AG 专用）

此分支使用源码：

[https://github.com/VIKINGYFY/immortalwrt/tree/owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

~~区别为两个不同的源码，注意查看发布说明，自行选择下载，不建议不同源码间升级。~~

~~*两个源码有啥区别？* 我也不知道~~

已改为只使用一种源码，固件内无`homeproxy`, `tailscale`

## 固件简要说明：

固件每周五早上6点自动编译，保留一个历史版本.

发布信息里的时间为编译开始的时间，方便核对上游源码提交时间.

固件自带的软件包可在[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/test/Config/General.txt)内查看.

固件预置的软件包较少，刷入后可自行安装需要的软件包，或者选择fork项目自行编辑预置软件包.

未更换镜像源，本人太菜~~还没玩明白~~.

## 固件安装简要说明：（待更新...）

### 只针对首次刷入

默认您已经完成前期工作，详细教程请自行查询.

进入Breed，上传，确认，等待路由器变砖((

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
