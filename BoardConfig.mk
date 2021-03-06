#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common sdm439-common
include device/xiaomi/sdm439-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/olivelite

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_olives
TARGET_RECOVERY_DEVICE_MODULES := libinit_olives

# Asserts
TARGET_OTA_ASSERT_DEVICE := olivelite

# Kernel
TARGET_KERNEL_CONFIG := olivelite-perf_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184

# Security patch level
VENDOR_SECURITY_PATCH := 2021-03-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/olivelite/BoardConfigVendor.mk
