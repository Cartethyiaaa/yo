#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X6886)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
