#!/usr/bin/env bash

set -xeo pipefail

openocd 2>&1 > /dev/null &

OPENOCD_PID=$!
trap "kill $OPENOCD_PID" EXIT

sleep 1

cat <<EOF | nc -N 127.0.0.1 4444
reset halt

mmw 0x40022008 0x45670123 0
mmw 0x40022008 0xCDEF89AB 0

mmw 0x40022014 0x000107FA 0
mmw 0x40022014 0x00010FFA 0

reset halt

sleep 1

reset run
EOF
