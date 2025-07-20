## ImmortalWrt-CI
云编译ImmortalWrt固件（小米AX3000T 专用）

此分支使用源码：[https://github.com/VIKINGYFY/immortalwrt/tree/owrt](https://github.com/VIKINGYFY/immortalwrt/tree/owrt)

## 发布版本说明：

区别仅为有无`homeproxy`，已标注区分，可按需下载。

## 固件简要说明：

固件每周五早上6点自动编译，保留一个历史版本.

固件信息里的时间为编译开始的时间，方便核对上游源码提交时间.

固件预置的软件包可在[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/main/Config/General.txt)内查看.

固件预置的软件包较少，刷入后可自行安装需要的软件包，或者选择fork项目自行编辑预置软件包.

未更换镜像源，本人太菜~~还没玩明白~~.

## 安装简要说明：

### 只针对首次刷入（包含官方和其他版本固件）

`ubootmod`版本的固件需要先刷入同样版本的Uboot.

普通固件请刷入[https://github.com/VIKINGYFY/UBOOT-CI/releases](https://github.com/VIKINGYFY/UBOOT-CI/releases)内对应型号的Uboot.

Uboot地址为`192.168.1.1`，分区布局请选择默认.

上传，确认，等待路由器变砖((

Uboot更多操作方法详见[https://cmi.hanwckf.top/p/mt798x-uboot-usage/](https://cmi.hanwckf.top/p/mt798x-uboot-usage/)

## 使用建议和参考：

（大概不会补充...）

## 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
