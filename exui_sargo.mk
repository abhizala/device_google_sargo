 
# Copyright (C) 2018-2020 The Dirty Unicorns Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit some common ExtendedUI stuff.
$(call inherit-product, vendor/exui/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device specific stuff
TARGET_BOOT_ANIMATION_RES := 1080
USE_GAPPS := true
EXUI_BUILDTYPE := OFFICIAL

PRODUCT_NAME := exui_sargo
PRODUCT_DEVICE := sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sargo" \
    PRIVATE_BUILD_DESC="sargo-user 11 RP1A.201005.004 6782484 release-keys"

BUILD_FINGERPRINT := "google/sargo/sargo:11/RP1A.201005.004/6782484:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/sargo/sargo:11/RP1A.201005.004/6782484:user/release-keys

$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
