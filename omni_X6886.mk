#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)
$(call inherit-product, device/infinix/X6886/device.mk)

PRODUCT_DEVICE := X6886
PRODUCT_NAME := omni_X6886
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix HOT 50 Pro+
PRODUCT_MANUFACTURER := Infinix
