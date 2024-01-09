#!/bin/sh

rm osu.AppImage -rf
url=$(curl -sL https://api.github.com/repos/ppy/osu/releases/latest | jq '.assets .[] | select(.name == "osu.AppImage") .browser_download_url' | tr -d '\"')
mkdir -p /tmp/osu
cd /tmp/osu
wget $url --output-file=osu.Appimage
chmod +x /osu.AppImage
./osu.AppImage --appimage-extract
md5sum bin/osu.Game.dll
