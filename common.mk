#
# Copyright (C) 2013-2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

# Common path
COMMON_PATH := device/sony/blue-common

# Common specific overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay-aosp
ifeq ($(BOARD_AOSP_BASED),)
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay-lineage
endif

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Common product elements
include $(COMMON_PATH)/product/*.mk

# Vendor common configurations
$(call inherit-product, vendor/sony/blue-common/blue-common-vendor.mk)
