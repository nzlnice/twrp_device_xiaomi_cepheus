#
# Copyright (C) 2025 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit AOSP product makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from crux device
$(call inherit-product, device/xiaomi/crux/device.mk)
# 开启动态分区与 Retrofit 支持（移动到产品套餐文件中赋值）
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true
# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := crux
PRODUCT_NAME := twrp_crux
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Pro 5G
PRODUCT_MANUFACTURER := Xiaomi
