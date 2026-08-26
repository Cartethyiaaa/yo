#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/X6886

# Enable Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Dynamic Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Installs fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Recovery root files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6789.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.mt6789.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.tee.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.tee.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6789.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.mt6789.rc \
    $(LOCAL_PATH)/recovery/root/system/etc/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/system/etc/twrp.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags \
    $(LOCAL_PATH)/recovery/root/system/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/vintf/manifest.xml

# Prebuilt DTB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb:dtb
