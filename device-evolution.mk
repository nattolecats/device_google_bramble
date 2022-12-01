#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/redbull/device-evolution.mk)

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlay
    
# Enable Adaptive Charging
PRODUCT_COPY_FILES += \
    device/google/bramble/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml
    
# Enable Now Playing
PRODUCT_PACKAGES += NowPlayingOverlay

# Properties
TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop
