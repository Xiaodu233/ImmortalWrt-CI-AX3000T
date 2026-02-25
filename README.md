## ImmortalWrt-CI

云编译ImmortalWrt固件（小米4A千兆版/R4AG 专用）

此分支使用源码：
[VIKINGYFY/immortalwrt-owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

考虑到性能有限，固件内无`tailscale`，`homeproxy`。

两版固件分开，~~大概应该~~适配V2版本（暂无设备测试）。

## 固件简要说明：

~~固件每周五早上6点自动编译~~，保留一个历史版本。

除主分支外暂无自动编译，~~太懒还没研究出来。~~

发布信息里的时间为编译开始的时间，方便核对上游源码提交时间。

固件自带软件包可在
[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/r4ag/Config/General.txt)
内查看。

自带软件包较少，推荐[Fork](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/fork)此项目按需编辑配置，也可在刷入后安装软件包（不推荐）。

未更换镜像源，~~太菜还没折腾明白。~~

## 安装简要说明：

**默认您已经完成前期工作，详细教程请自行查询，首次刷入步骤：**

>*此设备操作较多且复杂，太容易变成砖((*
>
>*故仅留下关键词，用于搜索完整教程：*
>
>`autoboot.command  boot flash 0x180000`

**后续如无特殊需要，可直接在LuCI内更新固件。**

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
