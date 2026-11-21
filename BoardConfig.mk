#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/wisephone/p10

# Architecture & CPU Compiler Flags (Forcing A64 / 32-bit Userland)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Kernel Variables (Acknowledge 64-bit kernel binder architecture)
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := false

# Platform foundation
TARGET_BOARD_PLATFORM := mt6739
TARGET_BOOTLOADER_BOARD_NAME := mt6739ch

# Assertions
TARGET_OTA_ASSERT_DEVICE := p10,wisephone_p10

# MediaTek Graphics Components
HAVE_AOSP_PROPERTIES := true
TARGET_SCREEN_RES := 720x1440
USE_OPENGL_RENDERER := true

# Low RAM Optimizations for Android 15 Core
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
MALLOC_SVELTE := true
