#
# Copyright (C) 2017 Fernando Von Arx <fer.vonarx@gmail.com>
# Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

# Inherit device configuration
$(call inherit-product, device/samsung/herolte/device_herolte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_hero2lte
PRODUCT_DEVICE := hero2lte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/aicp/configs/bootanimation.mk

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="deedwar"
