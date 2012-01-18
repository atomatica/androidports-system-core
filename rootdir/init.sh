#!/system/bin/sh

if [ -f /system/usr/bin/busybox ] && [ -d /system/usr/etc/init.d ]; then
    /system/bin/logwrapper /system/usr/bin/busybox run-parts /system/usr/etc/init.d;
fi

sync;
setprop sys.runinit.complete 1;

