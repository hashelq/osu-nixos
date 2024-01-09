#!/bin/sh
hash=$1
part1=$(cat auto-update/part1)
part1=${part1::-1}
part2=$(cat auto-update/part2)
part2=${part2::-1}
echo "$part1$hash$part2" > bypass-tamper-detection.patch
