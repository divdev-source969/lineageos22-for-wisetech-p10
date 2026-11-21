#
# Copyright (C) 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# 32-bit userland: do NOT inherit core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device configuration
$(call inherit-product, device/wisephone/p10/device.mk)

# Lineage common (use common_mini_phone.mk instead if RAM is tight)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_p10
PRODUCT_DEVICE := p10
PRODUCT_BRAND := Wisephone
PRODUCT_MODEL := P10
PRODUCT_MANUFACTURER := Wisetech

PRODUCT_GMS_CLIENTID_BASE := android-wisetech

# TODO: copy from stock `getprop ro.build.fingerprint` / description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TODO_STOCK_BUILD_DESCRIPTION"

BUILD_FINGERPRINT := TODO/stock/fingerprint:here
