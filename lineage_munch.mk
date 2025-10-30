#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

# EPPE
TARGET_DISABLE_EPPE := true

# BLUR
TARGET_ENABLE_BLUR := true

# AXION
AXION_CAMERA_REAR_INFO := 64,8MP,2MP
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := SENX|センクス
AXION_PROCESSOR := Snapdragon®_870_5G
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# LOS PREBUILTS
TARGET_INCLUDES_LOS_PREBUILTS := true

# BYPASS CHARGING
BYPASS_CHARGE_SUPPORTED := true

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
