## ImmortalWrt-CI
云编译ImmortalWrt固件（小米AX3000T 专用）

此分支使用源码：

[VIKINGYFY/immortalwrt-owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

区别仅为有无`homeproxy`，已标注区分，请按需下载。

`ubootmod`版本固件不再推荐使用，已从设备配置中移除

## 固件简要说明：

固件每周五早上6点自动编译，保留一个历史版本。

发布信息里的时间为编译开始的时间，方便核对上游源码提交时间。

固件自带软件包可在[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/main/Config/General.txt)内查看。

自带软件包较少，推荐Fork此项目按需编辑配置，也可在刷入后安装软件包（不推荐）。

未更换镜像源，~~太菜还没折腾明白。~~

## 安装简要说明：

默认您已经完成前期工作，详细教程请自行查询。

推荐U-Boot：

[Yuzhii0718/bl-mt798x-dhcpd](https://github.com/Yuzhii0718/bl-mt798x-dhcpd/releases)（修改版功能更多）

[VIKINGYFY/UBOOT-CI](https://github.com/VIKINGYFY/UBOOT-CI/releases)（原版功能）

请根据硬件版本（新版为AN8855交换机芯片）选择，下载并进行刷入。

进入U-Boot，分区布局请选择`default`，上传，确认，等待路由器变砖((

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
