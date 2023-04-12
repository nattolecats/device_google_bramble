#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/google/bramble/compatibility_matrix.xml

# Add before redbull BoardConfigLineage.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigEvolution.mk

include vendor/google/bramble/BoardConfigVendor.mk
