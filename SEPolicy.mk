#
# Copyright (C) 2024 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PATH := device/xiaomi/camera

# Sepolicy Camera
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/camera/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/camera/private

# Sepolicy MiSys
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/public
