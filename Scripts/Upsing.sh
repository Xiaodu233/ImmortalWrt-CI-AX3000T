#!/bin/bash

singver=$(curl "https://api.github.com/repos/SagerNet/sing-box/tags" | jq -r '.[0].name')

wget -P ./ https://codeload.github.com/SagerNet/sing-box/tar.gz/$singver

singsha=$(sha256sum ./$singver)

rm ./$singver

fullver=$(UPDATE_VERSION "sing-box" "$singver" "$singsha")

sed -i '/^UPDATE_VERSION "sing-box" */c'$fullver'' ./Scripts/Packages.sh
