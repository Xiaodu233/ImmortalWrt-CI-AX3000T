## ImmortalWrt-CI
云编译ImmortalWrt固件（小米4A千兆版/R4AG 专用）

此分支使用源码：

[VIKINGYFY/immortalwrt-owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

考虑到性能有限，固件内无`tailscale`，`homeproxy`。

## 固件简要说明：

~~固件每周五早上6点自动编译~~，保留一个历史版本。

除主分支外暂无自动编译，~~太懒还没研究出来。~~

发布信息里的时间为编译开始的时间，方便核对上游源码提交时间。

固件自带软件包可在[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/r4ag/Config/General.txt)内查看。

自带软件包较少，推荐Fork此项目按需编辑配置，也可在刷入后安装软件包（不推荐）。

未更换镜像源，~~太菜还没折腾明白。~~

## 安装简要说明：

默认您已经完成前期工作，详细教程请自行查询。

下载Breed：[breed.hackpascal.net](https://breed.hackpascal.net)

进入Breed后，需要通过`telnet`进行初次固件刷入，并添加环境变量等操作

一系列步骤较多且复杂，可通过以下关键词查找详细教程：

`autoboot.command  boot flash 0x180000`

*乱操作容易真的变成砖了((*

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
