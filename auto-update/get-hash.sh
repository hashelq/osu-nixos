#!/bin/sh

rm osu.AppImage -rf
cd /tmp/osu
curl -sL https://github.com/jqlang/jq/releases/download/jq-1.7/jq-linux-amd64 > ./jq
chmod +x ./jq
url=$(curl -sL https://api.github.com/repos/ppy/osu/releases/latest | ./jq '.assets .[] | select(.name == "osu.AppImage") .browser_download_url' | tr -d '\"')
mkdir -p /tmp/osu
curl $url > osu.AppImage
chmod +x /osu.AppImage
./osu.AppImage --appimage-extract
md5sum bin/osu.Game.dll
