#
# Copyright (C) 2024 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PATH := device/xiaomi/camera
CAMERA_VENDOR_PATH := vendor/xiaomi/camera

# Permissions
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,$(CAMERA_PATH)/configs/permissions/,$(TARGET_COPY_OUT_SYSTEM)/etc)

# CameraX Config Overwrite
PRODUCT_COPY_FILES += \
     $(CAMERA_PATH)/configs/camera/camxoverridesettings.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camxoverridesettings.txt

# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(CAMERA_PATH)/configs/permissions/extensions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Device-Features
PRODUCT_COPY_FILES += \
     $(CAMERA_PATH)/configs/device_features/veux.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/veux.xml \
     $(CAMERA_PATH)/configs/device_features/peux.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/peux.xml \
     $(CAMERA_PATH)/configs/device_features/veux.xml:$(TARGET_COPY_OUT_VENDOR)/etc/device_features/veux.xml \
     $(CAMERA_PATH)/configs/device_features/peux.xml:$(TARGET_COPY_OUT_VENDOR)/etc/device_features/peux.xml

# Shims
PRODUCT_PACKAGES += \
    libgui_camera_shim

# Symlinks
PRODUCT_PACKAGES += \
    miui_camera_libcamera_algoup_symlink \
    miui_camera_libcamera_mianode_symlink \
    miui_camera_libmicampostproc_symlink \
    miui_camera_campostproc_vendor_symlink \
    miui_camera_libOpenCL_symlink \
    miui_camera_libmqsas_symlink \
    miui_camera_libcameraimpl_symlink \
    miui_camera_libopencl_camera_symlink

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.miui.notch=1 \
    persist.sys.cam.skip_detach_image=true \
    log.tag.CHIUSECASE=ERROR

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



# MiSys HIDL deps
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor \
    android.hidl.memory@1.0-impl

# RRO Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlay \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp \
    PixelLauncherOverlayMiuiCamera

# Camera Properties (aligned with tested veux/peux vendor.prop)
PRODUCT_VENDOR_PROPERTIES += \
    camera.force_snaps_on_shutter_denoise=false \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.xiaomi.camera \
    persist.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.xiaomi.camera \
    persist.vendor.camera.privapp.list=com.android.camera,org.codeaurora.snapcam,com.shamim.cam \
    persist.vendor.camera.HAL3.enabled=1 \
    vendor.camera.lowpower.record.enable=0 \
    persist.vendor.cam.strip3pjfif=true \
    persist.vendor.cam.cname_tag=0x808d0000 \
    persist.vendor.cam.3pyuv_tag=0x808d0001 \
    persist.vendor.camera.logInfoMask=false

PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.vendor.display.type=oled \
    ro.vendor.audio.us.proximity=true \
    ro.miui.build.region=global

$(call inherit-product, $(CAMERA_VENDOR_PATH)/camera-vendor.mk)
