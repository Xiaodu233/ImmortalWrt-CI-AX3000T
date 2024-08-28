#!/bin/bash

#修改默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-$WRT_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认WIFI名
sed -i "s/\.ssid=.*/\.ssid=$WRT_WIFI/g" $(find ./package/kernel/mac80211/ ./package/network/config/ -type f -name "mac80211.*")

CFG_FILE="./package/base-files/files/bin/config_generate"
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$WRT_IP/g" $CFG_FILE
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$WRT_NAME'/g" $CFG_FILE
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" $CFG_FILE
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" $CFG_FILE

if [[ $WRT_REPO == *"lede"* ]]; then
	LEDE_FILE=$(find ./package/lean/autocore/ -type f -name "index.htm")
	#修改默认时间格式
	sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S %A")/g' $LEDE_FILE
	#添加编译日期标识
	sed -i "s/(\(<%=pcdata(ver.luciversion)%>\))/\1 \/ $WRT_CI-$WRT_DATE/g" $LEDE_FILE
else
	#修改默认WIFI名
	sed -i "s/ssid=.*/ssid='$WRT_WIFI'/g" ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
	#修改immortalwrt.lan关联IP
	sed -i "s/192\.168\.[0-9]*\.[0-9]*/$WRT_IP/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
	#添加编译日期标识
	sed -i "s/(\(luciversion || ''\))/(\1) + (' \/ $WRT_CI-$WRT_DATE')/g" $(find ./feeds/luci/modules/luci-mod-status/ -type f -name "10_system.js")
fi

#修改opkg软件源为上海交通大学镜像站
LAST_LINE=$(awk '/exit 0/{print NR}' $(find ./package/emortal/default-settings/files/ -type f -name "99-default-settings"))
sed -i 'N;'"${LAST_LINE}"'i\sed -i '\"s,https://downloads.immortalwrt.org,https://mirror.sjtu.edu.cn/immortalwrt,g\"' "/etc/opkg/distfeeds.conf"' $(find ./package/emortal/default-settings/files/ -type f -name "99-default-settings")

#配置文件修改
echo "CONFIG_PACKAGE_luci-theme-$WRT_THEME=y" >> ./.config
echo "CONFIG_PACKAGE_luci-app-$WRT_THEME-config=y" >> ./.config

#手动调整的插件
if [ -n "$WRT_PACKAGE" ]; then
	echo "$WRT_PACKAGE" >> ./.config
fi

#科学插件设置
#if [[ $WRT_REPO == *"lede"* ]]; then
	#echo "CONFIG_PACKAGE_luci-app-openclash=y" >> ./.config
	#echo "CONFIG_PACKAGE_luci-app-passwall=y" >> ./.config
	#echo "CONFIG_PACKAGE_luci-app-ssr-plus=y" >> ./.config
	#echo "CONFIG_PACKAGE_luci-app-turboacc=y" >> ./.config
#else
	#echo "CONFIG_PACKAGE_luci=y" >> ./.config
	#echo "CONFIG_LUCI_LANG_zh_Hans=y" >> ./.config
	#echo "CONFIG_PACKAGE_luci-app-homeproxy=y" >> ./.config
#fi
