#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Set some build environment flags.
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Add before redbull BoardConfigLineage.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigEvolution.mk

include vendor/google/bramble/BoardConfigVendor.mk
