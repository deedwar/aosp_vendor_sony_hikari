# Apollo
PRODUCT_PACKAGES += \
    Apollo

# LockClock
PRODUCT_PACKAGES += \
    LockClock \
	CMFileManager \
	Busybox

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/deedwar/prebuilt/bin/su:system/xbin/daemonsu \
    vendor/deedwar/prebuilt/bin/su:system/xbin/su \
    vendor/deedwar/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/deedwar/prebuilt/app/Superuser.apk:system/app/Superuser.apk
