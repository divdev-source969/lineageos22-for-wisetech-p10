#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from standard, full Android core configurations (Bare AOSP/Lineage)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Define the local paths targeting this single repository location
LOCAL_PATH := device/wisephone/p10

# MediaTek Graphics Overrides (Forcing 32-bit hardware rendering compatibility)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=meizu \
    ro.opengles.version=196608 \
    debug.renderengine.backend=gles \
    ro.hardware.gralloc=mt6739

# System Performance Tweaks (Bare Android, no Go configurations)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.dex2oat-filter=speed

# Core Display & Touch Modules (Direct Injection)
PRODUCT_PACKAGES += \
    libGLES_meizu \
    gralloc.mt6739

# Master File Copying Directives - Baking all extracted drivers from the local directory
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/lib/hw/audio.primary.mt6739.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.mt6739.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/hw/sensors.mt6739.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.mt6739.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libmtk-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmtk-ril.so \
    $(LOCAL_PATH)/proprietary/vendor/lib/libwifi-hal-mtk.so:$(TARGET_COPY_OUT_VENDOR)/lib/libwifi-hal-mtk.so \
    $(LOCAL_PATH)/proprietary/vendor/firmware/WMT_SOC.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/WMT_SOC.cfg \
    $(LOCAL_PATH)/proprietary/vendor/firmware/wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/wifi.cfg \
    $(LOCAL_PATH)/proprietary/vendor/firmware/modem.img:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.img

# Basic Device Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
