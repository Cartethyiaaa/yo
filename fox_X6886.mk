#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# Inherit from X6886 device
$(call inherit-product, device/infinix/X6886/device.mk)

# Inherit some common OrangeFox stuff
$(call inherit-product, vendor/recovery/config/common.mk)

# Device identifier
PRODUCT_DEVICE := X6886
PRODUCT_NAME := fox_X6886
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix HOT 50 Pro+
PRODUCT_MANUFACTURER := Infinix

# OrangeFox specific settings
OF_MAINTAINER := Cartethyiaaa
OF_SCREEN_H := 2400
OF_STATUS_H := 120
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 0
OF_FL_PATH1 := /sys/class/leds/lcd-backlight/brightness
OF_DEFAULT_KEYMASTER_VERSION := 3.0
FOX_ENABLE_APP_MANAGER := 1
FOX_USE_BASH_SHELL := 1
FOX_ASH_IS_BASH := 1
FOX_USE_NANO_EDITOR := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_USE_XZ_UTILS := 1
FOX_REPLACE_BUSYBOX_CAT := 1
FOX_DELETE_AROMAFM := 1
