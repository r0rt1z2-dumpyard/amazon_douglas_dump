#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:9299968:8e5e7f6f63fd77383c5721a13d818f880a1e70c9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8689664:36be7fedd2f2ea368b363477af97b0b3cc3b8acc EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 8e5e7f6f63fd77383c5721a13d818f880a1e70c9 9299968 36be7fedd2f2ea368b363477af97b0b3cc3b8acc:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
