#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from herolte device
$(call inherit-product, device/samsung/herolte/device.mk)

PRODUCT_DEVICE := herolte
PRODUCT_NAME := omni_herolte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G930F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="heroltexx-user 8.0.0 R16NW G930FXXS8ETC9 release-keys"

BUILD_FINGERPRINT := samsung/heroltexx/herolte:8.0.0/R16NW/G930FXXS8ETC9:user/release-keys
