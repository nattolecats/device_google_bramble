#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)

include device/google/bramble/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := evolution_bramble

# Enable Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bramble \
    PRIVATE_BUILD_DESC="bramble-user 13 TP1A.221105.002 9080065 release-keys"

BUILD_FINGERPRINT := google/bramble/bramble:13/TP1A.221105.002/9080065:user/release-keys

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
