#
# Copyright (C) 2015 The CyanogenMod Project
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
# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := device/huawei/h60_l02

# Assert
# TARGET_OTA_ASSERT_DEVICE := h60_l02,H60-L02

# Platform
BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi3630
TARGET_BOARD_PLATFORM := hi3630
TARGET_SOC := kirin920

# TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := hi3630

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_VARIANT := cortex-a15
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15


COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Kernel
BOARD_KERNEL_CMDLINE  := 'ro.boot.hardware=hi3630 coherent_pool=512K vmalloc=384M mem=2044m@0x200000 psci=enable androidboot.selinux=permissive mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p7(modemnvm_factory),p18(splash),p22(dfx),p23(modemnvm_backup),p24(modemnvm_img),p25(modemnvm_system),p26(modem),p27(modem_dsp),p28(modem_om),p29(modemnvm_update),p31(3rdmodem),p32(3rdmodemnvm),p33(3rdmodemnvmbkp)'
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_OFFSET   := 0x00608000
BOARD_RAMDISK_OFFSET  := 0x04000000
BOARD_SECOND_OFFSET   := 0x00f00000
BOARD_TAGS_OFFSET     := 0x00200000
BOARD_MKBOOTIMG_ARGS += --kernel_offset "$(BOARD_KERNEL_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset "$(BOARD_RAMDISK_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --second_offset "$(BOARD_SECOND_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --tags_offset "$(BOARD_TAGS_OFFSET)"

TARGET_PREBUILT_KERNEL := device/huawei/h60_l02/recovery/kernel
#TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CONFIG := cm_hi3630_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/h60
# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 14680064
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12759072768
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true



# TWRP
RECOVERY_VARIANT := twrp
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TWHAVE_SELINUX := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TW_INPUT_BLACKLIST := "accelerometer"
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
# BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 65
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
