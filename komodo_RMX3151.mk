#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX3151/device.mk)

# Inherit some common Komodo stuff.
$(call inherit-product, vendor/komodo/config/common.mk)

# Komodo Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_DENSITY := 420
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
KOMODO_GAPPS_TYPE := gapps

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX3151
PRODUCT_NAME := komodo_RMX3151
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 8i
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := Realme 8i


# Build info
BUILD_FINGERPRINT := "google/redfin/redfin:12/SP1A.211105.003/7757856:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3151 \
    PRODUCT_NAME=RMX3151 \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-mp8tc16sppr10V1-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
