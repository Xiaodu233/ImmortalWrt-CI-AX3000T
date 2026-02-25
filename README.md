## ImmortalWrt-CI

云编译ImmortalWrt固件（树莓派4B/Raspberry Pi 4B 专用）

此分支使用源码：
[VIKINGYFY/immortalwrt-owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

区别仅为固件文件系统，已标注`ext4`和`squashfs`，可按需下载。

## 固件简要说明：

~~固件每周五早上6点自动编译~~，保留一个历史版本。

除主分支外暂无自动编译，~~太懒还没研究出来。~~

发布信息里的时间为编译开始的时间，方便核对上游源码提交时间。

固件自带软件包可在
[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/pai/Config/General.txt)
内查看。

自带软件包较少，推荐[Fork](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/fork)此项目按需编辑配置，也可在刷入后安装软件包（不推荐）。

未更换镜像源，~~太菜还没折腾明白。~~

## 安装简要说明：

**默认您已经完成前期工作，详细教程请自行查询，首次刷入步骤：**

> *都用树莓派了还要教？*
> 
> *摸不到设备不清楚~*
> 
> *只是帮忙造固件...*

**后续如无特殊需要，可直接在LuCI内更新固件。**

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
