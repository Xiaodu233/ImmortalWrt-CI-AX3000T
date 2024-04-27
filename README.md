# OpenWRT-CI
云编译OpenWRT固件（小米AX3000T专用）

LEDE源码：
https://github.com/coolsnowwolf/lede （不再自动编译）

IMMORTALWRT源码：
https://github.com/immortalwrt/immortalwrt

# 固件简要说明：

固件每周五早上6点自动编译，默认保留1个历史版本.

固件信息里的时间为编译开始的时间，方便核对上游源码提交时间.

固件自带的软件包可在[General.txt](https://github.com/Xiaodu233/ImmortalWrt-CI-AX3000T/blob/main/Config/General.txt)内查看.

刷入后可自行安装需要的软件包，推荐通过opkg安装.

固件已更换opkg源为校园网联合镜像站源，
也可以在[https://op.dllkids.xyz/packages/aarch64_cortex-a53/](https://op.dllkids.xyz/packages/aarch64_cortex-a53/)内搜索下载ipk后上传至路由器安装.

<details> <summary><strong>为什么我不推荐固件自带大量软件包</strong></summary>
为满足不同使用需求，固件附带的软件包极少，只保留路由器基础功能和配置较为复杂的功能，好处是能留出较大空间方便自定义配置.
</details>

# 固件安装简要说明：

## 只针对首次刷入（包含官方和其他版本固件）

含`ubootmod`字样的固件需要先刷入含同字样的Uboot.

普通固件请刷入[https://github.com/VIKINGYFY/UBOOT-CI/releases](https://github.com/VIKINGYFY/UBOOT-CI/releases)内对应型号的Uboot.

Uboot地址为`192.168.1.1`，分区布局请选择默认.

上传，确认，等待路由器变砖((

Uboot更多操作方法详见[https://cmi.hanwckf.top/p/mt798x-uboot-usage/](https://cmi.hanwckf.top/p/mt798x-uboot-usage/)

# 固件使用建议和心得：

（待补充...）

# 目录简要说明：

Depends.txt——环境依赖列表

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置
