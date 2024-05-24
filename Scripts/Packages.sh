#!/bin/bash

#更新软件包
UPDATE_PACKAGE() {
	local PKG_NAME=$1
	local PKG_REPO=$2
	local PKG_BRANCH=$3
	local PKG_SPECIAL=$4
	local REPO_NAME=$(echo $PKG_REPO | cut -d '/' -f 2)

	rm -rf $(find ../feeds/luci/ -type d -iname "*$PKG_NAME*" -prune)

	git clone --depth=1 --single-branch --branch $PKG_BRANCH "https://github.com/$PKG_REPO.git"

	if [[ $PKG_SPECIAL == "pkg" ]]; then
		cp -rf $(find ./$REPO_NAME/ -type d -iname "*$PKG_NAME*" -prune) ./
		rm -rf ./$REPO_NAME
	elif [[ $PKG_SPECIAL == "name" ]]; then
		mv -f $REPO_NAME $PKG_NAME
	fi
}

UPDATE_PACKAGE "design" "gngpp/luci-theme-design" "$([[ $WRT_URL == *"lede"* ]] && echo "main" || echo "js")"
UPDATE_PACKAGE "design-config" "gngpp/luci-app-design-config" "master"
UPDATE_PACKAGE "argon" "jerrykuku/luci-theme-argon" "$([[ $WRT_URL == *"lede"* ]] && echo "18.06" || echo "master")"
UPDATE_PACKAGE "argon-config" "jerrykuku/luci-app-argon-config" "$([[ $WRT_URL == *"lede"* ]] && echo "18.06" || echo "master")"

UPDATE_PACKAGE "helloworld" "fw876/helloworld" "master"
UPDATE_PACKAGE "openclash" "vernesong/OpenClash" "dev"

if [[ $WRT_URL == *"immortalwrt"* ]]; then
	UPDATE_PACKAGE "homeproxy" "immortalwrt/homeproxy" "dev"
fi

#更新软件包版本
UPDATE_VERSION() {
	local PKG_NAME=$1
	local PKG_REPO=$2
	local PKG_FILE=$(find ../feeds/packages/*/$PKG_NAME/ -type f -name "Makefile" 2>/dev/null)

	if [ -f "$PKG_FILE" ]; then
		local OLD_VER=$(grep -Po "PKG_VERSION:=\K.*" $PKG_FILE)
		local NEW_VER=$(git ls-remote --tags --sort="version:refname" "https://github.com/$PKG_REPO.git" | tail -n 1 | sed "s/.*v//")
		local NEW_HASH=$(curl -sfL "https://codeload.github.com/$PKG_REPO/tar.gz/v$NEW_VER" | sha256sum | cut -b -64)

		if dpkg --compare-versions "$OLD_VER" lt "$NEW_VER"; then
			sed -i "s/PKG_VERSION:=.*/PKG_VERSION:=$NEW_VER/g" $PKG_FILE
			sed -i "s/PKG_HASH:=.*/PKG_HASH:=$NEW_HASH/g" $PKG_FILE
			echo "$PKG_NAME ver has been updated!"
		else
			echo "$PKG_NAME ver is already the latest!"
		fi
	else
		echo "$PKG_NAME is not found!"
	fi
}

UPDATE_VERSION "sing-box" "SagerNet/sing-box"
