#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/samsung/ceres/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ceres
PRODUCT_DEVICE := ceres
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung MT6765

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m04ins-user 13 TP1A.220624.014 E045FXXS5CWJ2 release-keys"

BUILD_FINGERPRINT := samsung/m04ins/m04:12/SP1A.210812.016/E045FXXS5CWJ2:user/release-keys
