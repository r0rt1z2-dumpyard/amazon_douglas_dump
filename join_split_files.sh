#!/bin/bash

cat system/sqfs/container.sqfs.* 2>/dev/null >> system/sqfs/container.sqfs
rm -f system/sqfs/container.sqfs.* 2>/dev/null
cat system/framework/arm/boot.oat.* 2>/dev/null >> system/framework/arm/boot.oat
rm -f system/framework/arm/boot.oat.* 2>/dev/null
