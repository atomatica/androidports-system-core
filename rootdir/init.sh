#!/system/bin/sh

if [ -f /system/xbin/busybox ] && [ -d /system/etc/init.d ]; then
    /system/bin/logwrapper /system/xbin/busybox run-parts /system/etc/init.d;
fi

sync;
setprop sys.setup.complete 1;

