# osu! nixos

this is just a fork of the original package, where I update the md5sum whenever it changes

## How to find new md5sum?

1. Download official osu! lazer appimage
2. `appimage-run -x <somedir> osu.AppImage` (requires `appimage-run`), where `somedir` is empty
3. `md5sum <somedir>/usr/bin/osu.Game.dll`
4. copy the resulting sum into the value in `bypass-tamper-detection.patch`
