adb push out/target/product/mtk75_ics/system/app/Launcher2.apk /system/app/Launcher2.apk

failed to copy 'out/target/product/mtk75_ics/system/app/Launcher2.apk' to '/system/app/Launcher2.apk': Read-only file system

adb shell
mount

rootfs / rootfs ro,relatime 0 0
tmpfs /dev tmpfs rw,nosuid,relatime,mode=755 0 0
devpts /dev/pts devpts rw,relatime,mode=600 0 0
proc /proc proc rw,relatime 0 0
sysfs /sys sysfs rw,relatime 0 0
debugfs /sys/kernel/debug debugfs rw,relatime 0 0
none /acct cgroup rw,relatime,cpuacct 0 0
tmpfs /mnt/asec tmpfs rw,relatime,mode=755,gid=1000 0 0
tmpfs /mnt/obb tmpfs rw,relatime,mode=755,gid=1000 0 0
none /dev/cpuctl cgroup rw,relatime,cpu 0 0
emmc@android /system ext4 ro,noatime,user_xattr,commit=1,barrier=1,data=ordered,noauto_da_alloc 0 0
emmc@usrdata /data ext4 rw,nosuid,nodev,noatime,user_xattr,barrier=1,data=ordered,noauto_da_alloc 0 0
emmc@cache /cache ext4 rw,nosuid,nodev,noatime,user_xattr,barrier=1,data=ordered,noauto_da_alloc 0 0
/dev/block/vold/179:4 /mnt/sdcard vfat rw,dirsync,nosuid,nodev,noexec,relatime,uid=1000,gid=1015,fmask=0702,dmask=0702,allow_utime=0020,codepage=cp437,iocharset=iso8859-1,shortname=mixed,utf8,errors=remount-ro 0 0
/dev/block/vold/179:4 /mnt/secure/asec vfat rw,dirsync,nosuid,nodev,noexec,relatime,uid=1000,gid=1015,fmask=0702,dmask=0702,allow_utime=0020,codepage=cp437,iocharset=iso8859-1,shortname=mixed,utf8,errors=remount-ro 0 0
tmpfs /mnt/sdcard/.android_secure tmpfs ro,relatime,size=0k,mode=000 0 0

mount -o remount,rw -t ext4 emmc@android /system
exit

adb push out/target/product/mtk75_ics/system/app/Launcher2.apk /system/app/Launcher2.apk


adb pull /system/app/Launcher2.apk ./
adb pull /system ./system
