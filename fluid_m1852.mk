#
# Copyright (C) 2018 The MoKee Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from m1852 device
$(call inherit-product, device/meizu/m1852/m1852.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# GApps
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# And credits to XiNGRZ again

PRODUCT_NAME := fluid_m1852
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1852
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := M1852

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="M1852" \
    PRODUCT_NAME="meizu_M1852_CN" \
    PRIVATE_BUILD_DESC="meizu_M1852_CN-user 8.1.0 OPM1.171019.026 1592244368 release-keys"

BUILD_FINGERPRINT := Meizu/meizu_M1852_CN/M1852:8.1.0/OPM1.171019.026/1592244368:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=BlackRow67 \
  ro.fluid.cpu=SDM710
