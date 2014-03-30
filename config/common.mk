# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/deedwar/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/deedwar/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/deedwar/prebuilt/bin/50-host.sh:system/addon.d/50-host.sh \
    vendor/deedwar/prebuilt/bin/blacklist:system/addon.d/blacklist
endif

# userinit support
PRODUCT_COPY_FILES += \
    vendor/deedwar/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/deedwar/prebuilt/bin/sysinit:system/bin/sysinit 

#Su Daemon
PRODUCT_COPY_FILES += \
    vendor/deedwar/prebuilt/etc/init.superuser.rc:root/init.superuser.rc

PRODUCT_COPY_FILES += \
        vendor/deedwar/prebuilt/bin/sysinit:system/bin/sysinit
    
PRODUCT_PACKAGE_OVERLAYS += vendor/deedwar/overlay

# Inherit common product
-include vendor/deedwar/config/common_product.mk

# Inherit common version build prop overrides
-include vendor/deedwar/config/common_versions.mk
