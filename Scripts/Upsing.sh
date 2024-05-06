#!/bin/bash

singver=$(curl "https://api.github.com/repos/SagerNet/sing-box/tags" | jq -r '.[0].name')

singer=$(echo $singver | cut -c2-)

wget -P ./ https://codeload.github.com/SagerNet/sing-box/tar.gz/v$singer

singsha=$(sha256sum ./sing-box-$singer.tar.gz)

rm ./sing-box-$singer.tar.gz

fullver=$(UPDATE_VERSION "sing-box" "v$singer" "$singsha")

sed -i '/^UPDATE_VERSION "sing-box" */c'$fullver'' ./Scripts/Packages.sh
