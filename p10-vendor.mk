#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Core Graphic Display Modules
PRODUCT_PACKAGES += \
    libGLES_meizu \
    gralloc.mt6739

# Master File Copying Directives - Forcing Cloud Compiler to bake every extracted MT6739CH component
PRODUCT_COPY_FILES += \
    vendor/wisephone/p10/proprietary/vendor/lib/hw/audio.primary.mt6739.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.mt6739.so \
    vendor/wisephone/p10/proprietary/vendor/lib/hw/sensors.mt6739.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.mt6739.so \
    vendor/wisephone/p10/proprietary/vendor/lib/libmtk-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmtk-ril.so \
    vendor/wisephone/p10/proprietary/vendor/lib/libwifi-hal-mtk.so:$(TARGET_COPY_OUT_VENDOR)/lib/libwifi-hal-mtk.so \
    vendor/wisephone/p10/proprietary/vendor/firmware/WMT_SOC.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/WMT_SOC.cfg \
    vendor/wisephone/p10/proprietary/vendor/firmware/wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/wifi.cfg \
    vendor/wisephone/p10/proprietary/vendor/firmware/modem.img:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.img
