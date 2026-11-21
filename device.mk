#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from standard, full Android core configurations (Bare AOSP/Lineage)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Define the local paths
LOCAL_PATH := device/wisephone/p10

# MediaTek Graphics Overrides (Forcing 32-bit hardware rendering compatibility)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=meizu \
    ro.opengles.version=196608 \
    debug.renderengine.backend=gles \
    ro.hardware.gralloc=mt6739

# System Performance Tweak (Bare Android, no Go configurations)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.dex2oat-filter=speed

# Inherit proprietary vendor files (This maps directly to your blobs repo)
$(call inherit-product-if-exists, vendor/wisephone/p10/p10-vendor.mk)

# Basic Device Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
