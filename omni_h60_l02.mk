#
# Copyright 2012 The Android Open Source Project
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

LOCAL_PATH := device/huawei/h60_l02
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)
<<<<<<< HEAD


=======


>>>>>>> origin/android-6.0
# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

<<<<<<< HEAD
#PRODUCT_PACKAGES += \
#    charger_res_images \
#    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/kernel:kernel

#PRODUCT_COPY_FILES := \
#    $(LOCAL_PATH)/recovery/root/fstab.hi3630:root/fstab.hi3630 \
#    $(LOCAL_PATH)/recovery/root/init.recovery.hi3630.rc:root/init.recovery.hi3630.rc \
#    $(LOCAL_PATH)/recovery/root/init.hi3630.usb.rc:root/init.hi3630.usb.rc \
#    $(LOCAL_PATH)/recovery/root/ueventd.hi3630.rc:root/ueventd.hi3630.rc

# Recovery
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/recovery/root/init.recovery.hi3630.rc:root/init.recovery.hi3630.rc \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=0
=======
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/huawei/h60_l02/kernel:kernel

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/recovery/root/fstab.hi3630:root/fstab.hi3630 \
    $(LOCAL_PATH)/recovery/root/init.hi3630.rc:root/init.hi3630.rc \
    $(LOCAL_PATH)/recovery/root/init.hi3630.usb.rc:root/init.hi3630.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.hi3630.rc:root/ueventd.hi3630.rc

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/recovery/root/init.recovery.hi3630.rc:root/init.recovery.hi3630.rc \

#PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1
>>>>>>> origin/android-6.0

PRODUCT_NAME := omni_h60_l02
PRODUCT_DEVICE := h60_l02
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := Honor 6